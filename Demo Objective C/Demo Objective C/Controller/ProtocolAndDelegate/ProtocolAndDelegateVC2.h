//
//  ProtocolAndDelegateVC2.h
//  Demo Objective C
//
//  Created by MT382 on 10/15/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol SetupProperty <NSObject>

-(void)setLastName: (NSString *) lastName;
-(void)setBGColor:(UIColor *) bgColor;
-(void)setTextColor: (UIColor *) textCOlor;

@end

@interface ProtocolAndDelegateVC2 : UIViewController
@property (retain, nonatomic) id<SetupProperty> setup;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
- (IBAction)done:(id)sender;

@end

NS_ASSUME_NONNULL_END
