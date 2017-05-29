//
//  LoginPresenter.h
//  AuthApp
//
//  Created by SheveleR on 19/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LoginPresenter : NSObject

@property (nonatomic, strong) NSString *login;
@property (nonatomic, strong) NSString *password;

- (void)loginButtonClicked:(UIViewController*) viewController withEmail:(NSString*) email andPassword:(NSString*) password ;
- (void)registrationButtonClicked:(UIViewController*) viewController;

@end
