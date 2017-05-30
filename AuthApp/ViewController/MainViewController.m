//
//  MainViewController.m
//  AuthApp
//
//  Created by SheveleR on 18/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import "MainViewController.h"
#import "MainPresenter.h"
#import "ImageFactory.h"

@interface MainViewController ()
@property (nonatomic, strong) MainPresenter *mainPresenter;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mainPresenter = [[MainPresenter alloc] initWithMainViewController:self];
    [self createBackground];
    [self createLogoutButton];
    
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
    [self.mainPresenter logoutButtonClicked];
}

@end
