//
//  Song+Convenience.swift
//  Playlist27CoreData
//
//  Created by Austin West on 6/19/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    @discardableResult
    convenience init(title: String, artist: String, playlist: Playlist, context: NSManagedObjectContext = CoreDataStack.managedObjectContext) {
        self.init(context: context)
        self.title = title
        self.artist = artist
    }
}
