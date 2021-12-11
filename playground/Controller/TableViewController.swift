//
//  TableViewController.swift
//  playground
//
//  Created by 유재호 on 2021/12/11.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    // UITableViewController 가 이미 기능구현을 해놨기 때문에 override 되는 것.
    // 다른 분들은 UIViewController 사용하면서 UITableViewDataSource, Delegate 프로토콜 채택함.
    // 채택하면서, 프로토콜 요구사항을 준수하기 위한 구현을 하는 것.

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return FoodType.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let numberOfmenusInFoodType = menu[FoodType.allCases[section]]?.count ?? .zero
        
        return numberOfmenusInFoodType
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customMenuCell", for: indexPath) as? CustomTableViewCell else {
            return CustomTableViewCell()
        }
        
        let menuName = menu[FoodType.allCases[indexPath.section]]?[indexPath.row].name ?? "메뉴 없음"
        let menuPrice = menu[FoodType.allCases[indexPath.section]]?[indexPath.row].price ?? .zero
        
        cell.circleImage.image = UIImage(systemName: "circle")
        cell.menuNameLabel.text = menuName
        cell.menuPriceLabel.text = menuPrice.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionTitle = FoodType.allCases[section].rawValue
        
        return sectionTitle
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
