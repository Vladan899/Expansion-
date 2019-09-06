local RockPaperMachinegunReviews = {}
RockPaperMachinegunReviews.id = "rock_papier_machinegun_reviews"
RockPaperMachinegunReviews.icon = "rockpaper"
RockPaperMachinegunReviews.display = _T("ROCK_PAPIER_MACHINEGUN_REVIEWS", "Rock Papier Machineguns")
RockPaperMachinegunReviews.description = {
	{text = _T("ROCK_PAPIER_MACHINEGUN_DESC1", "We review games and movies. No bull, real talk."), font = "bh22"},
	{text = _T("ROCK_PAPIER_MACHINEGUN_DESC2", "This community has been around for a short time Unfortunately, the fanbase, plenty of loyal readers."), font = "pix18"}
}
RockPaperMachinegunReviews.maxInterviewChance = 95
RockPaperMachinegunReviews.bribeAcceptChance = 0
RockPaperMachinegunReviews.bribeAcceptChanceIncreaseFromMoney = 0 -- the chance to accept a bribe will increase by this much if we're offering the max bribe amount

RockPaperMachinegunReviews.bribeRevealChance = 95
RockPaperMachinegunReviews.bribeRevealChanceMonthly = RockPaperMachinegunReviews.bribeRevealChance / 1 -- multiplied by amount of rivals that are active, per each month that a bribe "reveal" of another company will happen

RockPaperMachinegunReviews.pointPerCashAmount = 160000 / 4
RockPaperMachinegunReviews.interviewBaseAcceptChance = 50 -- the lowest the accept chance can go down to (what it starts out at)

RockPaperMachinegunReviews.interviewReputationCutoff = 500 -- when the player's reputation is higher than this, the chance that the reviewer will accept his invite will begin increasing

RockPaperMachinegunReviews.interviewAcceptChancePerReputation = 1 / 100 -- accept chance increases by this much per each rep point

RockPaperMachinegunReviews.popularity = 4 -- the multiplier for converting score to reptuation points in an interview when this particular reviewer is interviewing you, also used as an overall popularity value of this reviewer

RockPaperMachinegunReviews.autoInterviewChanceMultiplier = 1.5 -- the chance multiplier for auto-add interviews 

RockPaperMachinegunReviews.recentReviewTimeCutoff = 60 -- when the previous interview happened less than this many days ago, we will get an auto-add interview chance increase

RockPaperMachinegunReviews.recentInterviewTimeAffector = 0.1 -- when another interview happened recently we will add a chance per this many days above the "cutoff"

RockPaperMachinegunReviews.inquireText = _T("ROCK_PAPIER_MACHINEGUN_INQUIRE", "Like their name suggests, they make unbiased reviews. I have heard some stories of them taking a bribe or two, but offering them any kind of bribe is a bad idea. Best case scenario - they'll refuse and they'll make it known to everyone and your reputation will suffer real hard. I doubt you'll be able to sway their opinion that much by offering a fat wad of cash either.")

reviewers:registerNew(RockPaperMachinegunReviews)


local GameDishReviews = {}
GameDishReviews.id = "rock_papier_GameDish_reviews"
GameDishReviews.icon = "radar"
GameDishReviews.display = _T("GameDishReviews_REVIEWS", "Game Dish Reviews")
GameDishReviews.description = {
	{text = _T("GameDishReviews_DESC1", "We Love games, And we do make em special"), font = "bh22"},
	{text = _T("GameDishReviews_DESC2", "This community has been around for a dawn of gameing time. We love gaming of all sorts. Its been fun for players and companies alike to chose what is right for them. And we provide such service."), font = "pix18"}
}
GameDishReviews.maxInterviewChance = 95
GameDishReviews.bribeAcceptChance = 25
GameDishReviews.bribeAcceptChanceIncreaseFromMoney = 1.5 -- the chance to accept a bribe will increase by this much if we're offering the max bribe amount

GameDishReviews.bribeRevealChance = 65
GameDishReviews.bribeRevealChanceMonthly = RockPaperMachinegunReviews.bribeRevealChance / 1 -- multiplied by amount of rivals that are active, per each month that a bribe "reveal" of another company will happen

GameDishReviews.pointPerCashAmount = 160000 / 4
GameDishReviews.interviewBaseAcceptChance = 35 -- the lowest the accept chance can go down to (what it starts out at)

GameDishReviews.interviewReputationCutoff = 500 -- when the player's reputation is higher than this, the chance that the reviewer will accept his invite will begin increasing

GameDishReviews.interviewAcceptChancePerReputation = 1 / 100 -- accept chance increases by this much per each rep point

GameDishReviews.popularity = 1.75 -- the multiplier for converting score to reptuation points in an interview when this particular reviewer is interviewing you, also used as an overall popularity value of this reviewer

GameDishReviews.autoInterviewChanceMultiplier = 1.5 -- the chance multiplier for auto-add interviews 

GameDishReviews.recentReviewTimeCutoff = 60 -- when the previous interview happened less than this many days ago, we will get an auto-add interview chance increase

GameDishReviews.recentInterviewTimeAffector = 0.1 -- when another interview happened recently we will add a chance per this many days above the "cutoff"

GameDishReviews.inquireText = _T("ROCK_PAPIER_MACHINEGUN_INQUIRE", "Like their name suggests, they make unbiased reviews. I have heard some stories of them taking a bribe or two, but offering them any kind of bribe is a bad idea. Best case scenario - they'll refuse and they'll make it known to everyone and your reputation will suffer real hard. I doubt you'll be able to sway their opinion that much by offering a fat wad of cash either.")

reviewers:registerNew(GameDishReviews)