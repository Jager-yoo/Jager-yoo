//
//  IndigoViewController.swift
//  playground
//
//  Created by 예거 on 2021/10/28.
//

import UIKit

class IndigoViewController: UIViewController {
    
    @IBAction func goToIndigoView(_ segue: UIStoryboardSegue) {
        print("인디고 뷰로 돌아가자!")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("--Indigo view did load!--")
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
