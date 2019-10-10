//
//  PickerViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/10/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "PickerViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController
@synthesize arrData,arrNumber,textField1,textField2;
- (void)viewDidLoad {
    [super viewDidLoad];
    arrData = [[NSMutableArray alloc]initWithObjects:@"google",@"facebook",@"youtube",@"linkedin",@"twitter",@"google",@"facebook",@"youtube",@"linkedin",@"twitter", nil];
    arrNumber = [[NSMutableArray alloc]initWithObjects:@"01",@"02",@"03",@"04",@"05",@"06",@"07",@"08",@"09",@"10", nil];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return arrData.count;
    }
    if (component == 1) {
        return arrNumber.count;
    }
    return component;
//    return arrData.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == 0) {
        return [arrData objectAtIndex:row];
    }
    if (component == 1) {
        return [arrNumber objectAtIndex:row];
    }
    return 0;
//    return [arrData objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0) {
        self.textField1.text = [arrData objectAtIndex:row];
    }
    if (component == 1) {
        self.textField2.text = [arrNumber objectAtIndex:row];
    }
}
@end
