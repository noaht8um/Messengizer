//
//  SignUpViewController.m
//  Messengizer
//
//  Created by Philip Nevill on 4/28/15.
//  Copyright (c) 2015 NPL Technology. All rights reserved.
//

#import "SignUpViewController.h"
#import "DBManager.h"

@interface SignUpViewController ()

@property (nonatomic, strong) DBManager *dbManager;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.txtFirstname.delegate = self;
    self.txtLastname.delegate = self;
    self.txtUsername.delegate = self;
    self.txtPassword.delegate = self;
    
    self.dbManager = [[DBManager alloc] initWithDatabaseFilename:@"messengizer.sql"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)saveInfo:(id)sender {
    // Prepare the query string.
    NSString *query = [NSString stringWithFormat:@"insert into accntInfo values(null, '%@', '%@', '%@', '%@')", self.txtFirstname.text, self.txtLastname.text, self.txtUsername.text, self.txtPassword.text];
    
    // Execute the query.
    [self.dbManager executeQuery:query];
    
    // If the query was successfully executed then pop the view controller.
    if (self.dbManager.affectedRows != 0) {
        NSLog(@"Query was executed successfully. Affected rows = %d", self.dbManager.affectedRows);
    }
    else{
        NSLog(@"Could not execute the query.");
    }
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
