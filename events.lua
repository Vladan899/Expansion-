local CarAddient = {}
CarAddient.id = "car_addident"
CarAddient.eventRequirement = timeline.EVENTS.NEW_DAY
CarAddient.rollMin = 7
CarAddient.rollMax = 1000
CarAddient.occurChance = 7 -- 7 in 10000

CarAddient.awayDuration = 42 -- 42 days

CarAddient.validEmployees = {}

CarAddient.fact_baselineAge = 20 -- the additional chance per year is only added if the person's age is equal to or greater than this value

CarAddient.fact_deathChance = 45 -- the base chance

CarAddient.fact_chancePerYear = 1.25 -- additional success chance per each yeah past the fact_baselineAge value


CarAddient.formatTable = {}
CarAddient.popupText = _T("CAR_ACCIDENT_DESC", "NAME SURNAME had an car accident. They have taken leave for recovery in hospital for TIMETEXT.")
CarAddient.popupTitle = _T("CAR_ACIDENT", "Car accident")

function CarAddient:occur()
	for key, employee in ipairs(studio:getEmployees()) do
		if employee:isAvailable() and not employee:getFact(self.id) and not employee:isPlayerCharacter() then
			table.insert(self.validEmployees, employee)
		end
	end
	
	if #self.validEmployees > 0 then
		local randomIndex = math.random(1, #self.validEmployees)
		local randomEmployee = self.validEmployees[randomIndex]
		
		randomEmployee:setFact(self.id, true)
		randomEmployee:setAwayUntil(timeline.curTime + self.awayDuration)
		
		self.formatTable.NAME = randomEmployee:getName()
		self.formatTable.SURNAME = randomEmployee:getSurname()
		self.formatTable.TIMETEXT = timeline:getTimePeriodText(self.awayDuration) --string.timegroup(self.awayDuration * 86400))

		
		local popup = gui.create("Popup")
		popup:setWidth(400)
		popup:centerX()
		popup:setTextFont(fonts.get("pix20"))
		popup:setFont(fonts.get("pix24"))
		popup:setTitle(self.popupTitle)
		popup:setText(string.formatbykeys(self.popupText, self.formatTable))
		popup:setDepth(105)
		popup:addButton(fonts.get("pix20"), "OK")
		popup:performLayout()
		popup:centerY()
		
		frameController:push(popup)
	end
	
	table.clear(self.validEmployees) -- it has to be clean after we've done everything

end

function CarAddient:validateFact(employee)
	local yearAffector = math.max(employee:getAge() - self.fact_baselineAge, 0) * self.fact_chancePerYear
	local factChance = self.fact_deathChance + yearAffector
	
	if math.random(1, 100) <= factChance then -- looks like this guy's parents are dead already

		employee:setFact(self.id, true)
	end
end

randomEvents:registerNew(CarAddient)