//
//  PicExtension.swift
//  VirtualTourist
//
//  Created by Rahaf on 23/07/2019.
//  Copyright © 2019 Rahaf. All rights reserved.
//

import Foundation
import UIKit

extension Pic {
    func set(image : UIImage){
        self.image = image.pngData()
    }
    func get() -> UIImage? {
        return (image == nil) ? nil : UIImage(data:image!)
    }
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
