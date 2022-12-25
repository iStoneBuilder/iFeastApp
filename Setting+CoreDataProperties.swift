//
//  Setting+CoreDataProperties.swift
//  ifeastApp
//
//  Created by Ji Chen on 2022/12/25.
//
//

import Foundation
import CoreData


extension Setting {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Setting> {
        return NSFetchRequest<Setting>(entityName: "Setting")
    }

    @NSManaged public var settingId: UUID?
    @NSManaged public var name: String?
    @NSManaged public var account: String?
    @NSManaged public var password: String?
    @NSManaged public var address: String?
    @NSManaged public var port: Int16
    @NSManaged public var path: String?

}

extension Setting : Identifiable {

}
