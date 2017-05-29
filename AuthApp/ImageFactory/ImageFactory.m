//
//  ImageFactory.m
//  AuthApp
//
//  Created by SheveleR on 21/05/2017.
//  Copyright © 2017 SheveleR. All rights reserved.
//

#import "ImageFactory.h"

@implementation ImageFactory

+ (UIImage *)createImageWithPathForResource:(NSString *)path ofType:(NSString *)type {
    
    return [self createImageWithPathForResource:path ofType:type inDirectory:nil];
    
}

+ (UIImage *)createImageWithPathForResource:(NSString *)path ofType:(NSString *)type inDirectory:(NSString *)directory{
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:path ofType:type inDirectory:directory];
    
    return [UIImage imageWithContentsOfFile:filePath];
}

@end

