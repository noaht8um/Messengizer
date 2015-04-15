//
//  AddFBViewController.h
//  Messengizer
//
//  Created by Noah Tatum on 4/14/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface AddFBViewController : UIViewController

@property (weak, nonatomic) IBOutlet FBSDKLoginButton *FBLoginButton;
@property (weak, nonatomic) IBOutlet UISwitch *PostPrivilegeSwitch;

@end
