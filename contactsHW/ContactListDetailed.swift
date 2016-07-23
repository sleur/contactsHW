//
//  ContactList.swift
//  contactsHW
//
//  Created by Stan St-Fleur on 7/21/16.
//  Copyright © 2016 ssf. All rights reserved.
//

import Foundation

class Contact{

var firstName : String?
var lastName  : String?
var email : String?
var phone : String?

    init(fName: String?, lName: String?, emailAddress: String?, phoneNumber: String?){
        
    self.firstName = fName
    self.lastName = lName
    self.email = emailAddress
    self.phone = phoneNumber
        
    }
}


//take user input from designated field and pass into conditional statement that identifies right detail to show based on user's selection.

//create as a dictionary using full names as keys and values for first name, last name etc.

//use cases



