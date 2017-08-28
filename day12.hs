

data GameState = GameState
data Move = Move


isMoveValid :: GameState -> Move -> Bool
isMoveValid = undefined

playMove :: GameState -> Move -> GameState
playMove = undefined

isNodeValid :: GameState -> Move -> Bool
isNodeValid = undefined

isGameComplete :: GameState -> Bool
isGameComplete = undefined

possibleMove :: GameState -> [Move]
possibleMove = undefined

applyMove :: GameState -> Move -> GameState
applyMove = undefined


