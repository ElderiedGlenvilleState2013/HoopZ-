//
//  productFile.swift
//  Practicing seque
//
//  Created by McKinney family  on 4/13/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import Foundation

struct Product {
    
    private(set) public var title: String
    private(set) public var imageName: String
    private(set) public var story: String
    
    init(title: String, imageName: String, story: String) {
        self.title = title
        self.imageName = imageName
        self.story = story
    }
    
}
