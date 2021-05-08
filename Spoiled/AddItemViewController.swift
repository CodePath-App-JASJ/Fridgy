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
    
    @IBOutlet weak var expirationInput: UIDatePicker!
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func createDatePicker(){
        expirationInput.datePickerMode = .date
        expirationInput.preferredDatePickerStyle = .inline

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        // Do any additional setup after loading the view.
    }


    @IBAction func onAddIngredientButton(_ sender: Any) {
        
        let ingredient = PFObject(className: "Ingredients")
        ingredient["name"] = nameInput.text!
        
        let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yyyy"
        ingredient["expiration"] = dateFormatter.string(from: expirationInput.date)
            self.view.endEditing(true)

        
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
