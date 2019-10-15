//
//  ProtocolAndDelegateViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/15/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "ProtocolAndDelegateViewController.h"

@interface ProtocolAndDelegateViewController ()

@end

@implementation ProtocolAndDelegateViewController
@synthesize firstName,fullName;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [firstName resignFirstResponder];
}

-(void)setLastName:(NSString *)lastName {
    NSString *mainStr = [NSString stringWithFormat:@"%@ %@",firstName.text,lastName];
    fullName.text = mainStr;
}

-(void)setTextColor:(UIColor *)textCOlor {
    fullName.textColor = textCOlor;
}

-(void)setBGColor:(UIColor *)bgColor {
    fullName.backgroundColor = bgColor;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ProtocolAndDelegateVC2 *vc = [segue destinationViewController];
    vc.setup = self;
}

@end
