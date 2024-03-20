//
//  Model.swift
//  randomFood
//
//  Created by Jonas Bondesson on 2024-03-19.
//

import Foundation

class Model {
    static let shared = Model()
    var dishes = [Dish]()
    init() {
        var dish = Dish(title: "Fish", category: "Main", desc: "Cooked cod with mashed potatoes")
        saveDish(dish: dish)
        dish = Dish(title: "Miso soup", category: "Starters", desc: "A lovley soup with a taste of Japan")
        saveDish(dish: dish)
        dish = Dish(title: "Ice cream", category: "Dessert", desc: "Vanilla ice cream with toppings")
        saveDish(dish: dish)
    }
    
    
    
    func saveDish(dish: Dish) {
        self.dishes.append(dish)
        
    }
    
    func getRandomDish()-> Dish? {
        if !self.dishes.isEmpty {
            return self.dishes.randomElement()!
        }
        return nil
    }
    
    
    
}
class Dish {
    var title: String
    var category: String
    var desc: String
    
    init(title: String, category: String, desc: String) {
        self.title = title
        self.category = category
        self.desc = desc
    }
}

