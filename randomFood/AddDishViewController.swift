//
//  AddDishViewController.swift
//  randomFood
//
//  Created by Jonas Bondesson on 2024-03-19.
//

import UIKit

class AddDishViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet weak var titleTextField: UITextField!
    

    
    let categories = ["Starters", "Main", "Dessert"]
    var category : String?
    
    @IBOutlet weak var descTextView: UITextView!
    @IBOutlet weak var categoryTextField: UITextField!
    @IBAction func btnAddDish(_ sender: UIButton) {
        if let title = titleTextField.text,
           let category = categoryTextField.text,
           let desc = descTextView.text {
            let dish = Dish(title: title, category: category, desc: desc)
            Model.shared.saveDish(dish: dish)
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createPickerView()
        dismissPickerView()
        descTextView.text = "Description"
        descTextView.textColor = UIColor.lightGray
    

        // Do any additional setup after loading the view.
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if descTextView.textColor == UIColor.lightGray {
            descTextView.textColor = UIColor.black
            descTextView.text = nil
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        if descTextView.text.isEmpty {
            descTextView.text = "Description"
            descTextView.textColor = UIColor.lightGray
        }
    }
    
    func createPickerView() {
        let categoryPickerView = UIPickerView()
        categoryPickerView.delegate = self
        categoryTextField.inputView = categoryPickerView
        pickerView(categoryPickerView, didSelectRow: 0, inComponent: 0)
        
        
    }
    
    func dismissPickerView() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        categoryTextField.inputAccessoryView = toolBar
        
    }
    
    
    @objc func action() {
        
        categoryTextField.text = category
        view.endEditing(true)
    }
    

   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        categories.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categories[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        category = categories[row]
        
        
    }
    
    

}
