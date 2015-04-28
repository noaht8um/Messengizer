//
//  TwitterPost.h
//  Messengizer
//
//  Created by Noah Tatum on 4/15/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <TwitterKit/TwitterKit.h>
#import "StartPageViewController.h"

@interface TwitterPost : NSObject

+ (void)twitterPostMessage:(NSString *)postMessage;
+ (NSString *)twitterUploadImage:(UIImage  *)imageToPost;
+ (void)twitterPostMessageWithImage:(NSString *)postMessage;

@end
