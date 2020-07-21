//
//  NameTableViewController.swift
//  PrintName_eddie
//
//  Created by Man Kit Tsui on 7/20/20.
//  Copyright © 2020 Man Kit Tsui. All rights reserved.
//

import UIKit

class NameTableViewController: UITableViewController {
    
    
    
    var newName: String = " "
    
    @IBAction func cancel(segue:UIStoryboardSegue){
        
    }
    
    @IBAction func done(segue:UIStoryboardSegue){
        
        let addNameVC = segue.source as! addNameViewController
        newName = addNameVC.thename
        
        tableView.reloadData()
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newName.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath)
        
        var arrayname = Array(newName)
        dump(arrayname)
        print(arrayname) // check if it spilt into array
        
        
        cell.textLabel?.text = String(arrayname[indexPath.row])
        
        return cell
    }
    
    
    
}
