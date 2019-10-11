//
//  SideBarMenuViewController.h
//  Demo Objective C
//
//  Created by MT382 on 10/11/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SideBarMenuViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
- (IBAction)menuAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *sideView;
@property (weak, nonatomic) IBOutlet UITableView *sideBar;
@property (strong, nonatomic) NSMutableArray *arrData;
@end

NS_ASSUME_NONNULL_END
