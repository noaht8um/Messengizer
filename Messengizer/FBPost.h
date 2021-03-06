//
//  FBPost.h
//  Messengizer
//
//  Created by Noah Tatum on 4/14/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import "CommonMethods.h"

@interface FBPost : NSObject

+ (void)FBPostMessage:(NSString *)postMessage;
+ (void)FBUploadPhoto:(UIImage *)uploadImage :(NSString *)postMessage;
    
@end
