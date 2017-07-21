//
//  SportsEventsJSONParser.swift
//  Sports Events
//
//  Created by Jeffrey Friel on 7/21/17.
//  Copyright © 2017 Jeffrey Friel. All rights reserved.
//

import Foundation

class SportsEventsJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [SportsEvent]{
        
        var sportsEvents = [SportsEvent]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
           let root = json as? [String: Any],
           let status = root["status"] as? String,
           status == "ok" {
            
            if let events = root["events"] as? [Any] {
                for event in events {
                    if let event = event as? [String: String]{
                        if let sportName = event["sport"],
                           let matchup = event["matchup"],
                           let dateString = event["date"],
                           let date = dateFormatter.date(from: dateString) {
                            
                            if let sportsEvent = SportsEvent(sportnName: sportName, matchup: matchup, date: date){
                                sportsEvents.append(sportsEvent)
                            }
                        }
                    }
                }
            }
        }
        
        return sportsEvents
    }
}
