//
//  MainPresenter.m
//  AuthApp
//
//  Created by SheveleR on 25/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import "MainPresenter.h"
#import "LoginViewController.h"
#import "MainViewController.h"
#import "ModelMain.h"
@interface MainPresenter ()
@property (nonatomic, weak) MainViewController *mainViewController;
@property (nonatomic, strong) ModelMain *modelMain;
@end

@implementation MainPresenter
-(id)initWithMainViewController:(MainViewController*) viewCotroller{
    
    if (self = [super init]) {
        _mainViewController = viewCotroller;
        _modelMain = [[ModelMain alloc]init];
    }
    return self;
}
- (void)logoutButtonClicked{
    LoginViewController *loginVC = [[LoginViewController alloc] init];
    [_mainViewController presentViewController:loginVC animated:YES completion:nil];
}

@end
