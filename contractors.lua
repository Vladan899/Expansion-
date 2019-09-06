contractWork.registerContractor({
	id = "publisher15",
	display = _T("PUBLISHER_15_NAME", "UbiHard"),
	logo = "Ubihard",
	avoidGenreRating = 6,
	preferGenreRating = 8,
	minShareRating = 50,
	maxShareRating = 70,
	minimumEmployees = 25, -- the minimum employees the player has to have for this contractor to do business with them
	overallDevelopmentTimeMultiplier = 10,
	minimumGameCost = gameProject.PRICE_POINTS[10], -- 49,99~
	minimumReputation = 1500, -- minimum reputation for the player to be contacted by this publisher
	skillValueForScale = 100, -- for every this many points in skill value, the maximum game scale is increased by this much
	monthlyFunding = {
		perPerson = 0,
		scaleMultiplier = 0,
		yearMultiplier = 0, -- multiply the overall funding amount by this much year per each passed year
		perRating = 0
	},
	
	instantCash = {
		ratingPoint = 0,
		yearMultiplier = 0,
		scaleMultiplier = 0
	},
	
	advertisement = { -- when doing a contract job
		baseWeeklyGain = 3000,
		gainPerScalePoint = 1500,
		gainPerMinimumRating = 100
	},
	
	publishing = {
		minimumReputation = 0,
		maximumReputation = 100000, -- when your reputation is >= this, then the advertisement will be at it's 100% potential
		minReputationAdvert = 0.5, -- the advertisement won't go lower than this when the reputation is lower than maximumReputation 
		minimumGameScale = 20, -- if the game scale is lower than this, the contractor will not publish the game
		maxAdvertAtGameScale = 20, -- when the game scale is >= this value, the publisher will max out their advertisement for the game
		minAdvertisement = 0.6, -- minimum advertisement for a game based on the scale
		noGoRating = 8, -- if the avg game rating is below this - we will not 
		maxShare = 0.15, -- max share per sale (when avg rating is 10/10)
		minShare = 0.07, -- min share per sale (when avg rating is == noGoRating)
		maxEvaluationRange = timeline.DAYS_IN_YEAR * 5, -- games older than this will not be taken into evaluation
		advertisementCostMin = 650,
		advertisementCostMax = 6000, -- per each week
		popularityGainMin = 25,
		popularityGainMax = 500 -- per week
	},
	
	coverFunding = 0,
	returnFundingAmount = 0,
	extraScale = {min = 0, max = 10},
	shareBoundaries = {min = 0.05, max = 0.1},
	targetRating = {min = 6, max = 10}
})
contractWork.registerContractor({
	id = "publisher16",
	display = _T("PUBLISHER_16_NAME", "Eletronic Arts"),
	logo = "EA",
	avoidGenreRating = 6,
	preferGenreRating = 8,
	minShareRating = 10,
	maxShareRating = 40,
	minimumEmployees = 30000, -- the minimum employees the player has to have for this contractor to do business with them
	overallDevelopmentTimeMultiplier = 10,
	minimumGameCost = gameProject.PRICE_POINTS[12], -- 59,99~
	minimumReputation = 1500, -- minimum reputation for the player to be contacted by this publisher
	skillValueForScale = 100, -- for every this many points in skill value, the maximum game scale is increased by this much
	monthlyFunding = {
		perPerson = 4000,
		scaleMultiplier = 0.1,
		yearMultiplier = 0.2, -- multiply the overall funding amount by this much year per each passed year
		perRating = 100
	},
	
	instantCash = {
		ratingPoint = 250,
		yearMultiplier = 0.5,
		scaleMultiplier = 0.1
	},
	
	advertisement = { -- when doing a contract job
		baseWeeklyGain = 30000,
		gainPerScalePoint = 1500,
		gainPerMinimumRating = 100
	},
	
	publishing = {
		minimumReputation = 60000,
		maximumReputation = 120000, -- when your reputation is >= this, then the advertisement will be at it's 100% potential
		minReputationAdvert = 0.5, -- the advertisement won't go lower than this when the reputation is lower than maximumReputation 
		minimumGameScale = 15, -- if the game scale is lower than this, the contractor will not publish the game
		maxAdvertAtGameScale = 20, -- when the game scale is >= this value, the publisher will max out their advertisement for the game
		minAdvertisement = 0.6, -- minimum advertisement for a game based on the scale
		noGoRating = 8, -- if the avg game rating is below this - we will not 
		maxShare = 0.25, -- max share per sale (when avg rating is 10/10)
		minShare = 0.13, -- min share per sale (when avg rating is == noGoRating)
		maxEvaluationRange = timeline.DAYS_IN_YEAR * 5, -- games older than this will not be taken into evaluation
		advertisementCostMin = 600,
		advertisementCostMax = 6000, -- per each week
		popularityGainMin = 25,
		popularityGainMax = 500 -- per week
	},
	
	coverFunding = 350000,
	returnFundingAmount = 0.95,
	extraScale = {min = 1, max = 5},
	shareBoundaries = {min = 0.05, max = 0.1},
	targetRating = {min = 6, max = 10}
})