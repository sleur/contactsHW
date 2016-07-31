//
//  ViewControllerForContactDetail.swift
//  contactsHW
//
//  Created by Stan St-Fleur on 7/23/16.
//  Copyright © 2016 ssf. All rights reserved.
//

import UIKit

class ViewControllerForContactDetail: UIViewController {

    var delegate: updateContactDetails?
    @IBOutlet weak var cell4FirstName: UITextField!
    @IBOutlet weak var cell4LastName: UITextField!
    @IBOutlet weak var cell4Email: UITextField!
    @IBOutlet weak var cell4Phone: UITextField!

    
 
    @IBAction func UpdateDetails(sender: AnyObject) {
        let fname = self.cell4FirstName.text
        let lname = self.cell4LastName.text
        let email = self.cell4Email.text
        let phone = self.cell4Phone.text
        
        let con = Contact(fName: fname, lName: lname, emailAddress: email, phoneNumber: phone)
        
        if let delegate = self.delegate{
        delegate.controller(self, didAddItem: con, editAction: "hy")
        
            print("just executed @IBAction func called Update Details")
            
        }


  /*      if let cont : Contact = contact!{
            
        } */
        
    }
    
    var contact : Contact?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let con : Contact = contact! {
            
            cell4FirstName.text = con.firstName
            cell4LastName.text = con.lastName
            cell4Email.text = con.email
            cell4Phone.text = con.phone
            
            print("entered if let con:Contact")
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        print("entered didReceiveMemoryWarning")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
