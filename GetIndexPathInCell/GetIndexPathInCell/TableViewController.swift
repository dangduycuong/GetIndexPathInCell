//
//  TableViewController.swift
//  GetIndexPathInCell
//
//  Created by Cuong on 7/4/19.
//  Copyright © 2019 Cuong. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var names = [["Mai", "Dao"], ["Du Du", "Dua", "Oi"], ["Banh Chung", "Dua Hanh", "Gio Mo", "Cha"]]
    
    var listFoods = [Array<String>]()
    
    var numbers = [Int](0...9)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
//        return names.count
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return names[section].count
        return numbers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        // Configure the cell...
//        cell.nameLabel.text = names[indexPath.section][indexPath.row]
        cell.nameLabel.text = String(numbers[indexPath.row])
        cell.nextButton.tag = indexPath.row
        //cell.delegate = self

        cell.nextButton.addTarget(self, action: #selector(pressNextButton(_:))
            , for: .touchUpInside)

        return cell
    }
    
    func passData() {
        
    }
    
    @objc func pressNextButton(_ sender: UIButton) {
            //let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewControllerID") as? ViewController
        print("Index", sender.tag)
        let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerID") as! ViewController
        //let vc = storyboard?.instantiateViewController(withIdentifier: "ViewControllerID") as! ViewController
        //self.dismiss(animated: true, completion: nil)
        destinationVC.displayNumber = String(numbers[sender.tag])
        self.present(destinationVC, animated: true)
    }
    

}

//extension TableViewController: CustomTableViewCellDelegate {
//    func buttonTapped() {
//        print("do something")
//        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewControllerID") as! ViewController
//    }
//}
