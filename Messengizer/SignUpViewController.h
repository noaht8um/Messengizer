//
//  SignUpViewController.h
//  Messengizer
//
//  Created by Philip Nevill on 4/28/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtFirstname;
@property (weak, nonatomic) IBOutlet UITextField *txtLastname;
@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;


- (IBAction)saveInfo:(id)sender;

@end
