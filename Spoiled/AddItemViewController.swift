//
//  AddItemViewController.swift
//  Spoiled
//
//  Created by Ahmed Kaddoura on 4/22/21.
//

import UIKit
import Parse

class AddItemViewController: UIViewController{
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var expirationInput: UITextField!
        

    let datePicker = UIDatePicker()
    

  
    func createDatePicker(){
//        datePicker.translatesAutoresizingMaskIntoConstraints = false
////        view.addSubview(datePicker)
//        datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = false
//        datePicker.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = false
//
//
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        
        toolbar.setItems([doneBtn], animated:true)
        //assign toolbar
        expirationInput.inputAccessoryView = toolbar
        // assign date picker to the text field
        expirationInput.inputView = datePicker
       

//        // date picker mode
        datePicker.preferredDatePickerStyle = .inline
        datePicker.datePickerMode = .date
        datePicker.sizeToFit()

    }
    
    
    
    
//
//    func createDatePicker(){
//        datePicker.translatesAutoresizingMaskIntoConstraints = false
////        view.addSubview(datePicker)
//        datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = false
//        datePicker.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = false
//
//
//        //toolbar
//        let toolbar = UIToolbar()
//        toolbar.sizeToFit()
//
//        //bar button
//        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
//
//        toolbar.setItems([doneBtn], animated:true)
//        //assign toolbar
//        expirationInput.inputAccessoryView = toolbar
//        // assign date picker to the text field
//        expirationInput.inputView = datePicker
//
//
////        // date picker mode
//        datePicker.preferredDatePickerStyle = .compact
//        datePicker.datePickerMode = .date
//        datePicker.sizeToFit()
//
//    }
//
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        // Do any additional setup after loading the view.
    }

    @objc func donePressed(){
        //formatter
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        expirationInput.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @IBAction func onAddIngredientButton(_ sender: Any) {
        let ingredient = PFObject(className: "Ingredients")
        ingredient["name"] = nameInput.text!
        ingredient["expiration"] = expirationInput.text!
        ingredient["author"] = PFUser.current()
        
        ingredient.saveInBackground { (success, error) in
            if success{
                self.dismiss(animated: true, completion: nil)
                print("Saved!")
            }else{
                print("Error!")
            }
        }
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
