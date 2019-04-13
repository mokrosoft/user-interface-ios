//
//  File.swift
//  testLogin
//
//  Created by Andrey on 10/04/2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import Foundation
class User{
    var name: String
    var friends: [Friend]
    var groups: [Group]
    
    init(name: String, friends: [Friend], groups: [Group]) {
        self.name = name
        self.friends = friends      
        self.groups = groups
    }
    
}
class Friend{
    var name: String
    var countFotos: Int
    
    init(name: String, countFotos: Int) {
        self.name = name
        self.countFotos = countFotos
    }
    
}

class Fotos{
    var name: String
    var url: String
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}


