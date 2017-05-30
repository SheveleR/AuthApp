//
//  LoginPresenter.h
//  AuthApp
//
//  Created by SheveleR on 19/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LoginViewController.h"
@interface LoginPresenter : NSObject

-(id)initWithLoginViewController:(LoginViewController*) viewCotroller;
- (void)loginWithEmail:(NSString*) email andPassword:(NSString*) password ;
- (void)registrationButtonClicked;

@end
