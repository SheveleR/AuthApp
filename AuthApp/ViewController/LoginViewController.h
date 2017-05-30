//
//  LoginViewController.h
//  AuthApp
//
//  Created by SheveleR on 21/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (nonatomic, strong) UIImageView *background;
@property (nonatomic, strong) UITextField *txtEmail;
@property (nonatomic, strong) UITextField *txtPassword;
@property (nonatomic, strong) UIButton *btnLogin;
@property (nonatomic, strong) UIButton *btnRegister;

- (void)showAlert:(NSString *) title withmessage:(NSString *) message;

@end
