//
//  MainPresenter.h
//  AuthApp
//
//  Created by SheveleR on 25/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface MainPresenter : NSObject
- (id)initWithMainViewController:(MainViewController*) viewCotroller;
- (void)logoutButtonClicked;

@end
