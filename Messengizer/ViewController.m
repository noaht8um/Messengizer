//
//  ViewController.m
//  Messengizer
//
//  Created by Noah Tatum on 4/8/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - View Management

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if ([FBSDKAccessToken currentAccessToken]) {
        // User is logged in, do work such as go to next view controller.
    }
    
    if ([FBSDKAccessToken currentAccessToken]) {
        [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
             /*NSDictionary *test = result;
             NSLog(@"%@", test);*/
             
             for
             
         }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
