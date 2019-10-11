//
//  FacebookIntegrationViewController.h
//  Demo Objective C
//
//  Created by MT382 on 10/11/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FacebookIntegrationViewController : UIViewController
    @property (weak, nonatomic) IBOutlet FBSDKLoginButton *loginButton;
@end

NS_ASSUME_NONNULL_END
