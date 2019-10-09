//
//  SecondViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/7/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *result;
- (IBAction)alertAction:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@ /n /n /n ",_str);
}

- (IBAction)alertAction:(id)sender {
    UIAlertView *alert =[[UIAlertView alloc]initWithTitle:@"Alert" message:@"this is show message" delegate:self cancelButtonTitle:@"Cancle" otherButtonTitles:@"action1",@"action2", nil];
    [alert show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        //Cancle
        NSLog(@"cancle");
    }else if (buttonIndex == 1) {
        //action1
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com"]];
    }
}
@end
