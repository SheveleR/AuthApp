//
//  RegistrationViewController.swift
//  AuthApp
//
//  Created by SheveleR on 23/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registrationButton: UIButton!
    @IBOutlet weak var emailWarning: UIImageView!
    @IBOutlet weak var passwordWarning: UIImageView!
    var presenter: RegisterPresenter!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = RegisterPresenter(viewController: self);
        self.view.backgroundColor = UIColor(red:62/255.0, green:69/255.0, blue:76/255.0, alpha:1);
        self.registrationButton.isEnabled = false
        self.emailTextField.addTarget(self, action: #selector(textFieldChanged(_textField:)), for: .editingChanged)
        self.passwordTextField.addTarget(self, action: #selector(textFieldChanged(_textField:)), for: .editingChanged)
    }
    
    func textFieldChanged(_textField:UITextField) {
        self.registrationButton.isEnabled = true
    }
    @IBAction func registrationButtonClicked(_ sender: Any) {
        if let email = emailTextField.text, !email.isEmpty, let password = passwordTextField.text, !password.isEmpty {
            passwordWarning.isHidden = true
            emailWarning.isHidden = true
            self.presenter.registerButtonClicked(userEmail: emailTextField.text!, userPassword: passwordTextField.text!)
        }
        else {
            if let email = emailTextField.text, email.isEmpty {
                emailWarning.isHidden = false
            }
            else {
                emailWarning.isHidden = true
            }
            if let password = passwordTextField.text, password.isEmpty{
                passwordWarning.isHidden = false
            }
            else {
                passwordWarning.isHidden = true
            }
            self.showAlert(title: "Ошибка", errorMessage: "Введите корректные e-mail и пароль")
        }
    }
    
    func showAlert(title: String, errorMessage: String) {
        let wpsAlertController = WPSAlertController.init(title: title, message: errorMessage, preferredStyle: UIAlertControllerStyle.alert)
        wpsAlertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        wpsAlertController.show()
    }
}
