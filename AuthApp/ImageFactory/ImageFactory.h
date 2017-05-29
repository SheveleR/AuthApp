//
//  ImageFactory.h
//  AuthApp
//
//  Created by SheveleR on 21/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageFactory : NSObject

+ (UIImage *)createImageWithPathForResource:(NSString *)path ofType:(NSString *)type;
+ (UIImage *)createImageWithPathForResource:(NSString *)path ofType:(NSString *)type inDirectory:(NSString *)directory;

@end
