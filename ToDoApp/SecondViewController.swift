//
//  SecondViewController.swift
//  ToDoApp
//
//  Created by Tahir Raza on 15/08/2018.
//  Copyright © 2018 ahsan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var arr = [String]()
    
    
    @IBOutlet weak var ItemField: UITextField!
    @IBAction func AddBtn(_ sender: Any) {
       // var item = ItemField.text
        if let itemName = ItemField.text {
            arr.append(itemName)
            
            print("added")
            print("secondcon: \(arr)")
            ItemField.text = ""
            

        }else{
            print("please type the value first")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

