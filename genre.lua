genres:registerNew({
	id = "puzzle_mod", -- the ID of the genre, this must be unique
	display = _T("GENRE_PUZZLE_MOD", "Puzzle"), -- the name of the genre, the _T() function call is a shortcut to translation.get()
	icon = "content", -- the icon to use in the UI, must be packed inside a spritesheet, the spritesheet containing the loader must be loaded with spritesheetParser:parse()
	
	-- the quality type importance table, where key is the quality type, and value is the importance
	-- a lower value will affect the final review rating less by the given quality type, and require less quality points to reach a 100% score in that aspect
	scoreImpact = {
		graphics = 1.25,
		sound = 1,
		gameplay = 1.5,
		story = 0.75,
		dialogue = 0.5,
		world_design = 1.5
	}
	
})
audience:addGenreMatching("everyone", "puzzle_mod", audience.MATCH_VGOOD)
audience:addGenreMatching("teen", "puzzle_mod", audience.MATCH_GOOD)
audience:addGenreMatching("mature", "puzzle_mod", audience.MATCH_NORMAL)


genres:registerNew({
	id = "BattleRoyale_mod", -- the ID of the genre, this must be unique
	display = _T("GENRE_BattleRoyale_MOD", "Battle Royale"), -- the name of the genre, the _T() function call is a shortcut to translation.get()
	icon = "content", -- the icon to use in the UI, must be packed inside a spritesheet, the spritesheet containing the loader must be loaded with spritesheetParser:parse()
	
	-- the quality type importance table, where key is the quality type, and value is the importance
	-- a lower value will affect the final review rating less by the given quality type, and require less quality points to reach a 100% score in that aspect
	scoreImpact = {
		graphics = 1,
		sound = 1.25,
		gameplay = 2,
		story = 0.25,
		dialogue = 0.25,
		world_design = 1.25
	
	}
})

audience:addGenreMatching("everyone", "BattleRoyale_mod", audience.MATCH_VGOOD)
audience:addGenreMatching("teen", "BattleRoyale_mod", audience.MATCH_GOOD)
audience:addGenreMatching("mature", "BattleRoyale_mod", audience.MATCH_NORMAL)

genres:registerNew({
	id = "FirstPersonShooter_mod", -- the ID of the genre, this must be unique
	display = _T("GENRE_FPS_MOD", "First Person Shooter"), -- the name of the genre, the _T() function call is a shortcut to translation.get()
	icon = "content", -- the icon to use in the UI, must be packed inside a spritesheet, the spritesheet containing the loader must be loaded with spritesheetParser:parse()
	
	-- the quality type importance table, where key is the quality type, and value is the importance
	-- a lower value will affect the final review rating less by the given quality type, and require less quality points to reach a 100% score in that aspect
	scoreImpact = {
		graphics = 1,
		sound = 1.25,
		gameplay = 2,
		story = 0.25,
		dialogue = 0.25,
		world_design = 1.25
	}
	
})
audience:addGenreMatching("everyone", "FirstPersonShooter_mod", audience.MATCH_VGOOD)
audience:addGenreMatching("teen", "FirstPersonShooter_mod", audience.MATCH_GOOD)
audience:addGenreMatching("mature", "FirstPersonShooter_mod", audience.MATCH_NORMAL)
genres:registerNew({
	id = "Combat_mod", -- the ID of the genre, this must be unique
	display = _T("GENRE_COMBAT_MOD", "Combat"), -- the name of the genre, the _T() function call is a shortcut to translation.get()
	icon = "content", -- the icon to use in the UI, must be packed inside a spritesheet, the spritesheet containing the loader must be loaded with spritesheetParser:parse()
	
	-- the quality type importance table, where key is the quality type, and value is the importance
	-- a lower value will affect the final review rating less by the given quality type, and require less quality points to reach a 100% score in that aspect
	scoreImpact = {
		graphics = 1,
		sound = 1.25,
		gameplay = 2,
		story = 0.25,
		dialogue = 0.25,
		world_design = 1.25
	}
	
})

audience:addGenreMatching("everyone", "Combat_mod", audience.MATCH_VGOOD)
audience:addGenreMatching("teen", "Combat_mod", audience.MATCH_GOOD)
audience:addGenreMatching("mature", "Combat_mod", audience.MATCH_NORMAL)

genres:registerNew({
	id = "Card_mod", -- the ID of the genre, this must be unique
	display = _T("GENRE_Card_MOD", "Card"), -- the name of the genre, the _T() function call is a shortcut to translation.get()
	icon = "content", -- the icon to use in the UI, must be packed inside a spritesheet, the spritesheet containing the loader must be loaded with spritesheetParser:parse()
	
	-- the quality type importance table, where key is the quality type, and value is the importance
	-- a lower value will affect the final review rating less by the given quality type, and require less quality points to reach a 100% score in that aspect
	scoreImpact = {
		graphics = 1,
		sound = 1.25,
		gameplay = 2,
		story = 0.25,
		dialogue = 0.25,
		world_design = 1.25
	}
})
audience:addGenreMatching("everyone", "Card_mod", audience.MATCH_VGOOD)
audience:addGenreMatching("teen", "Card_mod", audience.MATCH_GOOD)
audience:addGenreMatching("mature", "Card_mod", audience.MATCH_NORMAL)
	
