//
//  SliderViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/9/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "SliderViewController.h"

@interface SliderViewController ()
@property (weak, nonatomic) IBOutlet UISlider *s1;
@property (weak, nonatomic) IBOutlet UISlider *s2;
@property (weak, nonatomic) IBOutlet UISlider *s3;
- (IBAction)action:(UISlider *)sender;

@end

@implementation SliderViewController
@synthesize s1, s2, s3;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 350, 120, 50)];
    label.text = @"The test Slider and label";
    label.textColor = [UIColor colorWithRed:s1.value green:s2.value blue:s3.value alpha:1];
    label.backgroundColor = [UIColor whiteColor];
    label.numberOfLines = 1;
    label.textAlignment = NSTextAlignmentCenter;
    [label.layer setBorderWidth:1.0f];
    [label.layer setBorderColor:[UIColor blueColor].CGColor];
    [label.layer setCornerRadius:15];
//    label.highlighted = YES;
//    label.highlightedTextColor = [UIColor blackColor];
//    [label.layer setBackgroundColor:[UIColor grayColor].CGColor];
    label.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    label.font = [UIFont systemFontOfSize:21];
    label.minimumScaleFactor = 8;
    label.adjustsFontSizeToFitWidth = YES;
    [self.view addSubview:label];
}

- (IBAction)action:(UISlider *)sender {
    self.view.backgroundColor = [UIColor colorWithRed:s1.value green:s2.value blue:s3.value alpha:1];
}
@end
