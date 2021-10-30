//
//  WhiteViewController.swift
//  playground
//
//  Created by 유재호 on 2021/10/28.
//

import UIKit

class WhiteViewController: UIViewController {
    
    @IBAction func AlertButtonDidPushed(_ sender: UIButton) {
        showAlert()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("--White view will appear!--")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("--White view did appear!--")
        print("------------------------------")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("--White view will disappear!--")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("--White view did disappear!--")
    }
    
    func showAlert() {
        let message = "Alert 내용"
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .actionSheet)
        
        // 버튼 누르면 화면 이동할 수 있도록 만들기
        let goToOrangeAction = UIAlertAction(title: "Go to Orange", style: .default) {
            (action) in print("오렌지로 가자!")
        }
        let goToIndigoAction = UIAlertAction(title: "Go to Indigo", style: .default) {
            (action) in print("인디고로 가자!")
        }
        let destructiveAction = UIAlertAction(title: "Destruct", style: .destructive) {
            (action) in print("무엇인가 삭제됨!")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        // alert 에 액션 버튼을 넣어준다. (액션이 3개 이상이면 위부터 아래로 배열)
        // destructive or dangerous action must be displayed at the top of the action sheet.
        alert.addAction(destructiveAction)
        alert.addAction(goToOrangeAction)
        alert.addAction(goToIndigoAction)
        alert.addAction(cancelAction)
        
        // alert 모달을 화면에 띄우는 메서드
        present(alert, animated: true)
    }
}
