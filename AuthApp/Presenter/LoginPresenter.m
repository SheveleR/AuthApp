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
@property (nonatomic, weak) LoginViewController *loginViewController;
@property (nonatomic, strong) ModelLogin *modelLogin;
@end

@implementation LoginPresenter
#define defaultEmail @"Admin"
#define defaultPassword @"Admin"
-(id)initWithLoginViewController:(LoginViewController*) viewCotroller{
    
    if (self = [super init]) {
        _loginViewController = viewCotroller;
        _modelLogin = [[ModelLogin alloc]init];
    }
    
    return self;
}
-(void)loginWithEmail:(NSString*) email andPassword:(NSString*) password {
    
    if ([email length] != 0 && [password length] != 0) {
        [_modelLogin loginUser:email andPassword:password completion:^(BOOL success, id response, NSError *error) {
            if (success)
            {
                MainViewController *mainVC = [[MainViewController alloc] init];
                [_loginViewController presentViewController:mainVC animated:YES completion:nil];
            }
            else
            {
                [_loginViewController showAlert:@"Ошибка" withmessage:@"Данный пользователь не существует"];
            }
        }];
    }else {
        [_loginViewController showAlert:@"Ошибка" withmessage:@"Заполните требуемые поля!"];
    }
}

-(void)registrationButtonClicked{
    
    RegistrationViewController *registrationVC = [[RegistrationViewController alloc] initWithNibName:@"RegistrationViewController" bundle:nil];
    [_loginViewController presentViewController:registrationVC animated:YES completion:nil];
}
@end
