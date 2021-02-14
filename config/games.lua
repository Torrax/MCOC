local games = {}

table.insert(games, {
    title = "Roulette",
    file = "game_Roulette.lua",
    available = true,
    image = "game_Roulette.pic",
    author = "krovyaka",
    description = "Players may choose to place bets on either a single\n" ..
            "number, various groupings of numbers, the colors red or black,\n" ..
            "whether the number is odd or even, or if the numbers are\n" ..
            "high (19–36) or low (1–18).\n" ..
            "To determine the winning number, a wheel spins a ball\n" ..
            "around the edge. The ball will eventually slow down and stop\n" ..
            "on a number. If the number falls onto one of the selected values,\n" ..
            "The player wins a reward equal to the chance of the space bet on.\n"
})

table.insert(games, {
    title = "Blackjack",
    file = "game_Blackjack.lua",
    available = true,
    image = "game_Blackjack.pic",
    author = "Durex77",
    description = "Player is dealt two cards face up. The objective \n" ..
            "of the game is to score higher than the dealer without\n" ..
            "going over 21. Face cards are worth 10 points each.\n"
})

table.insert(games, {
    title = "Poker - 5 Card",
    file = "game_Video_poker.lua",
    available = true,
    image = "game_Video_poker.pic",
    author = "Durex77",
    description = "The player is then given 5 cards (like five-card draw) \n" ..
            "and has the opportunity to discard one or more of them in exchange \n" ..
            "for new ones drawn from the same virtual deck. After the draw, \n" ..
            "the machine pays out if the hand or hands played match one of \n" ..
            "the winning combinations, which are posted in the pay table.\n"
})

table.insert(games, {
    title = "Higher or Lower",
    file = "game_More_less.lua",
    available = true,
    image = "game_More_less.pic",
    author = "Durex77",
    description = "A casino card game that is all about guessing,\n" ..
            "The next card drawn can be higher or lower than the current.\n" ..
            "In order to win, you must guess if this card will be higher\n" ..
            "or lower. If the card displayed ends up being equal to the \n" ..
            "previous card, then it is concidered a win."
})

table.insert(games, {
    title = "Minecraft Slots",
    file = "game_One_armed_creeper.lua",
    available = true,
    image = "game_One_armed_creeper.pic",
    author = "krovyaka",
    description = "A classic one line slot machine, Minecraft edition.\n" ..
            "Slot is programmed to have an increased payout over, \n"..
            "regular casino slot machines. In order to get three characters\n"..
            "in a row in order to win. The amount depends on the characters."
})

table.insert(games, {
    title = "Pick a Chest",
    file = "game_Chests.lua",
    available = true,
    image = "game_Chests.pic",
    author = "krovyaka",
    description = "After starting the game, select a Chest.\n" ..
            "Each Chest contains a random amount of currency.\n" ..
            "You can win anywhere from double your bet to nothing.\n" ..
            "One chest has a small chance to be 10 times your bet."
})

return games
