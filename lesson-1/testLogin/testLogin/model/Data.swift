//
//  Data.swift
//  testLogin
//
//  Created by Andrey on 10/04/2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import Foundation


let allGroups: [Group] = [
    
    Group(name: "Группа любителей животных",id: 1),
    Group(name: "Группа любителей собак",id: 2),
    Group(name: "Группа любителей котов",id: 3),
    Group(name: "Группа любителей лягушек",id: 4),
    Group(name: "Как спать",id: 5),
    Group(name: "Как ходить на работу",id: 6),
    Group(name: "Группа как писать для айфона",id: 7)
    
    
]

var friends: [Friend] = [
    Friend(name: "Иван", countFotos: 2),
    Friend(name: "Андрей", countFotos: 15),
    Friend(name: "Глеб", countFotos: 12),
    Friend(name: "Иван", countFotos: 5),
    Friend(name: "Лена", countFotos: 5),
    Friend(name: "Катя", countFotos: 6),
    Friend(name: "Игорь", countFotos: 7),
    Friend(name: "Олег", countFotos: 32),
    Friend(name: "Оля", countFotos: 10),
    Friend(name: "Олеся", countFotos: 11),
    Friend(name: "Степан", countFotos: 6)
]

var profile = User(name: "Санек", friends: friends, groups: [allGroups[0], allGroups[2]])
