//
//  ProtocolAndDelegateViewController.h
//  Demo Objective C
//
//  Created by MT382 on 10/15/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProtocolAndDelegateVC2.h"
NS_ASSUME_NONNULL_BEGIN

@interface ProtocolAndDelegateViewController : UIViewController<SetupProperty>
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *fullName;

@end

NS_ASSUME_NONNULL_END
