//
//  TimerViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/7/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "TimerViewController.h"

@interface TimerViewController () {
    NSTimer *timer;
    int sec,min,hr;
}

@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated {
    sec = 0;
    min = 0;
    hr = 0;
}

-(void)timeFunc {
    NSLog(@"timer func is working");
    if (sec < 59) {
        sec++;
    }else{
        sec = 0;
        min++;
    }
    if (min == 60) {
        min++;
        hr++;
    }
    _timeLabel.text = [NSString stringWithFormat:@"%d:%d %d",sec,min,hr];
}

- (IBAction)startAction:(id)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timeFunc) userInfo:nil repeats:YES];
}

- (IBAction)pauseAction:(id)sender{
    [timer invalidate];
}

- (IBAction)resumeAction:(id)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timeFunc) userInfo:nil repeats:YES];
}
@end
