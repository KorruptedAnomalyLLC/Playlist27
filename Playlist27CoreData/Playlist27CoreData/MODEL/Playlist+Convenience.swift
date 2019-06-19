//
//  Playlist+Convenience.swift
//  Playlist27CoreData
//
//  Created by Austin West on 6/19/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation
import CoreData

extension Playlist {
    
    @discardableResult
    convenience init(name: String, context: NSManagedObjectContext = CoreDataStack.managedObjectContext) {
        // Have to call the init for a convenience init
        self.init(context: context)
        self.name = name
    }
}
