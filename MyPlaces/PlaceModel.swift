//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Юлия on 02.12.2020.
//  Copyright © 2020 Julia Stodolya. All rights reserved.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
    
    static let restaurantNames = ["Кансинь", "Фишка", "Корова", "Онегин" ]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        for place in restaurantNames {
            places.append(Place(name: place, location: "Ростов-на-Дону", type: "Ресторан", image: place))
        }
        return places
    }
    
}
