//
//  updateProtocol.swift
//  contactsHW
//
//  Created by Stan St-Fleur on 7/23/16.
//  Copyright © 2016 ssf. All rights reserved.
//

import Foundation

protocol updateContactDetails {

    func controller(controller: ViewControllerForContactDetail, didAddItem: Contact, editAction: String)
    
  //  print("just completed protocol")
    
}