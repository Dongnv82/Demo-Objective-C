//
//  ExpandingAndCollapsingViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/11/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "ExpandingAndCollapsingViewController.h"
#import "ExpandingCell.h"

@interface ExpandingAndCollapsingViewController ()

@end

@implementation ExpandingAndCollapsingViewController
@synthesize arrRow,arrFruit,arrTitle,selectedIndex;
- (void)viewDidLoad {
    [super viewDidLoad];
    selectedIndex = -1;
    arrRow = [[NSMutableArray alloc]init];
    for (int i = 1; i <= 5; i++) {
        NSString *rowNumber = [[NSString alloc]initWithFormat:@"Row %i",i];
        [arrRow addObject:rowNumber];
    }
    arrTitle = [[NSMutableArray alloc]initWithObjects:@"First Row",@"Second Row",@"Third Row",@"Four Row",@"Five Row", nil];
    arrFruit = [[NSMutableArray alloc]initWithObjects:@"Apple",@"orange",@"Banana",@"Lemon",@"Peach", nil];
    // Do any additional setup after loading the view.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrTitle.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ExpandingCell *cell = (ExpandingCell *)[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"ExpandingCell" owner:self
                                                  options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.rowTitle.text = arrRow[indexPath.row];
    cell.rowDetail.text = arrTitle[indexPath.row];
    cell.fruitTitle.text = arrFruit[indexPath.row];
    int cal = (indexPath.row + 1)*25;
    cell.calDetail.text = [NSString stringWithFormat:@"%i",cal];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (selectedIndex == indexPath.row) {
        return 125;
    }else{
        return 44;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (selectedIndex == indexPath.row) {
        selectedIndex = -1;
        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        return;
    }
    if (selectedIndex == -1) {
        NSIndexPath *prev = [NSIndexPath indexPathForRow:selectedIndex inSection:0];
        selectedIndex = indexPath.row;
        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:prev] withRowAnimation:UITableViewRowAnimationFade];
        
    }
}

@end
