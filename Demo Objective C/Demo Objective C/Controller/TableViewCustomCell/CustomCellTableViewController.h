//
//  CustomCellTableViewController.h
//  Demo Objective C
//
//  Created by MT382 on 10/9/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellTableViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property(strong, nonatomic) NSMutableArray *arrData;

@end
