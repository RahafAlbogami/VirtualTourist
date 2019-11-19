//
//  PinExtension.swift
//  VirtualTourist
//
//  Created by Rahaf on 23/07/2019.
//  Copyright © 2019 Rahaf. All rights reserved.
//

import Foundation
import MapKit

extension Pin: MKAnnotation {
    
    public var coordinate : CLLocationCoordinate2D{
        set{
            latitude = newValue.latitude
            longitude = newValue.longitude
        }
        get{
            return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
    }
    func compare(to cordinates: CLLocationCoordinate2D) -> Bool {
        return (latitude == cordinates.latitude && longitude == cordinates.longitude)
    }
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
