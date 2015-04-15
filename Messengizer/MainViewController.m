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
    [FBPost FBPostMessage:self.postField.text];
    
}

- (IBAction)getButton:(id)sender {
    [FBGet FBGetInfo];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
