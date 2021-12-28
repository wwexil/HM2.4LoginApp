//
//  ViewController.swift
//  HM2.3LoginApp
//
//  Created by Asya on 28.12.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "Admin"
    private let password = "admin"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginButtonPressed() {
        if userNameTextField.text != user || passwordTextField.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField)
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(title: "Oops", message: "Your User Name is \(user)")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Oops", message: "Your password is \(password)")
    }
    
    @IBAction func unwwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
    private func showAlert(
        title: String,
        message: String,
        textField: UITextField? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okButton = UIAlertAction(
            title: "OK",
            style: .default
        ) { _ in textField?.text = "" }
        alert.addAction(okButton)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButtonPressed()
            performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
        }
        return true
    }
}
