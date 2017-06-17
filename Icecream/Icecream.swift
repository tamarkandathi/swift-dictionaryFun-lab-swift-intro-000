//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. 
    var favoriteFlavorsOfIceCream = ["Joe" : "Peanut Butter and Chocolate",
                                     "Tim" : "Natural Vanilla",
                                  "Sophie" : "Mexican Chocolate",
                                   "Deniz" : "Natural Vanilla",
                                     "Tom" : "Mexican Chocolate",
                                     "Jim" : "Natural Vanilla",
                                   "Susan" : "Cookies 'N' Cream"
                                    ]
    
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = []
        
        for (person, iceCreamFlavor) in favoriteFlavorsOfIceCream {
            if iceCreamFlavor == flavor {
                names.append(person)
            }
        }
        return names
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var namesCount = 0
        var names: [String] = []
        
        for (person, iceCreamFlavor) in favoriteFlavorsOfIceCream {
            if iceCreamFlavor == flavor {
                names.append(person)
            }
        }
        namesCount = names.count
        return namesCount
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        if let personsFavIceCream = favoriteFlavorsOfIceCream[person] {
            return personsFavIceCream
        }
        return nil
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            return true
        }
        return false
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        }
        return false
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            return true
        }
        return false
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        let attendees = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var list = String()
        
        for attendee in attendees {
            list.append("\(attendee) likes \(favoriteFlavorsOfIceCream[attendee]!)\n")
        }
        list =  String (list.characters.dropLast())
        return list
    }
    
}
