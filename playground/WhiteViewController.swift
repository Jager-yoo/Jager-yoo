//
//  WhiteViewController.swift
//  playground
//
//  Created by 유재호 on 2021/10/28.
//

import UIKit

class WhiteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func AlertButtonDidPushed(_ sender: UIButton) {
        showAlert()
    }
    
    func showAlert() {
        let message = "Alert 내용"
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        
        // style 로 선택할 수 있는 3가지 열거형을 모두 만들어보자!
        let defaultAction = UIAlertAction(title: "Default", style: .default)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let destructiveAction = UIAlertAction(title: "Destruct", style: .destructive)
        
        // default, cancel, destructive 순서대로 alert 에 액션을 넣어준다.
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        alert.addAction(destructiveAction)
        
        // alert 모달을 화면에 띄우는 메서드
        present(alert, animated: true)
    }
}
