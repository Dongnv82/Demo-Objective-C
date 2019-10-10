//
//  SegmentViewController.h
//  Demo Objective C
//
//  Created by MT382 on 10/10/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SegmentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
- (IBAction)segmentControl:(UISegmentedControl *)sender;

@end

NS_ASSUME_NONNULL_END
