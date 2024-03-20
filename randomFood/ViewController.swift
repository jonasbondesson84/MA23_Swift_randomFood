//
//  ViewController.swift
//  randomFood
//
//  Created by Jonas Bondesson on 2024-03-19.
//

import UIKit

class ViewController: UIViewController {
    
    var segueID = "goToGetDishSegue"

    @IBAction func btnGetDish(_ sender: UIButton) {
        print(Model.shared.dishes.isEmpty)
        if !Model.shared.dishes.isEmpty {
            performSegue(withIdentifier: segueID, sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

