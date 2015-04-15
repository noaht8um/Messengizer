//
//  FBGet.m
//  Messengizer
//
//  Created by Noah Tatum on 4/14/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import "FBGet.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>


@implementation FBGet

+ (void)FBGetInfo {
    if ([FBSDKAccessToken currentAccessToken]) {
        //Access Graph API
        [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
             //NSLog(@"%@", result[@"name"]);
             NSLog(@"%@", result);
             //NSLog(@"Your name is" + result[@"name"]);
             //NSString *usrName = result[@"name"];
             
         }];
    }
}

@end
