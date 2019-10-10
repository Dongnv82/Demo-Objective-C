//
//  PickerViewController.h
//  Demo Objective C
//
//  Created by MT382 on 10/10/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PickerViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (strong, nonatomic) NSMutableArray *arrData;
@property (strong, nonatomic) NSMutableArray *arrNumber;
@end

NS_ASSUME_NONNULL_END
