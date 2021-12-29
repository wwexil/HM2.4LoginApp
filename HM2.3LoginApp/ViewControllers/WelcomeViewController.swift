//
//  WelcomeViewController.swift
//  HM2.3LoginApp
//
//  Created by Asya on 28.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
        
    }
    
    
}
