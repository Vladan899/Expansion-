bookController.registerBook({
	id = "software_book_10", -- the ID of the book

	display = _T("SOFTWARE_BOOK_1_NAME", "Software: Beginners to algorithms"),
	icon = "book_software",
	description = {
		{text = _T("SOFTWARE_BOOK_1_DESCRIPTION_1", "A collection of books that introduce and explain various Beginners problem-solving algorithms."), font = "pix16"}
	},
	skillBoost = {id = "software", boost = 0.2}, -- skill to boost when the book is purchased & positioned on a bookshelf

	cost = 25000 -- the cost of the book

})
bookController.registerBook({
	id = "software_book_20", -- the ID of the book

	display = _T("SOFTWARE_BOOK_1_NAME", "Software: Intermadiate to algorithms"),
	icon = "book_software",
	description = {
		{text = _T("SOFTWARE_BOOK_1_DESCRIPTION_1", "A collection of books that introduce and explain various common problem-solving algorithms."), font = "pix16"}
	},
	skillBoost = {id = "software", boost = 0.3}, -- skill to boost when the book is purchased & positioned on a bookshelf

	cost = 150000 -- the cost of the book

})
bookController.registerBook({
	id = "software_book_30", -- the ID of the book

	display = _T("SOFTWARE_BOOK_1_NAME", "Software: Advanced to algorithms"),
	icon = "book_software",
	description = {
		{text = _T("SOFTWARE_BOOK_1_DESCRIPTION_1", "A collection of books that introduce and explain various Advanced problem-solving algorithms."), font = "pix16"}
	},
	skillBoost = {id = "software", boost = 0.50}, -- skill to boost when the book is purchased & positioned on a bookshelf

	cost = 250000 -- the cost of the book

})
bookController.registerBook({
	id = "concept_book_10", -- the ID of the book

	display = _T("Concept_BOOK_1_NAME", "Concept: Beginners to game Concept"),
	icon = "book_concept",
	description = {
		{text = _T("Concept_BOOK_1_DESCRIPTION_1", "A collection of books that introduce and explain various Beginners problem-solving game Concepts."), font = "pix16"}
	},
	skillBoost = {id = "concept", boost = 0.2}, -- skill to boost when the book is purchased & positioned on a bookshelf

	cost = 25000 -- the cost of the book

})

bookController.registerBook({
	id = "concept_book_20", -- the ID of the book

	display = _T("Concept_BOOK_1_NAME", "Software: Intermadiate to game Concept"),
	icon = "book_concept",
	description = {
		{text = _T("Concept_BOOK_1_DESCRIPTION_1", "A collection of books that introduce and explain various common problem-solving game Concepts."), font = "pix16"}
	},
	skillBoost = {id = "concept", boost = 0.3}, -- skill to boost when the book is purchased & positioned on a bookshelf
	
	cost = 50000 -- the cost of the book

})
bookController.registerBook({
	id = "concept_book_30", -- the ID of the book

	display = _T("Concept_BOOK_1_NAME", "Concept: Advanced to game Concept"),
	icon = "book_concept",
	description = {
		{text = _T("Concept_BOOK_1_DESCRIPTION_1", "A collection of books that introduce and explain various Advanced problem-solving game Concepts."), font = "pix16"}
	},
	skillBoost = {id = "concept", boost = 0.35}, -- skill to boost when the book is purchased & positioned on a bookshelf

	cost = 100000 -- the cost of the book

})




