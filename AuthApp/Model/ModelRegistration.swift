//
//  ModelRegistration.swift
//  AuthApp
//
//  Created by SheveleR on 27/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

import UIKit
import Alamofire

class ModelRegistration: NSObject {
    
    func registrationProcess(userEmail: String, userPassword: String, completion:@escaping (Bool) -> ()){
        Alamofire.request("http://localhost:4567/registration").responseJSON { response in
            if let JSON = response.result.value as? [String : Any]{
                if JSON["email"] as? String == userEmail{
                    completion(true)
                }else {
                    completion(false)
                }
            }
        }
    }
}


