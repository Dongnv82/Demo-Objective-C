//
//  ViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/7/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textOne;
@property (weak, nonatomic) IBOutlet UITextField *textTwo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"1st view is loaded");
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segue1"]) {
        NSLog(@"this method is called before the sugue is executed");
        SecondViewController *vc = segue.destinationViewController;
        vc.str = @"set the value";
    }
}

-(IBAction)action:(id)sender {
    [self performSegueWithIdentifier:@"segue1" sender:self];
    NSLog(@"start action");
}

@end
