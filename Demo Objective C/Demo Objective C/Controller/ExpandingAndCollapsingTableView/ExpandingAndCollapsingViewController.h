//
//  ExpandingAndCollapsingViewController.h
//  Demo Objective C
//
//  Created by MT382 on 10/11/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExpandingAndCollapsingViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *arrRow;
@property (strong, nonatomic) NSMutableArray *arrTitle;
@property (strong, nonatomic) NSMutableArray *arrFruit;
@property int selectedIndex;
@end

NS_ASSUME_NONNULL_END
