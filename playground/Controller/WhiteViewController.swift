//
//  WhiteViewController.swift
//  playground
//
//  Created by 예거 on 2021/10/28.
//

import UIKit

class WhiteViewController: UIViewController {
    
    @IBAction func goToWhiteView(_ segue: UIStoryboardSegue) {
        print("화이트 뷰로 돌아가자!")
    }
    
    @IBAction func AlertButtonDidPushed(_ sender: UIButton) {
        showAlert()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("--White view did load!--")
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
        
        // Alert 버튼 누르면 화면 이동할 수 있도록 만들기
        let goToOrangeAction = UIAlertAction(title: "Go to Orange", style: .default) {
            (action) in
            print("Alert 버튼을 통해 오렌지로 가자!")
            // FIXME: 스토리보드에서 Unwind Segue 의 Identifier 지정해주고 정확한 String 을 불러냈는데, "has no segue with identifier" 런타임 에러가 남. 뭐지?
            // Unwind Segue 의 Identifier 를 지정하고, 코드에서는 self.performSegue() 메서드를 통해 화면 이동 구현
            self.performSegue(withIdentifier: "goToOrangeViewSegue", sender: self)
            
            // FIXME: 아래 코드를 통해 OrangeView 로 이동은 하는데, Stack 이 쌓이는 식으로 감. 아예 처음으로 돌아가는 식으로 구현을 바꿔야 함.
            // let orangeView = self.storyboard!.instantiateViewController(withIdentifier: "OrangeView")
            // self.navigationController!.pushViewController(orangeView, animated: true)
        }
        
        let goToIndigoAction = UIAlertAction(title: "Go to Indigo", style: .default) {
            (action) in
            print("Alert 버튼을 통해 인디고로 가자!")
            self.performSegue(withIdentifier: "goToIndigoViewSegue", sender: self)
        }
        
        let destructiveAction = UIAlertAction(title: "Destruct", style: .destructive) {
            (action) in
            print("무엇인가 삭제됨!")
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
