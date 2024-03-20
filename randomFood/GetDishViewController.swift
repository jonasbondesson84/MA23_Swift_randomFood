//
//  GetDishViewController.swift
//  randomFood
//
//  Created by Jonas Bondesson on 2024-03-20.
//

import UIKit

class GetDishViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomDish = Model.shared.getRandomDish()
        
        if let dish = randomDish {
            titleLabel.text = dish.title
            categoryLabel.text = dish.category
            descLabel.text = dish.desc
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
