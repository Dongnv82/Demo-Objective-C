//
//  ExpandingCell.h
//  Demo Objective C
//
//  Created by MT382 on 10/11/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExpandingCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *rowTitle;
@property (weak, nonatomic) IBOutlet UILabel *rowDetail;
@property (weak, nonatomic) IBOutlet UILabel *fruitTitle;
@property (weak, nonatomic) IBOutlet UILabel *fruitDetail;
@property (weak, nonatomic) IBOutlet UILabel *calTitle;
@property (weak, nonatomic) IBOutlet UILabel *calDetail;

@end

NS_ASSUME_NONNULL_END
