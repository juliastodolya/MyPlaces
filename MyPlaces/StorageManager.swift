//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Юлия on 03.12.2020.
//  Copyright © 2020 Julia Stodolya. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
}
