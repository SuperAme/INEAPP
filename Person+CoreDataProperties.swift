//
//  Person+CoreDataProperties.swift
//  INECoreData
//
//  Created by IDS Comercial on 1/25/21.
//  Copyright © 2021 Américo MQ. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var lastname: String?
    @NSManaged public var age: Int64
    @NSManaged public var email: String?
    @NSManaged public var country: String?

}
