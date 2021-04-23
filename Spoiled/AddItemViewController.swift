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
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
    
    @IBAction func onCancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
