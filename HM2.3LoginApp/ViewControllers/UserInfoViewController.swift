//
//  UserInfoViewController.swift
//  HM2.3LoginApp
//
//  Created by Asya on 29.12.2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet var userAboutLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        userAboutLabel.text = user.person.about
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userGoalVC = segue.destination as? UserGoalViewController else { return }
        userGoalVC.user = user
    }
}
