//
//  FBPost.m
//  Messengizer
//
//  Created by Noah Tatum on 4/14/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import "FBPost.h"

@implementation FBPost

+ (void)FBPostMessage:(NSString *)postMessage {
    if ([[FBSDKAccessToken currentAccessToken] hasGranted:@"publish_actions"]) {
        [[[FBSDKGraphRequest alloc]
          initWithGraphPath:@"me/feed"
          parameters: @{ @"message" : postMessage}
          HTTPMethod:@"POST"]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
             if (!error) {
                 NSLog(@"Post id:%@", result[@"id"]);
             }
         }];
    }
}


@end