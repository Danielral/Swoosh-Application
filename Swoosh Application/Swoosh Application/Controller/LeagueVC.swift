//
//  LeagueVC.swift
//  Swoosh Application
//
//  Created by Daniel on 5/20/18.
//  Copyright © 2018 Daniel. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self )
    } 
    @IBOutlet weak var nextBtn: BorderButton!
    
    @IBAction func onMensTapped(_ sender: Any) {
       selectLeague(leagueType: "Men")
    }
    @IBAction func onWomenTapped(_ sender: Any) {
        selectLeague(leagueType: "Women")
    }
    @IBAction func onCo(_ sender: Any) {
        selectLeague(leagueType: "Co-Ed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
