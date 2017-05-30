//
//  RegisterPresenter.swift
//  AuthApp
//
//  Created by SheveleR on 23/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

import Foundation
import Alamofire

class RegisterPresenter{
    fileprivate let modelRegistration:ModelRegistration
    weak fileprivate var viewController:RegistrationViewController?
    
    init(viewController:RegistrationViewController){
        self.viewController = viewController
        self.modelRegistration = ModelRegistration()
    }
    func registerButtonClicked(userEmail: String, userPassword: String){
        self.modelRegistration.registrationProcess(userEmail: userEmail, userPassword: userPassword) { success in
            if success {
                print("successful registration")
                self.viewController?.showAlert(title: "Поздравляем!", errorMessage: "Вы успешно зарегистрированы и залогинены")
                let mainVC = MainViewController()
                self.viewController?.present(mainVC, animated: true, completion: nil)
            } else {
                print("not successful, try email - user@mail.ru")
                self.viewController?.showAlert(title: "Ошибка", errorMessage:  "Невозможно зарегистрировать данный email. Попробуйте использовать user@mail.ru")
            }
        }
        
    }
}
