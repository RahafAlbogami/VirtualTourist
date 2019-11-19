//
//  DataController.swift
//  VirtualTourist
//
//  Created by Rahaf on 23/07/2019.
//  Copyright © 2019 Rahaf. All rights reserved.
//

import Foundation
import CoreData

class DataController {
    static let shared = DataController()
    
    let persistentContainer = NSPersistentContainer(name: "VirtualTouristDataModel")
    
    var viewContext : NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func load() {
        persistentContainer.loadPersistentStores { (storeDescription, error) in
            guard error == nil else {
                fatalError(error?.localizedDescription ?? "error")
            }
        }
    }
}
