//
//  CountriesTableViewController.swift
//  Passport
//
//  Created by Divine Davis on 9/22/15.
//  Copyright © 2015 Juniper Street. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    
    var countries = ["Italy", "Norway", "England"]
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        let country = countries[indexPath.row]
        cell.textLabel?.text = country
        cell.accessoryType = .Checkmark
        
        return cell
    }
    
    
}
