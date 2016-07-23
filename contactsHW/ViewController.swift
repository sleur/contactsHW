//
//  ViewController.swift
//  contactsHW
//
//  Created by Stan St-Fleur on 7/21/16.
//  Copyright © 2016 ssf. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var listOfContact = [
    Contact(fName: "Giacomo", lName: "Guilizzoni", emailAddress: "Giacomo.Guilizzoni@gmail.com", phoneNumber: "(678) 909-9812"),
    Contact(fName: "Marco", lName: "Botton", emailAddress: "mbotton@yahoo.com", phoneNumber: "(404) 989-9812"),
    Contact(fName: "Mariah", lName: "Maclachlan", emailAddress: "maclachlan", phoneNumber: "(770) 892-1298")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
      return listOfContact.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCellWithIdentifier("MyReusuableCellID", forIndexPath: indexPath) as? ContactNameLabel {
           // cell.labelForNames.text = listOfContact[indexPath.row].firstName
            // cell.labelForNames.text = listOfContact[indexPath.row].lastName
            
            let theFirstName = listOfContact[indexPath.row].firstName!
            let theLastName = listOfContact[indexPath.row].lastName!
            
            cell.labelForNames.text = ("\(theFirstName) \(theLastName)")
            print("\(theFirstName) \(theLastName)")
            
        return cell
            

        }
        
        return UITableViewCell()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showMeDetailView" {
            let destination = segue.destinationViewController as? ViewControllerForContactDetail
            let cell = sender as! UITableViewCell
            let selectedRow = tableView.indexPathForCell(cell)!.row
            destination!.contact = listOfContact[selectedRow]
            //destination!.delegate = self
        }
    }


}

