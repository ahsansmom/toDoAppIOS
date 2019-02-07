//
//  FirstViewController.swift
//  ToDoApp
//
//  Created by Tahir Raza on 15/08/2018.
//  Copyright © 2018 ahsan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
//var arr = [String]()
    var otherVC = SecondViewController()
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        otherVC = self.tabBarController?.viewControllers![1] as! SecondViewController!
       // arr = (otherVC.arr)
        print("firstcon: \(otherVC.arr)")
        table.reloadData()
    }


}

extension FirstViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return otherVC.arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
            cell.textLabel?.text = otherVC.arr[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete{
            
            otherVC.arr.remove(at: indexPath.row)
            table.reloadData()
        }
    }
    
    
}

