//
//  MainPresenter.m
//  AuthApp
//
//  Created by SheveleR on 25/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import "MainPresenter.h"
#import "LoginViewController.h"

@implementation MainPresenter

- (void)logoutButtonClicked:(UIViewController *) viewController {
    LoginViewController *loginVC = [[LoginViewController alloc] initWithNibName:nil bundle:nil];
    [viewController presentViewController:loginVC animated:YES completion:nil];
}

@end
