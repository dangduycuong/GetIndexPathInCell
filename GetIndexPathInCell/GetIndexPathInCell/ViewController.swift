//
//  ViewController.swift
//  GetIndexPathInCell
//
//  Created by Cuong on 7/4/19.
//  Copyright © 2019 Cuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vcTextField: UITextField!
    
    var displayNumber: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if displayNumber != nil {
            vcTextField.text = displayNumber
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func saveAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}

