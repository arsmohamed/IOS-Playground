import UIKit

enum Ingredient : String {
    case spaghetti = "Romaine spaghetti"
    case penne = "Romaine penne"
    case ravioli = "Romaine ravioli"
    case rigatoni = "Romaine rigatoni"
}
let ingredient = Ingredient.spaghetti

switch ingredient {
    case .spaghetti:
        print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
    case .penne:
        print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
    case .ravioli:
        print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
    case .rigatoni:
        print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces.")
}

enum RecipeInformation {
    case allergens(information: String)
}
let recipeInformation = RecipeInformation.allergens(information: "Peanuts, Milk, Gluten")

switch recipeInformation {
case .allergens(let information): print("The meal includes the following allergens: \(information)")
}
