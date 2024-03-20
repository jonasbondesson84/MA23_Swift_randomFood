//
//  Model.swift
//  randomFood
//
//  Created by Jonas Bondesson on 2024-03-19.
//

import Foundation

class Model {
    var dishes = [Dish]()
    
    
    func saveDish(dish: Dish) {
        dishes.append(dish)
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
