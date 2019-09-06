--A0
platforms:registerNew({
	id = "square",
	manufacturer = "square_eletronics",
	quad = "A0",
	display = _T("SQUARE", "Square"),
	releaseDate = {year = 1988, month = 2},
	expiryDate = {year = 1990, month = 2},
	engineFeatureRequirements = {"square_support"},
	licenseCost = 25000,
	defaultAttractiveness = 350,
	startingSharePercentage = 0.4,
	developmentTimeAffector = 0.100, 
	cutPerSale = 0.16,
	maxProjectScale = 5,
	releaseText = _T("SQUARE_RELEASE", "Square has released their new 'Square' game console.It seems that is optimized for dungeon kinda games."),
	expiryText = _T("SQUARE_EXPIRATION", "Square has officially discontinued their 'Square' game console. Due to Microhard new console it was more optimizes and lower price"),
	genreMatching = {
		action = 1.15,
		adventure = 0.7,
		horror = 1.15,
		simulation = 1.05,
		strategy = 1.15,
		rpg = 1.25,
		sandbox = 1.15,
		fighting = 1.15,
		racing = 1.15
		}
})

taskTypes:registerNew({

	id = "square_support",
	display = _T("SQURE_SUPPORT", "'square' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "square"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--A6
platforms:registerNew({
	id = "square1",
	manufacturer = "square_eletronics",
	quad = "A6",
	display = _T("SQUARE", "Square RedBox"),
	releaseDate = {year = 1990, month = 2},
	expiryDate = {year = 1993, month = 2},
	engineFeatureRequirements = {"square_support"},
	licenseCost = 25000,
	defaultAttractiveness = 850,
	startingSharePercentage = 0.4,
	developmentTimeAffector = 0.95, 
	cutPerSale = 0.16,
	maxProjectScale = 6,
	releaseText = _T("SQUARE_RELEASE", "Square has released their new 'Square RedBox' game console. Its more of power house than last one."),
	expiryText = _T("SQUARE_EXPIRATION", "Square has officially discontinued their 'Square RedBox' game console." ),
	genreMatching = {
		action = 1.15,
		adventure = 0.7,
		horror = 1.15,
		simulation = 1.05,
		strategy = 1.15,
		rpg = 1.25,
		sandbox = 1.15,
		fighting = 1.15,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "square_support",
	display = _T("SQURE_SUPPORT", "'Square RedBox' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "square1"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--A1
platforms:registerNew({
	id = "square2",
	manufacturer = "square_eletronics",
	quad = "A1",
	display = _T("SQUARE", "Square Combo"),
	releaseDate = {year = 1990, month = 8},
	expiryDate = {year = 1994, month = 2},
	engineFeatureRequirements = {"square_support"},
	licenseCost = 25000,
	defaultAttractiveness = 1650,
	startingSharePercentage = 0.4,
	developmentTimeAffector = 0.90, 
	cutPerSale = 0.16,
	maxProjectScale = 6,
	releaseText = _T("SQUARE_RELEASE", "Square has released their new 'Square Combo' game console. Its supports now bigger games. People seems to like it"),
	expiryText = _T("SQUARE_EXPIRATION", "Square has officially discontinued their 'Square Combo' game console." ),
	genreMatching = {
		action = 1.15,
		adventure = 0.7,
		horror = 1.15,
		simulation = 1.05,
		strategy = 1.15,
		rpg = 1.25,
		sandbox = 1.15,
		fighting = 1.15,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "square_support",
	display = _T("SQURE_SUPPORT", "'Square Combo' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "square2"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--A2
platforms:registerNew({
	id = "square3",
	manufacturer = "square_eletronics",
	quad = "A2",
	display = _T("SQUARE", "Square Combo Addon"),
	releaseDate = {year = 1994, month = 8},
	expiryDate = {year = 1998, month = 2},
	engineFeatureRequirements = {"square_support"},
	licenseCost = 25000,
	defaultAttractiveness = 2950,
	startingSharePercentage = 0.4,
	developmentTimeAffector = 0.85, 
	cutPerSale = 0.16,
	maxProjectScale = 10,
	releaseText = _T("SQUARE_RELEASE", "Square has released their new 'Square Combo Addon' game console. Its supports now bigger games. People seems to like it. It has CD Drive, its seems its too expencive"),
	expiryText = _T("SQUARE_EXPIRATION", "Square has officially discontinued their 'Square Combo Addon' game console." ),
	genreMatching = {
		action = 1.15,
		adventure = 0.7,
		horror = 1.15,
		simulation = 1.05,
		strategy = 1.15,
		rpg = 1.25,
		sandbox = 1.15,
		fighting = 1.15,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "square_support",
	display = _T("SQURE_SUPPORT", "'Square Combo' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "square3"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--A3
platforms:registerNew({
	id = "square4",
	manufacturer = "square_eletronics",
	quad = "A3",
	display = _T("SQUARE", "Square Elite"),
	releaseDate = {year = 1998, month = 8},
	expiryDate = {year = 2002, month = 2},
	engineFeatureRequirements = {"square_support"},
	licenseCost = 25000,
	defaultAttractiveness = 4950,
	startingSharePercentage = 0.4,
	developmentTimeAffector = 0.80, 
	cutPerSale = 0.16,
	maxProjectScale = 14,
	releaseText = _T("SQUARE_RELEASE", "Square has released their new 'Square Elite' game console. Its supports even bigger games. Looks refreshing to see somethig new."),
	expiryText = _T("SQUARE_EXPIRATION", "Square has officially discontinued their 'Square' game console." ),
	genreMatching = {
		action = 1.15,
		adventure = 0.7,
		horror = 1.15,
		simulation = 1.05,
		strategy = 1.15,
		rpg = 1.25,
		sandbox = 1.15,
		fighting = 1.15,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "square_support",
	display = _T("SQURE_SUPPORT", "'Square Elite' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "square4"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--A4
platforms:registerNew({
	id = "square4",
	manufacturer = "square_eletronics",
	quad = "A4",
	display = _T("SQUARE", "Square Elite Combo"),
	releaseDate = {year = 2002, month = 8},
	expiryDate = {year = 2012, month = 2},
	engineFeatureRequirements = {"square_support"},
	licenseCost = 25000,
	defaultAttractiveness = 4950,
	startingSharePercentage = 0.4,
	developmentTimeAffector = 0.50, 
	cutPerSale = 0.16,
	maxProjectScale = 18,
	releaseText = _T("SQUARE_RELEASE", "Square has released their new 'Square Elite Combo' game console. Its supports even bigger games. Looks refreshing to see somethig new."),
	expiryText = _T("SQUARE_EXPIRATION", "Square has officially discontinued their 'Square Combo' game console." ),
	genreMatching = {
		action = 1.15,
		adventure = 0.7,
		horror = 1.15,
		simulation = 1.05,
		strategy = 1.15,
		rpg = 1.25,
		sandbox = 1.15,
		fighting = 1.15,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "square_support",
	display = _T("SQURE_SUPPORT", "'Square Elite Combo' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "square5"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--A5
platforms:registerNew({
	id = "square5",
	manufacturer = "square_eletronics",
	quad = "A5",
	display = _T("SQUARE", "Square Elite Combo Plus"),
	releaseDate = {year = 2012, month = 8},
	expiryDate = {year = 2090, month = 1},
	engineFeatureRequirements = {"square_support"},
	licenseCost = 25000,
	defaultAttractiveness = 4950,
	startingSharePercentage = 0.8,
	developmentTimeAffector = 0.70, 
	cutPerSale = 0.16,
	maxProjectScale = 20,
	releaseText = _T("SQUARE_RELEASE", "Square has released their new 'Square Elite Combo Plus' game console. Its supports even bigger games. Looks refreshing to see somethig new."),
	expiryText = _T("SQUARE_EXPIRATION", "Square has officially discontinued their 'Elite Combo Plus' game console." ),
	genreMatching = {
		action = 1.15,
		adventure = 0.7,
		horror = 1.15,
		simulation = 1.05,
		strategy = 1.15,
		rpg = 1.25,
		sandbox = 1.15,
		fighting = 1.15,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "square_support",
	display = _T("SQURE_SUPPORT", "'Square Elite Combo 2 ' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "square5"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--Unkown Working

--C0
platforms:registerNew({
	id = "zestro_system0",
	manufacturer = "meizu",
	quad = "C00",
	display = _T("ZESTRO_SYSTEM0", "Zestro System"),
	releaseDate = {year = 1988, month = 3},
	expiryDate = {year = 19900, month = 3},
	engineFeatureRequirements = {"meizu_support0"},
	licenseCost = 25000,
	defaultAttractiveness = 450,
	startingSharePercentage = 0.8,
	developmentTimeAffector = 0.70, 
	cutPerSale = 0.16,
	maxProjectScale = 4,
	releaseText = _T("MEIZU_RELEASE", "Meizu has released their new 'Zestro System' game console. It looks better than 'Square' game console."),
	expiryText = _T("MEIZU_EXPIRATION", "Meizu has officially discontinued their 'Zestro System' game console." ),
	genreMatching = {
		action = 1.15,
		adventure = 0.7,
		horror = 1.15,
		simulation = 1.05,
		strategy = 1.15,
		rpg = 1.25,
		sandbox = 1.15,
		fighting = 1.15,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "meizu_support0",
	display = _T("MEIZU_SUPPORT", "'Zestro System' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "zestro_system0"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--C1
platforms:registerNew({
	id = "zestro_system1",
	manufacturer = "meizu",
	quad = "C1",
	display = _T("ZESTRO_SYSTEM", "Zestro System"),
	releaseDate = {year = 1990, month = 3},
	expiryDate = {year = 1993, month = 3},
	engineFeatureRequirements = {"meizu_support1"},
	licenseCost = 25000,
	defaultAttractiveness = 450,
	startingSharePercentage = 0.24,
	developmentTimeAffector = 0.80, 
	cutPerSale = 0.16,
	maxProjectScale = 5,
	releaseText = _T("MEIZU_RELEASE", "Meizu has released their new 'Zestro System 2' game console. It looks better than older geneartion of it's console."),
	expiryText = _T("MEIZU_EXPIRATION", "Meizu has officially discontinued their 'Zestro System 2' game console." ),
	genreMatching = {
		action = 0.7,
		adventure = 15.7,
		horror = 1.15,
		simulation = 1.25,
		strategy = 1.15,
		rpg = 1,
		sandbox = 1.25,
		fighting = 1.15,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "meizu_support1",
	display = _T("MEIZU_SUPPORT2", "'Zestro System 2' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "zestro_system1"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--C2
platforms:registerNew({
	id = "zestro_system2",
	manufacturer = "meizu",
	quad = "C2",
	display = _T("ZESTRO_SYSTEM", "Zestro System"),
	releaseDate = {year = 1990, month = 3},
	expiryDate = {year = 1993, month = 3},
	engineFeatureRequirements = {"meizu_support2"},
	licenseCost = 25000,
	defaultAttractiveness = 450,
	startingSharePercentage = 0.3,
	developmentTimeAffector = 0.95, 
	cutPerSale = 0.26,
	maxProjectScale = 8,
	releaseText = _T("MEIZU_RELEASE", "Meizu has released their new 'Zestro System 2' game console. It looks better than older geneartion of it's console."),
	expiryText = _T("MEIZU_EXPIRATION", "Meizu has officially discontinued their 'Zestro System 2' game console." ),
	genreMatching = {
		action = 0.7,
		adventure = 15.7,
		horror = 1.15,
		simulation = 1.25,
		strategy = 1.15,
		rpg = 1,
		sandbox = 1.25,
		fighting = 1.15,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "meizu_support2",
	display = _T("MEIZU_SUPPORT2", "'Zestro System 2' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "zestro_system2"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--C3
platforms:registerNew({
	id = "zestro_system3",
	manufacturer = "meizu",
	quad = "C3",
	display = _T("ZESTRO_STAR_SYSTEM", "Zestro Star System"),
	releaseDate = {year = 1993, month = 3},
	expiryDate = {year = 1997, month = 9},
	engineFeatureRequirements = {"meizu_support3"},
	licenseCost = 25000,
	defaultAttractiveness = 450,
	startingSharePercentage = 0.35,
	developmentTimeAffector = 0.70, 
	cutPerSale = 0.26,
	maxProjectScale = 11,
	releaseText = _T("MEIZU_RELEASE", "Meizu has released their new 'Zestro Star System' game console. It looks better than 'Zestro System 2' Console. They did improve alot."),
	expiryText = _T("MEIZU_EXPIRATION", "Meizu has officially discontinued their 'Zestro Star System' game console." ),
	genreMatching = {
		action = 0.7,
		adventure = 15.7,
		horror = 1.15,
		simulation = 1.25,
		strategy = 1.15,
		rpg = 1,
		sandbox = 1.25,
		fighting = 1.15,
		racing = 0.55
	}
})

taskTypes:registerNew({

	id = "meizu_support3",
	display = _T("MEIZU_SUPPORT2", "'Zestro System 2' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "zestro_system3"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class
--C4
platforms:registerNew({
	id = "zestro_system4",
	manufacturer = "meizu",
	quad = "C4",
	display = _T("ZESTRO_STAR_STATION", "Zestro Star Station"),
	releaseDate = {year = 1999, month = 3},
	expiryDate = {year = 2005, month = 9},
	engineFeatureRequirements = {"meizu_support4"},
	licenseCost = 25000,
	defaultAttractiveness = 450,
	startingSharePercentage = 0.40,
	developmentTimeAffector = 0.70, 
	cutPerSale = 0.25,
	maxProjectScale = 13,
	releaseText = _T("MEIZU_RELEASE", "Meizu has released their new 'Zestro Star Station' game console. It took them  quite a while to develop."),
	expiryText = _T("MEIZU_EXPIRATION", "Meizu has officially discontinued their 'Zestro Star Station' game console." ),
	genreMatching = {
		action = 0.7,
		adventure = 15.7,
		horror = 0.55,
		simulation = 1.25,
		strategy = 1.15,
		rpg = 1,
		sandbox = 1.25,
		fighting = 1.15,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "meizu_support4",
	display = _T("MEIZU_SUPPORT2", "'Zestro Star System' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "zestro_system4"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type 
--C5
platforms:registerNew({
	id = "zestro_system5",
	manufacturer = "meizu",
	quad = "C5",
	display = _T("ZESTRO_STAR_STATION", "Zestro Star Station"),
	releaseDate = {year = 2005, month = 3},
	expiryDate = {year = 2055, month = 9},
	engineFeatureRequirements = {"meizu_support5"},
	licenseCost = 25000,
	defaultAttractiveness = 450,
	startingSharePercentage = 0.40,
	developmentTimeAffector = 0.70, 
	cutPerSale = 0.25,
	maxProjectScale = 17,
	releaseText = _T("MEIZU_RELEASE", "Meizu has released their new 'Zestro Star Station' game console. It took them  quite a while to develop."),
	expiryText = _T("MEIZU_EXPIRATION", "Meizu has officially discontinued their 'Zestro Star Station' game console." ),
	genreMatching = {
		action = 0.7,
		adventure = 15.7,
		horror = 1.15,
		simulation = 1.25,
		strategy = 1.15,
		rpg = 1,
		sandbox = 1.25,
		fighting =1,
		racing = 1.15
	}
})

taskTypes:registerNew({

	id = "zestro_system5",
	display = _T("MEIZU_SUPPORT2", "'Zestro Star System' support"),
	workAmount = 250,
	minimumLevel = 30,
	platformID = "Zestro_System4"
}, nil, "polystation_1_support") -- inherit the polystation_1_support task type class

