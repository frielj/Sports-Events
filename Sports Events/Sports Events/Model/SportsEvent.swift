//
//  SportsEvent.swift
//  Sports Events
//
//  Created by Jeffrey Friel on 7/21/17.
//  Copyright © 2017 Jeffrey Friel. All rights reserved.
//

import Foundation

struct SportsEvent {
    let sport: Sport
    let matchup: String
    let date: Date
    
    init(sport: Sport, matchup: String, date: Date){
        self.sport = sport
        self.matchup = matchup
        self.date = date
    }
    
    init?(sportnName: String, matchup: String, date: Date){
        if let sport = Sport(rawValue: sportnName){
            self.init(sport: sport, matchup: matchup, date: date)
        } else {
            return nil
        }
    }
}
