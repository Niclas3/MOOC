//
//  SignUpViewController.m
//  mooc
//
//  Created by Niclas on 15-4-7.
//  Copyright (c) 2015年 Ivan. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;


@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_passWord setSecureTextEntry:YES];
    // Do any additional setup after loading the view.
    
}
- (IBAction)pressedButton:(id)sender {
    
    AVUser *user = [AVUser user];
    user.username = _userName.text;
    user.password = _passWord.text;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error)
    {
         if (succeeded) {
             NSLog(@"succeed");
         }
         else
         {
             
         }
     }];
    
    NSLog(@"some things done");
    
    
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
