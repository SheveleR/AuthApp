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
        self.view.backgroundColor = UIColor(red:62/255.0, green:69/255.0, blue:76/255.0, alpha:1);
        presenter = RegisterPresenter();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registrationButtonClicked(_ sender: Any) {
        if !(emailTextField.text?.isEmpty)! && !(passwordTextField.text?.isEmpty)! {
            
            presenter.registerButtonClicked(registrationVC: self, userEmail: emailTextField.text!, userPassword: passwordTextField.text!)
        }
        else {
            if (emailTextField.text?.isEmpty)! {
                emailWarning.isHidden = false
            }
            if (passwordTextField.text?.isEmpty)! {
                passwordWarning.isHidden = false
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
