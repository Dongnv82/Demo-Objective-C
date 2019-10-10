//
//  LocalNotificationViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/10/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "LocalNotificationViewController.h"

@interface LocalNotificationViewController () {
    BOOL isGrantedNotificationAccess;
}

@end

@implementation LocalNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    isGrantedNotificationAccess = false;
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    UNAuthorizationOptions options = UNAuthorizationOptionAlert + UNAuthorizationOptionSound;
    [center requestAuthorizationWithOptions:options completionHandler:^(BOOL granted, NSError * _Nullable error){
        isGrantedNotificationAccess = granted;
    }];
    // Do any additional setup after loading the view.
}

- (IBAction)action:(id)sender {
    if (isGrantedNotificationAccess) {
        UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
        UNMutableNotificationContent *mucontent = [[UNMutableNotificationContent alloc]init];
        mucontent.title = @"Notification Title";
        mucontent.subtitle = @"Notification Subtitle";
        mucontent.body = @"notification body";
        mucontent.sound = [UNNotificationSound defaultSound];
        
        UNTimeIntervalNotificationTrigger *trigger = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:3 repeats:NO];
        UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:@"LocalNotification" content:mucontent trigger:trigger];
        [center addNotificationRequest:request withCompletionHandler:nil];
    }
}
@end
