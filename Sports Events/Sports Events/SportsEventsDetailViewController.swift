//
//  SportsEventsDetailViewController.swift
//  Sports Events
//
//  Created by Jeffrey Friel on 7/21/17.
//  Copyright © 2017 Jeffrey Friel. All rights reserved.
//

import UIKit

class SportsEventsDetailViewController: UIViewController {
    
    var sportsEvent: SportsEvent?
    var dateFormatter = DateFormatter();
    
    @IBOutlet weak var sportsIconImageView: UIImageView!
    @IBOutlet weak var matchupLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Event"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        sportsIconImageView.image = sportsEvent?.sport.image
        matchupLabel.text = sportsEvent?.matchup
        
        if let date = sportsEvent?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
