//
//  SecondViewController.swift
//  INECoreData
//
//  Created by IDS Comercial on 1/25/21.
//  Copyright © 2021 Américo MQ. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class SecondViewController: UIViewController {
    
    var persons = [Person]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var country: UITextField!
    
    @IBAction func addPerson(_ sender: UIButton) {
        let newPerson = Person(context: self.context)
        newPerson.name = name.text!
        newPerson.email = email.text!
//        newPerson.age = Int6(age.text!)
        newPerson.country = country.text!
        self.persons.append(newPerson)
        self.saveItems()
    }
    
    func saveItems() {
        
        do {
          try context.save()
        } catch {
           print("Error saving context \(error)")
        }
        
        
    }
    
}
