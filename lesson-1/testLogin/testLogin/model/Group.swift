//
//  Group.swift
//  testLogin
//
//  Created by Andrey on 10/04/2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import Foundation

class Group : NSObject{
    var name: String
    var id: Int
    
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    
    func getAsString() -> String {
        return name
    }
    
    func isCurrentInList(groupsList: [Group]) -> Bool{
        var result = false
        groupsList.forEach { group in
            print("\(group.name)")
            if group.id == self.id {
                print("есть")
                result = true
                
            }
        }
        return result
    }
}



