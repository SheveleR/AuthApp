//
//  MainViewController.m
//  AuthApp
//
//  Created by SheveleR on 18/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import "MainViewController.h"
#import "LoginViewController.h"
#import "MainPresenter.h"
#import "ImageFactory.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"[MainViewController] View did load");
    [self createBackground];
    [self createLogoutButton];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)createBackground {
    UIImage *image = [ImageFactory createImageWithPathForResource:@"bg" ofType:@"png" inDirectory:@"images"];
    
    self.background = [[UIImageView alloc] initWithImage:image];
    self.background.frame = CGRectMake(0, 30, 400, 450);
    [self.view addSubview:self.background];
}

- (void)createLogoutButton {
    
    UIImage *image = [ImageFactory createImageWithPathForResource:@"logout_button" ofType:@"png" inDirectory:@"images"];
    
    self.btnLogout = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.btnLogout setImage:image forState:UIControlStateNormal];
    self.btnLogout.frame = CGRectMake(25, 25, image.size.width, image.size.height);
    [self.btnLogout addTarget:self action:@selector(logoutButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btnLogout];
}

- (void)logoutButtonClicked:(id)sender {
    MainPresenter *mainPresenter = [[MainPresenter alloc] init];
    [mainPresenter logoutButtonClicked:self];
}

@end
