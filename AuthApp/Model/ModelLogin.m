//
//  ModelLogin.m
//  AuthApp
//
//  Created by SheveleR on 27/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import "ModelLogin.h"
#import "AFNetworking.h"

@implementation ModelLogin

- (void) loginUser:(NSString *) userEmail andPassword:(NSString *) userPassword completion:(void(^)(BOOL success, id response, NSError *error))completion {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:@"http://localhost:4567/default.json" parameters:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
        if ([responseObject isKindOfClass:[NSDictionary class]] && [[responseObject objectForKey:@"email"] isEqualToString:userEmail] && [[responseObject objectForKey:@"email"] isEqualToString:userPassword])
        {
            
            NSLog(@"Response: %@", responseObject);
            
            if (completion) //if completion is NULL, calling it will crash your app so we always check that it is present.
            {
                completion(YES, responseObject, nil);
            }
        }
        else{
            completion(NO, nil, nil);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        NSLog(@"Error: %@", error);
        
        if (completion)
        {
            completion(NO, nil, error);
        }
        
    }];
}
@end
