//
//  LeagueVC.swift
//  Swoosh Application
//
//  Created by Daniel on 5/20/18.
//  Copyright © 2018 Daniel. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self )
    } 
    

}
