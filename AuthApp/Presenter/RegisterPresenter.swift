//
//  RegisterPresenter.swift
//  AuthApp
//
//  Created by SheveleR on 23/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

import Foundation
import Alamofire

class RegisterPresenter: RegistrationViewController {
    
    func registerButtonClicked(registrationVC: UIViewController, userEmail: String, userPassword: String){
        let registrationViewControllerClass = RegistrationViewController()
        let modelRegistration = ModelRegistration()
        modelRegistration.registrationProcess(userEmail: userEmail, userPassword: userPassword) { success in
            if success {
                print("successful registration")
                registrationViewControllerClass.showAlert(title: "Поздравляем!", errorMessage: "Вы успешно зарегистрированы и залогинены")
                let mainVC = MainViewController()
                registrationVC.present(mainVC, animated: true, completion: nil)
            } else {
                print("not successful, try email - user@mail.ru")
                registrationViewControllerClass.showAlert(title: "Ошибка", errorMessage:  "Невозможно зарегистрировать данный email. Попробуйте использовать user@mail.ru")
            }
        }
        
    }
}
