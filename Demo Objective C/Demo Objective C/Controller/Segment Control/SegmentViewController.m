//
//  SegmentViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/10/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "SegmentViewController.h"

@interface SegmentViewController ()

@end

@implementation SegmentViewController
@synthesize segment,imgView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)segmentControl:(UISegmentedControl *)sender {
    switch (self.segment.selectedSegmentIndex) {
        case 0:
            self.imgView.image = [UIImage imageNamed:@"google"];
            break;
        case 1:
            self.imgView.image = [UIImage imageNamed:@"facebook"];
            break;
        case 2:
            self.imgView.image = [UIImage imageNamed:@"youtube"];
            break;
        case 3:
            self.imgView.image = [UIImage imageNamed:@"twitter"];
            break;
        default:
            break;
    }
}
@end
