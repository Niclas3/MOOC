//
//  LoginViewController.m
//  mooc
//
//  Created by Niclas on 15-4-7.
//  Copyright (c) 2015年 Ivan. All rights reserved.
//

#import "LoginViewController.h"
#import <AVOSCloud/AVOSCloud.h>

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usrName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)pressedButton:(id)sender {
    
    [AVUser logInWithUsernameInBackground:self.usrName.text password:self.passWord.text block:^(AVUser *user, NSError *error){
        if (user != nil) {
            NSLog(@"%@, %@", user.password, user.username);
            
        } else {
            
        
        }
    }];
    
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
