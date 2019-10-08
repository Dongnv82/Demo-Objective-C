//
//  TimerViewController.h
//  Demo Objective C
//
//  Created by MT382 on 10/7/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TimerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
- (IBAction)startAction:(id)sender;
- (IBAction)pauseAction:(id)sender;
- (IBAction)resumeAction:(id)sender;


@end

NS_ASSUME_NONNULL_END
