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
