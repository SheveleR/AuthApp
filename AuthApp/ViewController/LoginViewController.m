//
//  LoginViewController.m
//  AuthApp
//
//  Created by SheveleR on 21/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginPresenter.h"
#import "ImageFactory.h"
#import "WPSAlertController.h"

@interface LoginViewController ()
@property (nonatomic, strong) LoginPresenter *presenter;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.presenter = [[LoginPresenter alloc] initWithLoginViewController:self];
    self.view.backgroundColor = [UIColor colorWithRed:62/255.0 green:69/255.0 blue:76/255.0 alpha:1];
    [self createBackground];
    [self createUsernameTextField];
    [self createPasswordTextField];
    [self createLoginButton];
    [self createRegisterButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be
}

#pragma mark - uiCreation
- (void)createBackground {
    UIImage *image = [ImageFactory createImageWithPathForResource:@"login_frame_background" ofType:@"png" inDirectory:@"images"];
    
    self.background = [[UIImageView alloc] initWithImage:image];
    self.background.frame = CGRectMake(15, 20, image.size.width, image.size.height);
    [self.view addSubview:self.background];
}

- (void)createUsernameTextField {
    self.txtEmail = [[UITextField alloc] initWithFrame:CGRectMake(35, 80, 250, 30)];
    self.txtEmail.placeholder = @"e-mail";
    [self.txtEmail addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    [self.view addSubview:self.txtEmail];
}

- (void)createPasswordTextField {
    self.txtPassword = [[UITextField alloc] initWithFrame:CGRectMake(35, 125, 250, 30)];
    self.txtPassword.secureTextEntry = YES;
    self.txtPassword.placeholder = @"Пароль";
    [self.txtPassword addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    [self.view addSubview:self.txtPassword];
}

- (void)createLoginButton {
    UIImage *image = [ImageFactory createImageWithPathForResource:@"login_button" ofType:@"png" inDirectory:@"images"];
    
    self.btnLogin = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnLogin.frame = CGRectMake(30, 165, image.size.width, image.size.height);
    [self.btnLogin setBackgroundImage:image forState:UIControlStateNormal];
    [self.btnLogin addTarget:self action:@selector(loginButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btnLogin];
    self.btnLogin.enabled = NO;
}

- (void)createRegisterButton {
    UIImage *image = [ImageFactory createImageWithPathForResource:@"register_button" ofType:@"png" inDirectory:@"images"];
    
    self.btnRegister = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btnRegister.frame = CGRectMake(30, 230, 270, 47);
    [self.btnRegister setBackgroundImage:image forState:UIControlStateNormal];
    [self.btnRegister addTarget:self action:@selector(registrationButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btnRegister];
}
#pragma mark - userInteractions
- (void) textFieldDidChange:(UITextField *) emailTxtField {
    self.btnLogin.enabled = YES;
}
- (void)loginButtonClicked:(id)sender {
    [self.presenter loginWithEmail:self.txtEmail.text andPassword: self.txtPassword.text];
}

- (void)registrationButtonClicked:(id)sender {
    [self.presenter registrationButtonClicked];
}

- (void)showAlert:(NSString *) title withmessage:(NSString *) message {
    WPSAlertController *alertController = [WPSAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [alertController show];
}

@end
