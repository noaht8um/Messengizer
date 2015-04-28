//
//  StartPageViewController.m
//  Messengizer
//
//  Created by Philip Nevill on 4/22/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import "StartPageViewController.h"
#import "SWRevealViewController.h"

@interface StartPageViewController ()

@end

@implementation StartPageViewController

- (IBAction)postButton:(id)sender {
    
    if (self.imageView.image) {
        [FBPost FBUploadPhoto:self.imageView.image];
        
        [TwitterPost twitterUploadImage:self.imageView.image];
        [TwitterPost twitterPostMessageWithImage:self.postField.text];
    }
    else {
        //post message to facebook from postField
        [FBPost FBPostMessage:self.postField.text];
        
        //post message to twitter from postField
        [TwitterPost twitterPostMessage:self.postField.text];
    }
    
    //clear postField
    self.postField.text = @"";
}

//start imagepicker

- (IBAction)takePhoto:(UIButton *)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
}

- (IBAction)choosePhoto:(UIButton *)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageView.image = chosenImage;
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

//end imagepicker



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Profile";
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
    
    
    //Noah Stuff-----
    
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                              message:@"Device has no camera"
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles: nil];
        
        [myAlertView show];
    }
    //------
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
