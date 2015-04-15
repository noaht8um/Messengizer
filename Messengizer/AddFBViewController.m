//
//  AddFBViewController.m
//  Messengizer
//
//  Created by Noah Tatum on 4/14/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import "AddFBViewController.h"


@interface AddFBViewController ()

-(void)PostPrivilegeCheck;

@end

@implementation AddFBViewController
- (IBAction)PostPrivilegeSwitch:(id)sender {
    if ([self.PostPrivilegeSwitch isOn]) {
        NSLog(@"Turning On");
        FBSDKLoginManager *loginManager = [[FBSDKLoginManager alloc] init];
        [loginManager logInWithPublishPermissions:@[@"publish_actions"]
                                          handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
    
        }];
    }
    else {
        [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me/permissions/publish_actions"
                                           parameters:nil
                                           HTTPMethod:@"DELETE"]
         startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
         }];
        NSLog(@"Turning Off");
    }
}


-(void)PostPrivilegeCheck {
    if ([[FBSDKAccessToken currentAccessToken] hasGranted:@"publish_actions"]) {
        //Flip Button on
        [self.PostPrivilegeSwitch setOn:YES];
        NSLog(@"ON");
    }
    else {
        //Flip Button off
        [self.PostPrivilegeSwitch setOn:NO];
        NSLog(@"OFF");
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([FBSDKAccessToken currentAccessToken]) {
        self.PostPrivilegeSwitch.enabled = YES;
    }
    else {
        self.PostPrivilegeSwitch.enabled = NO;
    }
    
    self.FBLoginButton.readPermissions = @[@"public_profile"];
    
    [self PostPrivilegeCheck];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
