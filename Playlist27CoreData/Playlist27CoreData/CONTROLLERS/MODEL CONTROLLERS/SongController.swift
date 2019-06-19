//
//  SongController.swift
//  Playlist27CoreData
//
//  Created by Austin West on 6/19/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation
import CoreData

class SongController {
    
    // Singleton
    // Shared Instance
    static let shared = SongController()
    
    // CRUDS
    // Create
    func createNewSongWith(title: String, artist: String, playlist: Playlist) {
        Song(title: title, artist: artist, playlist: playlist)
        PlaylistController.shared.saveToPersistentStore()
    }
    
    // Delete
    func delete(song: Song) {
        if let moc = song.managedObjectContext {
            moc.delete(song)
            PlaylistController.shared.saveToPersistentStore()
        }
    }
}
