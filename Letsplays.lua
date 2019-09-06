letsPlayers:registerNew({
	id = "Vetean_XTZ",
	display = _T("Vetean_XTZZ", "VeteranXT"),
	icon = "VeteranXT",
	description = _T("1Descriptio", "Plays game most of time casually. Loves RPG and other titlles. People  say he have bad micophone."),
	minimumViewerBaseForPaidVideos = 5000000, -- when our viewerbase is this large, this lp'er will start taking $ for his vids

	availability = {year = 2004, month = 4},
	baseVideoPrice = 7500,
	startingViewers = 7500,
	extraPerSection = 5,
	extraPriceSection = 50,
	maxViewerbaseMult = 1.2,
	viewerIncreaseMult = 0.75,
	freeExtraVideosRating = 7, -- the game's rating must be at least this high for the lets player to make extra videos free of charge

	freeExtraVideos = 30, -- extra free amount of videos this lper will make if the game is of a preferred genre & it's good

	maxVideos = 1, -- the base amount of videos this lper will make

	preferredGenres = {
		action = true,
		rpg = true,
		simulation = true,
		sandbox = true,
		
	},
	
	setupDescbox = function(self, letsPlayer, descBox, wrapWidth)
		if timeline.curTime >= timeline:getDateTime(2017, 4) then
			descBox:addText(_T("1Desc", "Rumors say he is also the Grand Wizard of the Retro games."), "pix16", nil, 0, wrapWidth)
		end
	end
})
letsPlayers:registerNew({
	id = "PewDiePie_1",
	display = _T("PewDiePie1", "PewDieDie"),
	icon = "PewDiePie",
	description = _T("2Descriptio", "He usualy talks more than playig games."),
	minimumViewerBaseForPaidVideos = 2500000, -- when our viewerbase is this large, this lp'er will start taking $ for his vids

	availability = {year = 2002, month = 4},
	baseVideoPrice = 15000,
	startingViewers = 550000,
	extraPerSection = 20,
	extraPriceSection = 200,
	maxViewerbaseMult = 1.3,
	viewerIncreaseMult = 0.99,
	freeExtraVideosRating = 7, -- the game's rating must be at least this high for the lets player to make extra videos free of charge

	freeExtraVideos = 18, -- extra free amount of videos this lper will make if the game is of a preferred genre & it's good

	maxVideos = 6, -- the base amount of videos this lper will make

	preferredGenres = {
		action = true,
		rpg = true,
		simulation = true,
		strategy = true,
		
	},
	
	setupDescbox = function(self, letsPlayer, descBox, wrapWidth)
		if timeline.curTime >= timeline:getDateTime(2017, 4) then
			descBox:addText(_T("2Desc", "Rumors say he is also russian, But we didn't tell enyone didnt we?."), "pix16", nil, 0, wrapWidth)
		end
	end
})
letsPlayers:registerNew({
	id = "Maripiler_1",
	display = _T("MARKIZE", "Markeziler"),
	icon = "Markize",
	description = _T("3Descriptio", "He usualy ususally laughs during his letsplays, he also makes funny noices. Girls seems to like him."),
	minimumViewerBaseForPaidVideos = 2000000, -- when our viewerbase is this large, this lp'er will start taking $ for his vids

	availability = {year = 2006, month = 4},
	baseVideoPrice = 35000,
	startingViewers = 750000,
	extraPerSection = 10,
	extraPriceSection = 600,
	maxViewerbaseMult = 1.4,
	viewerIncreaseMult = 0.75,
	freeExtraVideosRating = 7, -- the game's rating must be at least this high for the lets player to make extra videos free of charge

	freeExtraVideos = 16, -- extra free amount of videos this lper will make if the game is of a preferred genre & it's good

	maxVideos = 10, -- the base amount of videos this lper will make

	preferredGenres = {
		action = true,
		rpg = true,
		simulation = true,
		
	},
	
	setupDescbox = function(self, letsPlayer, descBox, wrapWidth)
		if timeline.curTime >= timeline:getDateTime(2017, 4) then
			descBox:addText(_T("3Desc", "Rumors say he master minda behind some indie game. We didnt know name of that game."), "pix16", nil, 0, wrapWidth)
		end
	end
})