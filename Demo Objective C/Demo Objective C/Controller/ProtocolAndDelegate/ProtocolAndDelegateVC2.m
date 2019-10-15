//
//  ProtocolAndDelegateVC2.m
//  Demo Objective C
//
//  Created by MT382 on 10/15/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "ProtocolAndDelegateVC2.h"

@interface ProtocolAndDelegateVC2 ()

@end

@implementation ProtocolAndDelegateVC2
@synthesize lastName,setup;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
    // simulator view appear
-(void)viewWillAppear:(BOOL)animated {
    [lastName resignFirstResponder];
    [self.setup setLastName:lastName.text]; // method setLastName lastName is set
}

- (IBAction)done:(id)sender {
    [lastName resignFirstResponder];
    [self.setup setLastName:lastName.text];
    [self.setup setBGColor:[UIColor lightGrayColor]];
    [self.setup setTextColor:[UIColor whiteColor]];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
