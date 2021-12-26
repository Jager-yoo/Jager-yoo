//
//  TextFieldViewController.swift
//  playground
//
//  Created by 유재호 on 2021/12/26.
//

import UIKit

class TextFieldViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textInputLabel: UILabel!
    
    @IBAction func tapTextInputButton(_ sender: UIButton) {
        textInputLabel.text = textField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
