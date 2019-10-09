//
//  CustomCellTableViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/9/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "CustomCellTableViewController.h"
#import "CustomCell.h"

@interface CustomCellTableViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CustomCellTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    CustomCell *cell1 = [[CustomCell alloc]init];
    cell1.strImg = @"google";
    cell1.strLb1 = @"Kim Sinh Moc";
    cell1.strLb2 = @"Google";
    
    CustomCell *cell2 = [[CustomCell alloc]init];
    cell2.strImg = @"facebook";
    cell2.strLb1 = @"Moc Sinh Thuy";
    cell2.strLb2 = @"Facebook";
    
    CustomCell *cell3 = [[CustomCell alloc]init];
    cell3.strImg = @"youtube";
    cell3.strLb1 = @"Thuy Sinh Hoa";
    cell3.strLb2 = @"Youtube";
    
    CustomCell *cell4 = [[CustomCell alloc]init];
    cell4.strImg = @"linkedin";
    cell4.strLb1 = @"Hoa Sinh Tho";
    cell4.strLb2 = @"Linkedin";
    
    CustomCell *cell5 = [[CustomCell alloc]init];
    cell5.strImg = @"twitter";
    cell5.strLb1 = @"Tho Sinh Kim";
    cell5.strLb2 = @"Twitter";
    
    _arrData = [[NSMutableArray alloc]initWithObjects:cell1,cell2,cell3,cell4,cell5, nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrData.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    CustomCell *mainCell = [_arrData objectAtIndex:indexPath.row];
    UIImageView *image = (UIImageView *)[cell viewWithTag:1];
    image.image = [UIImage imageNamed:mainCell.strImg];
    UILabel *lb1 = (UILabel *)[cell viewWithTag:2];
    lb1.text = mainCell.strLb1;
    UILabel *lb2 = (UILabel *)[cell viewWithTag:3];
    lb2.text = mainCell.strLb2;
    return cell;
}

@end
