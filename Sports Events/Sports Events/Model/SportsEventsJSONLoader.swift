//
//  SportsEventsJSONLoader.swift
//  Sports Events
//
//  Created by Jeffrey Friel on 7/21/17.
//  Copyright © 2017 Jeffrey Friel. All rights reserved.
//

import Foundation

class SportsEventsJSONLoader {
    
    class func load(fileName: String) -> [SportsEvent]{
        
        var events = [SportsEvent]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
        let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            events = SportsEventsJSONParser.parse(data)
        }
        
        return events
    }
}
