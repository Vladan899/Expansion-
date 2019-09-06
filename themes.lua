local ReviewScore  = { Perfect = 1.75, VeryGood = 1.50 , Good = 1.25, Normal = 1, Bad = 0.75,VeryBad = 0.5, Horrible = 0.25}
local MatchSale  = { Perfect = 0.75, VeryGood = 0.50 , Good = 0.25, Normal = 0, Bad = -0.25,VeryBad = -0.5, Horrible = -0.75}

-- 1.75 = 75% boost to sales it gives more money, while below 0 will reduce sales.
--0.75 = Boost to score while  negative are penalty to score.

--[Complete balance]
themes:registerNew({
	id = "Stealth_Theme",
	display = _T("THEME_STEALTH", "Stealth"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
		{
			action = MatchSale.Perfect,
			fighting = MatchSale.VeryBad,
			adventure = MatchSale.VeryGood,
			horror = MatchSale.Good,
			simulation = MatchSale.Horrible,
			strategy = MatchSale.Bad,
			rpg = MatchSale.Good,
			sandbox = MatchSale.Good,
			racing = MatchSale.Horrible,
			puzzle_mod = MatchSale.VeryBad,
			BattleRoyale_mod = MatchSale.Good,
			FirstPersonShooter_mod = MatchSale.VeryGood
		},
		


	reviewAffector = 
		{
			action = ReviewScore.Perfect,
			fighting = ReviewScore.VeryBad,
			adventure = ReviewScore.VeryGood,
			horror = ReviewScore.Good,
			simulation = ReviewScore.Horrible,
			strategy = ReviewScore.Bad,
			rpg = ReviewScore.Normal,
			sandbox = ReviewScore.Good,
			racing = ReviewScore.Horrible,
			puzzle_mod = ReviewScore.VeryBad,
			BattleRoyale_mod = ReviewScore.Normal,
			FirstPersonShooter_mod = ReviewScore.VeryGood
		}
})

--[Complete balance]
themes:registerNew({

	id = "Shmup_Theme",
	display = _T("THEME_SHMUP", "Shoot Em Up"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.Perfect,
		fighting = MatchSale.VeryBad,
		adventure = MatchSale.Horrible,
		horror = MatchSale.Normal,
		simulation = MatchSale.Bad,
		strategy = MatchSale.VeryBad,
		rpg = MatchSale.Horrible,
		sandbox = MatchSale.Good,
		racing = MatchSale.Horrible,
		puzzle_mod = MatchSale.VeryBad,
		BattleRoyale_mod = MatchSale.Horrible,
		FirstPersonShooter_mod = MatchSale.VeryBad
	},
	
	reviewAffector = 
	{
		action = ReviewScore.Perfect,
		fighting = ReviewScore.VeryBad,
		adventure = ReviewScore.Horrible,
		horror = ReviewScore.Normal,
		simulation = ReviewScore.Bad,
		strategy = ReviewScore.VeryBad,
		rpg = ReviewScore.Horrible,
		sandbox = ReviewScore.Good,
		racing = ReviewScore.Horrible,
		puzzle_mod = ReviewScore.VeryBad,
		BattleRoyale_mod = ReviewScore.Good,
		FirstPersonShooter_mod = ReviewScore.VeryGood
	}
		
	
})

--[Complete balance]
themes:registerNew({
	id = "Futuristic_Theme",
	display = _T("THEME_FUTURISIC", "Futuristic"),
	
	match = 
	{
		action = MatchSale.VeryGood,
		fighting = MatchSale.Normal,
		adventure = MatchSale.Normal,
		horror = MatchSale.Good,
		simulation = MatchSale.Good,
		strategy = MatchSale.VeryGood,
		rpg = MatchSale.Perfect,
		sandbox = MatchSale.VeryBad,
		racing = MatchSale.Bad,
		puzzle_mod = MatchSale.Bad,
		BattleRoyale_mod = MatchSale.Good,
		FirstPersonShooter_mod = MatchSale.VeryGood
	},
		
	
	reviewAffector = {
		action = ReviewScore.VeryGood,
		fighting = ReviewScore.Normal,
		adventure = ReviewScore.Normal,
		horror = ReviewScore.Good,
		simulation = ReviewScore.Good,
		strategy = ReviewScore.VeryGood,
		rpg = ReviewScore.Perfect,
		sandbox = ReviewScore.VeryBad,
		racing = ReviewScore.Bad,
		puzzle_mod = ReviewScore.Bad,
		BattleRoyale_mod = ReviewScore.Good,
		FirstPersonShooter_mod = ReviewScore.VeryGood
		}
})

--[Complete balance]
themes:registerNew({
		id = "Managment_Theme",
		display = _T("THEME_MANAGMENT", "Managment"),
		
		-- how does the given theme affect the game sales when paired with another genre
		match =
		{
			action = MatchSale.Horrible,
			fighting = MatchSale.VeryBad,
			horror = MatchSale.VeryBad,
			simulation = MatchSale.Perfect,
			strategy = MatchSale.VeryGood,
			rpg = MatchSale.Bad,
			sandbox = MatchSale.VeryGood,
			racing = MatchSale.Bad,
			puzzle_mod = MatchSale.Bad,
			BattleRoyale_mod = MatchSale.VeryBad,
			FirstPersonShooter_mod = MatchSale.VeryBad
		},
	
	
	
	
		reviewAffector = 
		{
			action = ReviewScore.Horrible,
			fighting = ReviewScore.VeryBad,
			horror = ReviewScore.VeryBad,
			simulation = ReviewScore.Perfect,
			strategy = ReviewScore.VeryGood,
			rpg = ReviewScore.Bad,
			sandbox = ReviewScore.VeryGood,
			racing = ReviewScore.Bad,
			puzzle_mod = ReviewScore.Bad,
			BattleRoyale_mod = ReviewScore.VeryBad,
			FirstPersonShooter_mod = ReviewScore.Horrible
		}
		
})

--[Complete balance]
themes:registerNew({
	id = "Theif_Theme",
	display = _T("THEME_THEIF", "Theif"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
		{
			action = MatchSale.Perfect,
			fighting = MatchSale.Bad,
			adventure = MatchSale.Normal,
			horror = MatchSale.Bad,
			simulation = MatchSale.VeryBad,
			strategy = MatchSale.Normal,
			rpg = MatchSale.Good,
			sandbox = MatchSale.Horrible,
			racing = MatchSale.Horrible,
			puzzle_mod = MatchSale.VeryBad,
			BattleRoyale_mod = MatchSale.Horrible,
			FirstPersonShooter_mod = MatchSale.Good

		},
	
	reviewAffector = 
		{
			action = ReviewScore.Perfect,
			fighting = ReviewScore.Bad,
			adventure = ReviewScore.Normal,
			horror = ReviewScore.Bad,
			simulation = ReviewScore.VeryBad,
			strategy = ReviewScore.Normal,
			rpg = ReviewScore.Good,
			sandbox = ReviewScore.Horrible,
			racing = ReviewScore.Horrible,
			puzzle_mod = ReviewScore.VeryBad,
			BattleRoyale_mod = ReviewScore.Horrible,
			FirstPersonShooter_mod = ReviewScore.Good
		}
})

--[Complete balance]
themes:registerNew({
	id = "FindObject_Theme",
	display = _T("THEME_FINDOBJECT", "Find a Object"),
	
	-- how does the given theme affect the game sales when paired with another genre
		match = 
		{
			action = MatchSale.Normal,
			fighting = MatchSale.VeryBad,
			adventure = MatchSale.VeryGood,
			horror = MatchSale.Perfect,
			simulation = MatchSale.Bad,
			strategy = MatchSale.Horrible,
			rpg = MatchSale.VeryBad,
			sandbox = MatchSale.Good,
			racing = MatchSale.Horrible,
			puzzle_mod = MatchSale.VeryBad,
			BattleRoyale_mod = MatchSale.Horrible,
			FirstPersonShooter_mod = MatchSale.Horrible
		},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.Normal,
		fighting = ReviewScore.VeryBad,
		adventure = ReviewScore.VeryGood,
		horror = ReviewScore.Perfect,
		simulation = ReviewScore.Bad,
		strategy = ReviewScore.Horrible,
		rpg = MatchSale.VeryBad,
		sandbox = ReviewScore.Good,
		racing = ReviewScore.Horrible,
		puzzle_mod = ReviewScore.VeryBad,
		BattleRoyale_mod = ReviewScore.Horrible,
		FirstPersonShooter_mod = ReviewScore.Horrible
	}
})

--[Complete balance]
themes:registerNew({
	id = "Eductaional_Theme",
	display = _T("THEME_EDUCATIONAL", "Educational"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
			action = MatchSale.Bad,
			fighting = MatchSale.VeryBad,
			adventure = MatchSale.VeryGood,
			horror = MatchSale.Normal,
			simulation = MatchSale.Bad,
			strategy = MatchSale.Good,
			rpg = MatchSale.Bad,
			sandbox = MatchSale.Good,
			racing = MatchSale.Good,
			puzzle_mod = MatchSale.VeryBad,			
			BattleRoyale_mod = MatchSale.Horrible,
			FirstPersonShooter_mod = MatchSale.Horrible
		},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
			action = ReviewScore.Bad,
			fighting = ReviewScore.VeryBad,
			adventure = ReviewScore.VeryGood,
			horror = ReviewScore.Normal,
			simulation = ReviewScore.Bad,
			strategy = ReviewScore.Good,
			rpg = ReviewScore.Bad,
			sandbox = ReviewScore.Good,
			racing = ReviewScore.Good,
			puzzle_mod = ReviewScore.VeryBad,
			BattleRoyale_mod = ReviewScore.Horrible,
			FirstPersonShooter_mod = ReviewScore.Horrible
			
	}
})

--[Complete balance]
themes:registerNew({
	id = "Archery_Theme",
	display = _T("THEME_ARCHERY", "Archery"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = {
			action = MatchSale.Good,
			fighting = MatchSale.Good,
			adventure = MatchSale.Normal,
			horror = MatchSale.Normal,
			simulation = MatchSale.Perfect,
			strategy = MatchSale.Horrible,
			rpg = MatchSale.Bad,
			sandbox = MatchSale.VeryGood,
			racing = MatchSale.Horrible,
			puzzle_mod = MatchSale.VeryBad,
			BattleRoyale_mod = MatchSale.VeryGood,
			FirstPersonShooter_mod = MatchSale.Perfect
		},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
		{
			action = ReviewScore.Good,
			fighting = ReviewScore.Good,
			adventure = ReviewScore.Normal,
			horror = ReviewScore.Normal,
			simulation = ReviewScore.Perfect,
			strategy = ReviewScore.Horrible,
			rpg = ReviewScore.Bad,
			sandbox = ReviewScore.VeryGood,
			racing = ReviewScore.VeryBad,
			puzzle_mod = ReviewScore.VeryBad,
			BattleRoyale_mod = ReviewScore.VeryGood,
			FirstPersonShooter_mod = ReviewScore.Perfect
		}
})

--[Complete balance]
themes:registerNew({
	id = "Assasian_Theme",
	display = _T("THEME_ASSASIAN", "Assasian"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.Perfect,
		fighting = MatchSale.Good,
		adventure = MatchSale.VeryGood,
		horror = MatchSale.Normal,
		simulation = MatchSale.Good,
		strategy = MatchSale.VeryBad,
		rpg = MatchSale.Bad,
		sandbox = MatchSale.Bad,
		racing = MatchSale.VeryBad,
		puzzle_mod = MatchSale.Horrible,
		BattleRoyale_mod = MatchSale.VeryGood,
		FirstPersonShooter_mod = MatchSale.VeryGood
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.Perfect,
		fighting = ReviewScore.Good,
		adventure = ReviewScore.VeryGood,
		horror = ReviewScore.Normal,
		simulation = ReviewScore.Good,
		strategy = ReviewScore.VeryBad,
		rpg = ReviewScore.Bad,
		sandbox = ReviewScore.Bad,
		racing = ReviewScore.VeryBad,
		puzzle_mod = ReviewScore.Horrible,
		BattleRoyale_mod = ReviewScore.VeryGood,
		FirstPersonShooter_mod = ReviewScore.VeryGood
		}
})

--[Complete balance]
themes:registerNew({
	id = "BeatEmUp_Theme",
	display = _T("THEME_BEAMEMUP", "Beat em up"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match =
	{
		action = MatchSale.Perfect,
		fighting = MatchSale.VeryGood,
		adventure = MatchSale.Bad,
		horror = MatchSale.Good,
		simulation = MatchSale.VeryBad,
		strategy = MatchSale.Horrible,
		rpg = MatchSale.VeryBad,
		sandbox = MatchSale.Horrible,
		racing = MatchSale.Bad,
		puzzle_mod = MatchSale.Horrible,
		BattleRoyale_mod = MatchSale.Good,
		FirstPersonShooter_mod = MatchSale.VeryGood
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = {
		ction = ReviewScore.Perfect,
		fighting = ReviewScore.VeryGood,
		adventure = ReviewScore.Bad,
		horror = ReviewScore.Good,
		simulation = ReviewScore.VeryBad,
		strategy = ReviewScore.Horrible,
		rpg = ReviewScore.VeryBad,
		sandbox = ReviewScore.Horrible,
		racing = ReviewScore.Bad,
		puzzle_mod = ReviewScore.Horrible,
		BattleRoyale_mod = ReviewScore.Good,
		FirstPersonShooter_mod = ReviewScore.VeryGood
		}
})

--[Complete balance]
themes:registerNew({
	id = "CardGame_Theme",
	display = _T("THEME_CARDGAME", "Card Game"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.VeryBad,
		fighting = MatchSale.Horrible,
		adventure = MatchSale.VeryGood,
		horror = MatchSale.Bad,
		simulation = MatchSale.Perfect,
		strategy = MatchSale.VeryBad,
		rpg = MatchSale.VeryGood,
		sandbox = MatchSale.Normal,
		racing = MatchSale.Horrible,
		puzzle_mod = MatchSale.Normal,
		BattleRoyale_mod = MatchSale.Horrible,
		FirstPersonShooter_mod = ReviewScore.Horrible
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.VeryBad,
		fighting = ReviewScore.Horrible,
		adventure = ReviewScore.VeryGood,
		horror = ReviewScore.Bad,
		simulation = ReviewScore.Perfect,
		strategy = ReviewScore.VeryBad,
		rpg = ReviewScore.VeryGood,
		sandbox = ReviewScore.Normal,
		racing = ReviewScore.Horrible,
		puzzle_mod = ReviewScore.Normal,
		BattleRoyale_mod = ReviewScore.Horrible,
		FirstPersonShooter_mod = ReviewScore.Horrible
	}
})

--[Complete balance]
themes:registerNew({
	id = "Chess_Theme",
	display = _T("THEME_CHESS", "Chess"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.VeryBad,
		fighting = MatchSale.Horrible,
		adventure = MatchSale.Normal,
		horror = MatchSale.Bad,
		simulation = MatchSale.VeryGood,
		strategy = MatchSale.Perfect,
		rpg = MatchSale.Bad,
		sandbox = MatchSale.Good,
		racing = MatchSale.Horrible,
		puzzle_mod = MatchSale.Perfect,
		BattleRoyale_mod = MatchSale.Horrible,
		FirstPersonShooter_mod = MatchSale.Horrible
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.VeryBad,
		fighting = ReviewScore.Horrible,
		adventure = ReviewScore.Normal,
		horror = ReviewScore.Bad,
		simulation = ReviewScore.VeryGood,
		strategy = ReviewScore.Perfect,
		rpg = ReviewScore.Bad,
		sandbox = ReviewScore.Good,
		racing = ReviewScore.Horrible,
		puzzle_mod = ReviewScore.Perfect,
		BattleRoyale_mod = ReviewScore.Horrible,
		FirstPersonShooter_mod = ReviewScore.Horrible
	}
})

--[Complete balance]
themes:registerNew({
	id = "DarkFantasy_Theme",
	display = _T("THEME_DarkFantasy", "Dark Fantasy"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.Normal,
		fighting = MatchSale.VeryGood,
		adventure = MatchSale.Perfect,
		horror = MatchSale.VeryGood,
		simulation = MatchSale.Normal,
		strategy = MatchSale.Horrible,
		rpg = MatchSale.Good,
		sandbox = MatchSale.Bad,
		racing = MatchSale.Horrible,
		puzzle_mod = MatchSale.Horrible,
		BattleRoyale_mod = MatchSale.Good,
		FirstPersonShooter_mod = MatchSale.Normal
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.Normal,
		fighting = ReviewScore.VeryGood,
		adventure = ReviewScore.Perfect,
		horror = ReviewScore.VeryGood,
		simulation = ReviewScore.Normal,
		strategy = ReviewScore.Horrible,
		rpg = ReviewScore.Good,
		sandbox = ReviewScore.Bad,
		racing = ReviewScore.Horrible,
		puzzle_mod = ReviewScore.Horrible,
		BattleRoyale_mod = ReviewScore.Bad,
		FirstPersonShooter_mod = ReviewScore.Normal
	}
})

--[Complete balance]
themes:registerNew({
	id = "Fishing_Theme",
	display = _T("THEME_FISHING", "Fishing"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.VeryBad,
		fighting = MatchSale.Horrible,
		adventure = MatchSale.Bad,
		horror = MatchSale.Horrible,
		simulation = MatchSale.Perfect,
		strategy = MatchSale.Bad,
		rpg = MatchSale.Good,
		sandbox = MatchSale.VeryGood,
		racing = MatchSale.Horrible,
		puzzle_mod = MatchSale.Normal,
		BattleRoyale_mod = MatchSale.VeryBad,
		FirstPersonShooter_mod = MatchSale.Good
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = {
		action = ReviewScore.VeryBad,
		fighting = ReviewScore.Horrible,
		adventure = ReviewScore.Bad,
		horror = ReviewScore.Horrible,
		simulation = ReviewScore.Perfect,
		strategy = ReviewScore.Bad,
		rpg = ReviewScore.Good,
		sandbox = ReviewScore.VeryGood,
		racing = ReviewScore.Horrible,
		puzzle_mod = ReviewScore.Normal,
		BattleRoyale_mod = ReviewScore.VeryBad,
		FirstPersonShooter_mod = ReviewScore.Good
		}
})

--[Complete balance]
themes:registerNew({
	id = "God_Theme",
	display = _T("THEME_GOD", "GOD"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.Horrible,
		fighting = MatchSale.VeryBad,
		adventure = MatchSale.Normal,
		horror = MatchSale.Bad,
		simulation = MatchSale.Perfect,
		strategy = MatchSale.VeryBad,
		rpg = MatchSale.Bad,
		sandbox = MatchSale.VeryGood,
		racing = MatchSale.Bad,
		puzzle_mod = MatchSale.VeryBad,
		BattleRoyale_mod = MatchSale.Horrible,
		FirstPersonShooter_mod = MatchSale.Horrible
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.Horrible,
		fighting = ReviewScore.VeryBad,
		adventure = ReviewScore.Normal,
		horror = ReviewScore.Bad,
		simulation = ReviewScore.Perfect,
		strategy = ReviewScore.VeryBad,
		rpg = ReviewScore.Bad,
		sandbox = ReviewScore.VeryGood,
		racing = ReviewScore.Bad,
		puzzle_mod = ReviewScore.VeryBad,
		BattleRoyale_mod = ReviewScore.Horrible,
		FirstPersonShooter_mod = ReviewScore.Horrible
	}
})

--[Complete balance]
themes:registerNew({
	id = "Mining_Theme",
	display = _T("THEME_MINING", "Mining"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.Horrible,
		fighting = MatchSale.VeryBad,
		adventure = MatchSale.Good,
		horror = MatchSale.Good,
		simulation = MatchSale.VeryGood,
		strategy = MatchSale.Normal,
		rpg = MatchSale.Bad,
		sandbox = MatchSale.Perfect,
		racing = MatchSale.VeryBad,
		puzzle_mod = MatchSale.VeryBad,
		BattleRoyale_mod = MatchSale.Horrible,
		FirstPersonShooter_mod = MatchSale.Normal
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.Horrible,
		fighting = ReviewScore.VeryBad,
		adventure = ReviewScore.Good,
		horror = ReviewScore.Good,
		simulation = ReviewScore.VeryGood,
		strategy = ReviewScore.Normal,
		rpg = ReviewScore.Bad,
		sandbox = ReviewScore.Perfect,
		racing = ReviewScore.VeryBad,
		puzzle_mod = ReviewScore.VeryBad,
		BattleRoyale_mod = ReviewScore.Horrible,
		FirstPersonShooter_mod = ReviewScore.Normal
	}
})

--[Complete balance]
themes:registerNew({
	id = "PointNClick_Theme",
	display = _T("THEME_PointNClick", "Point And Click"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = {
		action = MatchSale.Horrible,
		fighting = MatchSale.VeryBad,
		adventure = MatchSale.Perfect,
		horror = MatchSale.VeryGood,
		simulation = MatchSale.Normal,
		strategy = MatchSale.Horrible,
		rpg = MatchSale.VeryBad,
		sandbox = MatchSale.Horrible,
		racing = MatchSale.VeryBad,
		puzzle_mod = MatchSale.Normal,
		BattleRoyale_mod = MatchSale.Horrible,
		FirstPersonShooter_mod = MatchSale.Good
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = {
		action = ReviewScore.Horrible,
		fighting = ReviewScore.VeryBad,
		adventure = ReviewScore.Perfect,
		horror = ReviewScore.VeryGood,
		simulation = ReviewScore.Normal,
		strategy = ReviewScore.Horrible,
		rpg = ReviewScore.VeryBad,
		sandbox = ReviewScore.Horrible,
		racing = ReviewScore.VeryBad,
		puzzle_mod = ReviewScore.Normal,
		BattleRoyale_mod = ReviewScore.Horrible,
		FirstPersonShooter_mod = ReviewScore.Good
		}
})

--[Complete balance]
themes:registerNew({
	id = "Politics_Theme",
	display = _T("THEME_POLITICS", "Politics"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.Horrible,
		fighting = MatchSale.Horrible,
		adventure = MatchSale.Normal,
		horror = MatchSale.VeryBad,
		simulation = MatchSale.Perfect,
		strategy = MatchSale.Bad,
		rpg = MatchSale.Good,
		sandbox = MatchSale.VeryGood,
		racing = MatchSale.VeryBad,
		puzzle_mod = MatchSale.VeryGood,
		BattleRoyale_mod = MatchSale.Horrible,
		FirstPersonShooter_mod = MatchSale.Good
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.Horrible,
		fighting = ReviewScore.Horrible,
		adventure = ReviewScore.Normal,
		horror = ReviewScore.VeryBad,
		simulation = ReviewScore.Perfect,
		strategy = ReviewScore.Bad,
		rpg = ReviewScore.Good,
		sandbox = ReviewScore.VeryGood,
		racing = ReviewScore.VeryBad,
		puzzle_mod = ReviewScore.VeryGood,
		BattleRoyale_mod = ReviewScore.Horrible,
		FirstPersonShooter_mod = ReviewScore.Good
	}
})

--[Complete balance]
themes:registerNew({
	id = "Survival_Theme",
	display = _T("THEME_SURVIVAL", "Survival"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.VeryGood,
		fighting = MatchSale.Good,
		adventure = MatchSale.VeryGood,
		horror = MatchSale.Perfect,
		simulation = MatchSale.Good,
		strategy = MatchSale.VeryBad,
		rpg = MatchSale.VeryGood,
		sandbox = MatchSale.Normal,
		racing = MatchSale.VeryBad,
		puzzle_mod = MatchSale.Horrible,
		BattleRoyale_mod = MatchSale.VeryGood,
		FirstPersonShooter_mod = MatchSale.Perfect
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.VeryGood,
		fighting = ReviewScore.Good,
		adventure = ReviewScore.VeryGood,
		horror = ReviewScore.Perfect,
		simulation = ReviewScore.Good,
		strategy = ReviewScore.VeryBad,
		rpg = ReviewScore.VeryGood,
		sandbox = ReviewScore.Normal,
		racing = ReviewScore.VeryBad,
		puzzle_mod = ReviewScore.Horrible,
		BattleRoyale_mod = ReviewScore.VeryGood,
		FirstPersonShooter_mod = ReviewScore.Perfect
	}
})

--[Complete balance]
themes:registerNew({
	id = "Tennis_Theme",
	display = _T("THEME_TENNIS", "Tennis"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.Horrible,
		fighting = MatchSale.VeryGood,
		adventure = MatchSale.Normal,
		horror = MatchSale.VeryBad,
		simulation = MatchSale.Perfect,
		strategy = MatchSale.Good,
		rpg = MatchSale.Horrible,
		sandbox = MatchSale.VeryGood,
		racing = MatchSale.VeryBad,
		puzzle_mod = MatchSale.Horrible,
		BattleRoyale_mod = MatchSale.Bad,
		FirstPersonShooter_mod = MatchSale.Normal
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.Horrible,
		fighting = ReviewScore.VeryGood,
		adventure = ReviewScore.Normal,
		horror = ReviewScore.VeryBad,
		simulation = ReviewScore.Perfect,
		strategy = ReviewScore.Good,
		rpg = ReviewScore.Horrible,
		sandbox = ReviewScore.VeryGood,
		racing = ReviewScore.VeryBad,
		puzzle_mod = ReviewScore.Horrible,
		BattleRoyale_mod = ReviewScore.Bad,
		FirstPersonShooter_mod = ReviewScore.Normal
	}
})

--[Complete balance]
themes:registerNew({
	id = "TowerDefense_Theme",
	display = _T("THEME_TOWERDEFENSE", "Tower Defense"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = 
	{
		action = MatchSale.Normal,
		fighting = MatchSale.Bad,
		adventure = MatchSale.Good,
		horror = MatchSale.Normal,
		simulation = MatchSale.Bad,
		strategy = MatchSale.Perfect,
		rpg = MatchSale.Good,
		sandbox = MatchSale.VeryGood,
		racing = MatchSale.VeryBad,
		puzzle_mod = MatchSale.Horrible,
		BattleRoyale_mod = MatchSale.Good,
		FirstPersonShooter_mod = MatchSale.Good
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = 
	{
		action = ReviewScore.Normal,
		fighting = ReviewScore.Bad,
		adventure = ReviewScore.Good,
		horror = ReviewScore.Normal,
		simulation = ReviewScore.Bad,
		strategy = ReviewScore.Perfect,
		rpg = ReviewScore.Good,
		sandbox = ReviewScore.VeryGood,
		racing = ReviewScore.VeryBad,
		puzzle_mod = ReviewScore.Horrible,
		BattleRoyale_mod = ReviewScore.Good,
		FirstPersonShooter_mod = ReviewScore.Good
	}
})


themes:registerNew({
	id = "Wizzards_Theme",
	display = _T("THEME_WIZZARDS", "Wizzards"),
	
	-- how does the given theme affect the game sales when paired with another genre
	match = {
		action = MatchSale.Good,
		fighting = MatchSale.VeryGood,
		adventure = MatchSale.Perfect,
		horror = MatchSale.VeryBad,
		simulation = MatchSale.Normal,
		strategy = MatchSale.Good,
		rpg = MatchSale.Perfect,
		sandbox = MatchSale.Horrible,
		racing = MatchSale.Horrible,
		puzzle_mod = MatchSale.Horrible,
		BattleRoyale_mod = MatchSale.VeryGood,
		FirstPersonShooter_mod = MatchSale.Good
	},
		
	-- how much does this theme affect the review score by when matched with another genre
	-- should not be below 1 (otherwise the player is penalized for choosing a theme that doesn't work well with the genre beyond just the sales), but can be above 1 for sure
	reviewAffector = {
		action = ReviewScore.Good,
		fighting = ReviewScore.VeryGood,
		adventure = ReviewScore.Perfect,
		horror = ReviewScore.VeryBad,
		simulation = ReviewScore.Normal,
		strategy = ReviewScore.Good,
		rpg = ReviewScore.Perfect,
		sandbox = ReviewScore.Horrible,
		racing = ReviewScore.Horrible,
		puzzle_mod = ReviewScore.Horrible,
		BattleRoyale_mod = ReviewScore.VeryGood,
		FirstPersonShooter_mod = ReviewScore.Good
	}
})




