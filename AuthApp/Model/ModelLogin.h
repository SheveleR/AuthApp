//
//  ModelLogin.h
//  AuthApp
//
//  Created by SheveleR on 27/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginPresenter.h"

@interface ModelLogin : NSObject
- (void) loginUser:(NSString *) userEmail andPassword:(NSString *) userPassword completion:(void(^)(BOOL success, id response, NSError *error))completion ;
@end
