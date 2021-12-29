//
//  UserGoalViewController.swift
//  HM2.3LoginApp
//
//  Created by Asya on 29.12.2021.
//

import UIKit

class UserGoalViewController: UIViewController {
    
    @IBOutlet var userGoalLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        userGoalLabel.text = user.person.goal
        imageView.image = UIImage(named: user.person.image)

    }
}
