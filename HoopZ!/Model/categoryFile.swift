//
//  categoryFile.swift
//  Practicing seque
//
//  Created by McKinney family  on 4/13/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}


