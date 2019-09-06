consoleManufacturers:registerNew({
	id = "square_eletronics",
	display = _T("SQUARE ELETRONICS", "Square Eletronics"),
	startHealth = 15, -- not hitpoints,
	exclusivityBonusGameRating = 7, -- to get the exclusivity bonus the games we make for the platform must have a rating at least this high
	exclusivityBonusGameCount = 6, -- we must make at least this many games with a rating of exclusivityBonusGameRating to receive a share-per-sale reduction
	ratingOffsetRemoveBonus = -5, -- when our rating offset is <= to this, we will remove the exclusivity bonus
	partialExclusivityCutReduction = 0.50,
	fullExclusivityCutReduction = 8
})
consoleManufacturers:registerNew({
	id = "meizu",
	display = _T("MEIZU_CORP", "Meizu Corp"),
	startHealth = 14, -- not hitpoints,
	exclusivityBonusGameRating = 8, -- to get the exclusivity bonus the games we make for the platform must have a rating at least this high
	exclusivityBonusGameCount = 6, -- we must make at least this many games with a rating of exclusivityBonusGameRating to receive a share-per-sale reduction
	ratingOffsetRemoveBonus = -5, -- when our rating offset is <= to this, we will remove the exclusivity bonus
	partialExclusivityCutReduction = 0.25,
	fullExclusivityCutReduction = 20
})
consoleManufacturers:registerNew({
	id = "umbrella",
	display = _T("UMBRELLA CORRP", "Umbrella Corp"),
	startHealth = 13, -- not hitpoints,
	exclusivityBonusGameRating = 6, -- to get the exclusivity bonus the games we make for the platform must have a rating at least this high
	exclusivityBonusGameCount = 10, -- we must make at least this many games with a rating of exclusivityBonusGameRating to receive a share-per-sale reduction
	ratingOffsetRemoveBonus = -6, -- when our rating offset is <= to this, we will remove the exclusivity bonus
	partialExclusivityCutReduction = 0.35,
	fullExclusivityCutReduction = 15
})
