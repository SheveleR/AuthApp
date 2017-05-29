//
//  LoginPresenter.m
//  AuthApp
//
//  Created by SheveleR on 19/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import "LoginPresenter.h"
#import "AuthApp-Swift.h"
#import "LoginViewController.h"
#import "MainViewController.h"
#import "ModelLogin.h"

@interface LoginPresenter ()

@end

@implementation LoginPresenter
#define defaultEmail @"Admin"
#define defaultPassword @"Admin"



-(void)loginButtonClicked:(UIViewController*) viewController withEmail:(NSString*) email andPassword:(NSString*) password {
    LoginViewController *loginVC = [[LoginViewController alloc] init];
    if ([email length] != 0 && [password length] != 0) {
        ModelLogin *modelLogin = [[ModelLogin alloc] init];
        [modelLogin loginUser:email andPassword:password completion:^(BOOL success, id response, NSError *error) {
            if (success)
            {
                NSLog(@"Working");
                
                MainViewController *mainVC = [[MainViewController alloc] init];
                [viewController presentViewController:mainVC animated:YES completion:nil];
            }
            else
            {
                [loginVC showAlert:@"Ошибка" withmessage:@"Данный пользователь не существует"];
            }
        }];
    }else {
        [loginVC showAlert:@"Ошибка" withmessage:@"Заполните требуемые поля!"];
    }
}

-(void)registrationButtonClicked:(UIViewController*) viewController{
    RegistrationViewController *registrationVC = [[RegistrationViewController alloc] initWithNibName:@"RegistrationViewController" bundle:nil];
    [viewController presentViewController:registrationVC animated:YES completion:nil];
    
}
@end
