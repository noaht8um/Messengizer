//
//  MainViewController.m
//  Messengizer
//
//  Created by Noah Tatum on 4/8/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import "MainViewController.h"
#import "FBPost.h"
#import "FBGet.h"

@interface MainViewController ()

@end


@implementation MainViewController
- (IBAction)postButton:(id)sender {
    //post message to facebook from postField
    [FBPost FBPostMessage:self.postField.text];
    //clear postField
    self.postField.text = @"";
}

- (IBAction)getButton:(id)sender {
    [FBGet FBGetInfo];
}


- (void)viewDidLoad
{
    /*STTwitterAPI *testTwitter = [STTwitterAPI twitterAPIAppOnlyWithConsumerKey:@"4FT4CfP4VfMF0x3Ddor4h3R6S"
                                                        consumerSecret:@"XSOMkMKc1XdpMBwhQfl55GyblmSgVAqQS3zV3wvRjVPAmRXkt0"];
    
    [testTwitter verifyCredentialsWithUserSuccessBlock:^(NSString *username, NSString *userID) {
        
        [testTwitter getUserTimelineWithScreenName:@"noaht8um"
                                  successBlock:^(NSArray *statuses) {
                                      // ...
                                  } errorBlock:^(NSError *error) {
                                      // ...
                                  }];
        
    } errorBlock:^(NSError *error) {
        // ...
    }];*/
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
