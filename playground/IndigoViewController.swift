//
//  IndigoViewController.swift
//  playground
//
//  Created by 유재호 on 2021/10/28.
//

import UIKit

class IndigoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("--Indigo view will appear!--")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("--Indigo view did appear!--")
        print("------------------------------")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("--Indigo view will disappear!--")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("--Indigo view did disappear!--")
    }
}
