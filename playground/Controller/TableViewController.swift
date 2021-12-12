//
//  TableViewController.swift
//  playground
//
//  Created by 유재호 on 2021/12/13.
//

import UIKit

class TableViewController: UIViewController {
    // UITableViewController 가 이미 기능구현을 해놨기 때문에 override 되는 것.
    // 다른 분들은 UIViewController 사용하면서 UITableViewDataSource, Delegate 프로토콜 채택함.
    // 채택하면서, 프로토콜 요구사항을 준수하기 위한 구현을 하는 것.
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension TableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath) touched!")
    }
}

extension TableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return FoodType.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfmenusInFoodType = menu[FoodType.allCases[section]]?.count ?? .zero
        
        return numberOfmenusInFoodType
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customMenuCell", for: indexPath)
              as? CustomTableViewCell else {
                  return CustomTableViewCell()
        }
        
        let menuName = menu[FoodType.allCases[indexPath.section]]?[indexPath.row].name ?? "메뉴 없음"
        let menuPrice = menu[FoodType.allCases[indexPath.section]]?[indexPath.row].price ?? .zero
        
        cell.circleImage.image = UIImage(systemName: "circle")
        cell.menuNameLabel.text = menuName
        cell.menuPriceLabel.text = menuPrice.decimalString
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionTitle = FoodType.allCases[section].rawValue
        
        return sectionTitle
    }
}
