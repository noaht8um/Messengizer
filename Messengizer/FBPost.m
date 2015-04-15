//
//  FBPost.m
//  Messengizer
//
//  Created by Noah Tatum on 4/14/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import "FBPost.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@implementation FBPost

+ (void)FBPostMessage {
    if ([FBSDKAccessToken currentAccessToken]) {
        //Access Graph API
        [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
             NSLog(@"%@", result);
         }];
    }
}


@end
