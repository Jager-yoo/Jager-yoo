//
//  ModalViewController.swift
//  playground
//
//  Created by 유재호 on 2021/10/30.
//

import UIKit

class ModalViewController: UIViewController {
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBAction func stepperDidPush(_ sender: UIStepper) {
        stepperLabel.text = sender.value.description
    }
    
    @IBAction func dismissDidPushed(_ sender: UIButton) {
        self.dismiss(animated: true) {
            // 이 클로저는 Modal viewDidDisappear() 이후에 호출됨
            // The completion handler is called after the viewDidDisappear(_:) method is called on the presented view controller.
            print("--[dismiss] 버튼으로 Modal 사라짐--")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("--Modal view will appear!--")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("--Modal view did appear!--")
        print("------------------------------")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("--Modal view will disappear!--")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("--Modal view did disappear!--")
    }
}
