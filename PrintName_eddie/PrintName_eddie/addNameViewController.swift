//
//  addNameViewController.swift
//  PrintName_eddie
//
//  Created by Man Kit Tsui on 7/20/20.
//  Copyright © 2020 Man Kit Tsui. All rights reserved.
//

import UIKit

class addNameViewController: UIViewController {
    
    @IBOutlet weak var addName: UITextField!
    
    var thename: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier == "doneSegue" {
            thename = addName.text!
        }
    }
    
    
}
