//
//  TableViewController.h
//  Demo Objective C
//
//  Created by MT382 on 10/9/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong,nonatomic) NSMutableArray *arrName;
@property (strong,nonatomic) NSMutableArray *arrSurName;

@end
