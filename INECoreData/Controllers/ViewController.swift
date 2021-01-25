//
//  ViewController.swift
//  INECoreData
//
//  Created by IDS Comercial on 1/25/21.
//  Copyright © 2021 Américo MQ. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var persons = [Person]()
    
    @IBOutlet weak var tableView: UITableView!
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadPersons()
    }
    
    func loadPersons() {
        
        let request : NSFetchRequest<Person> = Person.fetchRequest()
        
        do{
            persons = try context.fetch(request)
        } catch {
            print("Error loading categories \(error)")
        }
       
//        tableView.reloadData()
        
    }
  
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableItemCell", for: indexPath)
        cell.textLabel?.text = "fndjd"
        return cell
    }
}

