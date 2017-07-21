//
//  SportsEventsViewController.swift
//  Sports Events
//
//  Created by Jeffrey Friel on 7/21/17.
//  Copyright © 2017 Jeffrey Friel. All rights reserved.
//

import UIKit

class SportsEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let sportsEvents = SportsEventsJSONLoader.load(fileName: "sports_events")
    let dateFormatter = DateFormatter()
    
    
    @IBOutlet weak var sportsEventsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sports Events"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sportsEvents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sportsEventsCell", for: indexPath)
        
        if let cell = cell as? SportsEventTableViewCell{
            let sportsEvent = sportsEvents[indexPath.row]
            cell.sportIconImageView.image = sportsEvent.sport.image
            cell.matchupLabel.text = sportsEvent.matchup
            cell.dateLabel.text = dateFormatter.string(from: sportsEvent.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SportsEventsDetailViewController,
            let row = sportsEventsTableView.indexPathForSelectedRow?.row {
            destination.sportsEvent = sportsEvents[row]
        }
    }

}
