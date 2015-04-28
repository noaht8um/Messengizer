//
//  MainViewController.h
//  Messengizer
//
//  Created by Noah Tatum on 4/8/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <TwitterKit/TwitterKit.h>
#import "FBPost.h"
#import "FBGet.h"
#import "TwitterPost.h"

@class MainViewController;

@protocol MainViewControllerDelegate <NSObject>

- (void)sendFrom:(MainViewController *)controller
           image:(UIImage *)image;
@end

@interface MainViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *postField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:  (UIButton *)sender;
- (IBAction)choosePhoto:(UIButton *)sender;

@end
