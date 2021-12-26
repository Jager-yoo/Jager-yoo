//
//  TextFieldViewController.swift
//  playground
//
//  Created by 유재호 on 2021/12/26.
//

import UIKit

class TextFieldViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textInputLabel: UILabel!
    
    @IBAction func tapTextInputButton(_ sender: UIButton) {
        textFieldShouldReturn(textField)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
         textField.delegate = self
    }
    
    @discardableResult
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textInputLabel.text = textField.text
        return true
    }
}
