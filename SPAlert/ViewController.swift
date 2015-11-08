//
//  ViewController.swift
//  SPAlert
//
//  Created by Archimedes Angeles on 7/11/15.
//  Copyright © 2015 Archimedes Angeles. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var products = [Product]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
        products.append(Product(title: "iPhone", description: "This is my test iphone"))
        
        products.append(Product(title: "iPad", description: "This is sample iPad"))
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as UITableViewCell
        
        let pro = products[indexPath.row]

        
        cell.textLabel?.text = pro.title
        
        
        
        
        cell.detailTextLabel?.text = pro.description
        
        return cell
        
        
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
}

