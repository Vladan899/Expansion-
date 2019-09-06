
local campaign = {}
campaign.icon = "advert_mass_advert2"
campaign.id = "mass_advertisement2"
campaign.display = _T("ADVERTISEMENT_AMASS_ADVERTISEMENT2", "Mass advertisement 2")
campaign.dataFact = "campaign_data2"
campaign.campaignDuration = timeline.DAYS_IN_WEEK * timeline.WEEKS_IN_MONTH
campaign.maxEvents = campaign.campaignDuration * 0.5
campaign.maxDelayBetweenEvent = 5 -- max delay between campaign event; the delay between each event depends on the duration + amount of events


campaign.description = {
	{text = _T("CAMPAIGN_DESC_1", "Begin an advertisement campaign of a specific scale."), font = "pix24"},
	{text = _T("CAMPAIGN_DESC_2", "No risk involved, can amass popularity for a specific game project."), font = "pix20"},
	{text = _T("CAMPAIGN_DESC_3", "Usually a good idea to begin a campaign after the game was in development for a specific amount time."), font = "pix20"},
}

-- the best part about these additional advert options is that I can write their own callbacks for calculating the result

-- ie. the cgi trailer option will depend on things like how far the game is into development, how shitty the previous game was (if it's a sequel)

campaign.additionalAdvertOptionsByID = {}
campaign.additionalAdvertOptions = {}
campaign.revealEfficiencyChance = 25 -- chance to reveal the efficiency of an advert method post mass advert

campaign.revealEffiecincyChancePerAdvertisement = 10 -- extra chance to reveal efficiency per each advertisement type selected

campaign.revealedAdvertisementsFact = "revealed_advertisements"
campaign.maxRepGainPerAdvertType = 400 -- the maximum reputation we can get per each advertisement type

campaign.noRepGainCutoff = 20000 -- when our reputation exceeds this much reputation, we won't be gaining any reputation from advertisement

campaign.minProjectCompletion = 0.4 -- if the overall project completion is less than this, then mass advert will suffer a penalty

campaign.lowCompletionPenalty = 0.7 -- the advertisement will only work at 70% efficiency if we're advertising the game while it's barely even done

campaign.marketingSpecBoost = 1.2 -- how much efficiency is boosted by a valid Marketing specialization

campaign.minimumFamiliarity = 0.8 -- minimum project familiarity for the marketing spec boost to be valid


campaign.minBudget = 0.5 -- minimum budget percentage

campaign.maxBudget = 1

campaign.EVENTS = {
	BUDGET_CHANGED = "mass_advert_budget_changed"
}

campaign.resultText = {
	{amount = 0, text = _T("ADVERT_RESULT_FAILURE", "The campaign was a complete failure, noone even knew it happened.")},
	{amount = 1000, text = _T("ADVERT_RESULT_TINY", "The campaign has raised only a tiny amount of interest towards the game.")},
	{amount = 5000, text = _T("ADVERT_RESULT_SMALL", "The campaign has raised a small amount of interest towards the game.")},
	{amount = 12000, text = _T("ADVERT_RESULT_MODERATE", "The campaign has raised a moderate amount of interest towards the game.")},
	{amount = 30000, text = _T("ADVERT_RESULT_HIGH", "The campaign was well-received, and as a result, the game has gained a high amount of interest.")},
	{amount = 80000, text = _T("ADVERT_RESULT_VERY_HIGH", "The campaign was a big success, and a very high amount of people have become interested in it.")},
	{amount = 150000, text = _T("ADVERT_RESULT_INSANE", "The campaign was an insane success, a huge amount of people have taken interest in it.")}
}

function campaign:registerAdvertOption(data)
	table.insert(campaign.additionalAdvertOptions, data)
	campaign.additionalAdvertOptionsByID[data.id] = data
end

function campaign:canSelect(gameProj)
	local data = gameProj:getFact(self.dataFact)
	
	if not data then
		return true
	end
	
	if timeline.curTime < data.lastsUntil then
		return false
	end
	
	return true
end

function campaign:applyCampaignDataToGame(gameProj, advertTypes, totalCost, budgetPercentage)
	local data = {
		startedOn = timeline.curTime,
		lastsUntil = timeline.curTime + self.campaignDuration,
		lastCampaignEvent = timeline.curTime,
		advertTypeAmount = #advertTypes,
		totalPopularityGained = 0,
		totalReputationGained = 0,
		moneySpent = totalCost,
		advertTypes = advertTypes,
		budgetPercentage = budgetPercentage,
		performedAdvertTypes = {}
	}
	
	gameProj:setFact(self.dataFact, data)
	gameProj:addAdvertisement(self.id)
end

function campaign:abort(gameProj)
	self:finishCampaign(gameProj, true, true)
end

function campaign.stopMassAdvertOption(self)
	campaign:abort(self.project)
end

function campaign:fillInteractionComboBox(comboBox, gameProj)
	if gameProj:getFact(self.dataFact) then
		local option = comboBox:addOption(0, 0, 0, 0, _T("CANCEL_ADVERTISEMENT", "Stop mass advertisement"), fonts.get("pix20"), campaign.stopMassAdvertOption)
		
		option.project = gameProj
	end
end

local unrevealedAdvertTypes = {}

function campaign:removeAdvertData(gameProj)
	gameProj:setFact(self.dataFact, nil)
	gameProj:removeActiveAdvertisement(self.id)
end

function campaign:finishCampaign(gameProj, suppressEfficiencyReveal, wasAborted)
	if not gameProj:getOwner():isPlayer() then
		self:removeAdvertData(gameProj)
		return
	end
	
	local data = gameProj:getFact(self.dataFact)
	
	-- get total popularity gained

	local amountOfAdvertisements = 0
	local totalPop = data.totalPopularityGained
	
	for advertType, amount in pairs(data.performedAdvertTypes) do
		amountOfAdvertisements = amountOfAdvertisements + 1
	end
	
	local randomRevealedAdvertType = nil
		
	if not suppressEfficiencyReveal and math.random(1, 100) <= (self.revealEfficiencyChance + amountOfAdvertisements * self.revealEffiecincyChancePerAdvertisement) then
		local revealedAdvertTypes = studio:getFact(campaign.revealedAdvertisementsFact) or {}
		
		for advertType, amount in pairs(data.performedAdvertTypes) do
			if not revealedAdvertTypes[advertType] then
				unrevealedAdvertTypes[#unrevealedAdvertTypes + 1] = advertType
			end
		end
		
		if #unrevealedAdvertTypes > 0 then
			randomRevealedAdvertType = unrevealedAdvertTypes[math.random(1, #unrevealedAdvertTypes)]
			revealedAdvertTypes[randomRevealedAdvertType] = true
			
			table.clear(unrevealedAdvertTypes)
		end
		
		studio:setFact(campaign.revealedAdvertisementsFact, revealedAdvertTypes)
	end
	
	-- get result text based on popularity gained

	local highest = -math.huge
	local fitting = nil
	
	for key, data in ipairs(self.resultText) do
		if totalPop >= data.amount and data.amount > highest then
			highest = data.amount
			fitting = data
		end
	end
	
	local displayText = fitting.text
	
	local popup = gui.create("DescboxPopup")
	popup:setWidth(600)
	popup:setFont(fonts.get("pix24"))
	popup:setTextFont(fonts.get("pix20"))
	popup:setTitle(_T("ADVERT_RESULT_TITLE", "Mass Advert Result"))
	popup:setText(displayText)
	
	local leftBox, rightBox, extra = popup:getDescboxes()
	
	leftBox:addSpaceToNextText(10)
	rightBox:addSpaceToNextText(10)
	local wrapWidth = popup.rawW - 10
	
	leftBox:addText(_format(_T("MASS_ADVERT_POPULARITY_GAINED", "Popularity gained: POPULARITY"), "POPULARITY", string.roundtobignumber(totalPop)), "bh22", nil, 0, wrapWidth, "star", 26, 26)
	leftBox:addText(_format(_T("MASS_ADVERT_REPUTATION_GAINED", "Reputation gained: REP pts."), "REP", string.roundtobignumber(data.totalReputationGained)), "bh22", nil, 0, wrapWidth, "star", 26, 26)
	
	rightBox:addText(_format(_T("MASS_ADVERT_MONEY_SPENT", "Money spent: MONEY"), "MONEY", string.roundtobigcashnumber(data.moneySpent or 0)), "bh22", nil, 0, wrapWidth, {{icon = "generic_backdrop", width = 26, height = 26}, {icon = "wad_of_cash_minus", width = 20, height = 20, x = 3, y = 1}})
	rightBox:addText(_format(_T("MASS_ADVERT_COMPLETED_IN", "Completed in TIME"), "TIME", timeline:getTimePeriodText(timeline.curTime - data.startedOn)), "bh22", nil, 0, wrapWidth, {{icon = "generic_backdrop", width = 26, height = 26}, {icon = "clock_full", width = 20, height = 20, x = 3, y = 1}})
	
	local spacingAdded = false
	
	if randomRevealedAdvertType then
		extra:addSpaceToNextText(4)
		spacingAdded = true
		
		extra:addText(_format(_T("DISCOVERED_CAMPAIGN_TYPE_EFFICIENCY", "Discovered efficiency of ADVERT!"), "ADVERT", campaign.additionalAdvertOptionsByID[randomRevealedAdvertType].display), "pix20", nil, 0, wrapWidth, "exclamation_point", 24, 24)
	end
	
	if wasAborted then
		extra:addSpaceToNextText(4)
		
		extra:addText(_T("ABORTED_ADVERTISEMENT_INFORM", "The campaign has been aborted. No efficiency info will be revealed and maximum campaign efficiency has not been reached."), "pix20", nil, 0, wrapWidth, "question_mark", 24, 24)
	end
	
	if data.marketingBoost then
		extra:addText(_T("MASS_ADVERT_MARKETING_BOOST", "Increased efficiency due to Marketing specialist."), "bh22", nil, 0, wrapWidth, "exclamation_point", 24, 24)
	end
	
	if data.sufferedPenalty then
		extra:addTextLine(popup.w - _S(20), game.UI_COLORS.UI_PENALTY_LINE)
		extra:addText(_T("MASS_ADVERT_EFFICIENCY_SUFFERED", "Lower efficiency due to early stages of development."), "bh22", game.UI_COLORS.RED, 0, wrapWidth, "exclamation_point_red", 24, 24)
	end
	
	popup:addButton(fonts.get("pix20"), _T("OK", "OK"))

	popup:center()
	frameController:push(popup)
	
	self:removeAdvertData(gameProj)
	events:fire(advertisement.EVENTS.FINISHED_ADVERTISEMENT, gameProj, self.id)
end

eventBoxText:registerNew({
	id = "mass_advert_performed",
	getText = function(self, data)
		return _format(_T("PERFORMED_MASS_ADVERT_TYPE", "'TYPE' advertisement performed. 'PROJECT' has gained POPULARITY Hype points."), "TYPE", campaign.additionalAdvertOptionsByID[data.advertID].display, "PROJECT", data.game, "POPULARITY", string.roundtobignumber(data.popGain))
	end
})

function campaign:handleEvent(gameProj, event)
	if event == timeline.EVENTS.NEW_DAY then
		local data = gameProj:getFact(self.dataFact)

		if data then
			if timeline.curTime >= data.lastsUntil then -- campaign is finished, set data to nil, could probably make a popup displaying the amount of popularity gained, etc.

				self:finishCampaign(gameProj)
			else
				local curTime = timeline.curTime
				local delta = math.max(math.min((data.lastsUntil - data.startedOn) / data.advertTypeAmount, self.maxDelayBetweenEvent), 1)
				local timeUntil = curTime - (data.lastCampaignEvent + delta)
			
				if timeUntil >= 0 then -- enough time has passed, now we can hold an event again

					--local totalOwners = platformShare:getMultiplePlatformOwners(gameProj:getTargetPlatforms())

					local totalOwners = platformShare:getPlatformUsers()
					local projCompletion = gameProj:getOverallCompletion()
					
					local multiplier = 1
					local team = gameProj:getTeam()
					
					if team then
						local marketers = team:getMembersBySpecialization("marketing")
						local ourID = gameProj:getUniqueID()
						
						for key, dev in ipairs(marketers) do
							if dev:getFamiliarityAffector(ourID) >= self.minimumFamiliarity then
								multiplier = multiplier * self.marketingSpecBoost
								data.marketingBoost = true
								break
							end
						end
					end
					
					if projCompletion < self.minProjectCompletion then
						multiplier = multiplier * self.lowCompletionPenalty
						data.sufferedPenalty = true
					end
					
					if #data.advertTypes > 0 then
						local advertType = table.remove(data.advertTypes, math.random(1, #data.advertTypes))
						local advertData = self.additionalAdvertOptionsByID[advertType]
						local maxPopGain = math.max(totalOwners - data.totalPopularityGained, 0)
						
						local basePopGain, gainedReputation, realPopGain = advertData:perform(gameProj, multiplier * (data.budgetPercentage or 1), maxPopGain)
						
						data.performedAdvertTypes[advertType] = realPopGain
						data.totalPopularityGained = data.totalPopularityGained + realPopGain
						data.totalReputationGained = data.totalReputationGained + gainedReputation
						data.lastCampaignEvent = curTime	
						
						if gameProj:getOwner():isPlayer() then
							game.addToEventBox("mass_advert_performed", {advertID = advertType, game = gameProj:getName(), popGain = realPopGain}, 1)
						end
					end
					
					if #data.advertTypes == 0 then -- if we haven't performed a single event even though enough time had passed, that means this campaign is over

						self:finishCampaign(gameProj)
					end
				end
			end
		end
	end
end

function campaign:canHaveAdvertOption(optionData)
	if optionData.unlockRequired then
		return unlocks:isAvailable(optionData.unlockRequired)
	end
	
	return true
end

function campaign:onSelected(gameProj)
	local frame = gui.create("Frame")
	frame:setSize(400, 570)
	frame:setFont(fonts.get("pix24"))
	frame:setTitle(_T("SELECT_ADVERT_TYPES_TITLE", "Select Advertisement"))
	
	local scrollBarPanel = gui.create("ScrollbarPanel", frame)
	scrollBarPanel:setPos(_S(5), _S(30))
	scrollBarPanel:setSize(390, 455)
	scrollBarPanel:setSpacing(4)
	scrollBarPanel:setPadding(4, 4)
	scrollBarPanel:setAdjustElementPosition(true)
	scrollBarPanel:addDepth(50)
	
	local costDisplay = gui.create("CostDisplay", frame)
	costDisplay:setSize(220, 27)
	costDisplay:setPos(_S(5), frame.h - _S(5) - costDisplay.h)
	costDisplay:setFont("pix24")
	
	local confirmButton = gui.create("ConfirmMassAdvertButton", frame)
	confirmButton:setSize(165, costDisplay.rawH)
	confirmButton:setFont("pix24")
	confirmButton:setPos(frame.w - _S(5) - confirmButton.w, costDisplay.y)
	confirmButton:setProject(gameProj)
	confirmButton:setCostDisplay(costDisplay)
	
	local budgetSlider = gui.create("MassAdvertBudgetSlider", frame)
	budgetSlider:setConfirmationButton(confirmButton)
	budgetSlider:setSize(390, 40)
	budgetSlider:setPos(scrollBarPanel.localX, scrollBarPanel.localY + scrollBarPanel.h + _S(5))
	budgetSlider:setFont("bh24")
	budgetSlider:setText(_T("MASS_ADVERT_SLIDER_PERCENTAGE", "Campaign budget: SLIDER_VALUE%"))
	budgetSlider:setMinMax(self.minBudget, self.maxBudget)
	budgetSlider:setValue(1)
	
	for key, option in ipairs(self.additionalAdvertOptions) do
		if self:canHaveAdvertOption(option) then
			local element = gui.create("MassAdvertSelection")
			element:setSize(370, 95)
			element:setOption(option)
			element:setConfirmationButton(confirmButton)
	
			scrollBarPanel:addItem(element)
		end
	end
	
	frame:center()
	
	frameController:push(frame)
end

function campaign:getReputationGainScaler(owner)
	local rep = studio:getReputation()
	local cutoff = self.noRepGainCutoff
	
	if rep >= cutoff then
		return 0
	end
	
	return (1 - rep / cutoff) * gameProject.DEFAULT_POPULARITY_TO_REPUTATION_MULT
end




local massAdvertClass = advertisement:getData("mass_advertisement2")
massAdvertClass:registerAdvertOption({
	id = "ads_on_radio_station2", cost = 3000000, 
	display = _T("RADIO_STATION_ADS11", "Radio station ads"),
    description = _T("RADIO_STATION_ADS_DESCRIPTION", "Advertise your game on radio stations11."),
    popularityGain = 80000,
    uiIcon = "advert_ads_on_radio",
    repToPopularity = 0.005,
    perform = function(self, gameProj, multiplier, maxPopGain)
        local basePopGain = (gameProj:getOwner():getReputation() * self.repToPopularity + self.popularityGain) * multiplier
        basePopGain = math.min(basePopGain, maxPopGain)
        
        local owner = gameProj:getOwner()
        local scaler = campaign:getReputationGainScaler(owner)
        local repGain, realPopGain = gameProj:increasePopularity(basePopGain, scaler > 0 and scaler, campaign.maxRepGainPerAdvertType)
        
        return basePopGain, repGain, realPopGain
    end
})


advertisement:registerNew(campaign)
