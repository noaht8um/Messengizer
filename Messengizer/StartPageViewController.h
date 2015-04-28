//
//  StartPageViewController.h
//  Messengizer
//
//  Created by Philip Nevill on 4/22/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <TwitterKit/TwitterKit.h>
#import "FBPost.h"
#import "FBGet.h"
#import "TwitterPost.h"

@interface StartPageViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

//Noah Stuff
@property (weak, nonatomic) IBOutlet UITextField *postField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
//

- (IBAction)takePhoto:  (UIButton *)sender;
- (IBAction)choosePhoto:(UIButton *)sender;


@end
