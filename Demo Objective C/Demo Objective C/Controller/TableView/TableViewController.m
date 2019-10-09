//
//  TableViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/9/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
@synthesize arrName,arrSurName;
- (void)viewDidLoad {
    [super viewDidLoad];
    arrName = [[NSMutableArray alloc]initWithObjects:@"Tung",@"Thao",@"Dong",@"Thanh",@"Hoan", nil];
    arrSurName = [[NSMutableArray alloc]initWithObjects:@"Hoang",@"Thu",@"Van",@"Nguyen",@"Pham", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrName.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [arrName objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [arrSurName objectAtIndex:indexPath.row];
    return cell;
}

@end
