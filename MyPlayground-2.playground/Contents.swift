var levelScores: [Int] = []
if (levelScores.count == 0 ){
    print("Welcome to a new game ")
}
let firstLevelScore = 10
levelScores.append(firstLevelScore)
print("The first level score is \(levelScores[0])")

let levelBonusScore = 40
levelScores[0] += levelBonusScore
print("first level's score is \(levelScores[0])")

let freeLevelScores = [20, 30]
levelScores += freeLevelScores

let freeLevels = 3
if levelScores.count == freeLevels {
    print(
        "You have finished playing the free version of the game. Buy the game to play its full version."
      )
      levelScores = []
      print("Game restarted!")
}
