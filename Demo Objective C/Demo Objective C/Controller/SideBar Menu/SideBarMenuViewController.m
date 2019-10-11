//
//  SideBarMenuViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/11/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "SideBarMenuViewController.h"
#import "CustomCellMenu.h"
#import "GoogleViewController.h"
#import "FacebookViewController.h"
#define ScreenSize [[UIScreen mainScreen] bounds].size

@interface SideBarMenuViewController (){
    BOOL isSideViewOpen;
}

@end

@implementation SideBarMenuViewController
@synthesize sideView,sideBar,arrData;
- (void)viewDidLoad {
    [super viewDidLoad];
    sideBar.backgroundColor = [UIColor groupTableViewBackgroundColor];
    sideView.hidden = YES;
    isSideViewOpen = false;
    sideBar.separatorStyle = UITableViewCellSeparatorStyleNone;
    CustomCellMenu *cell1 = [[CustomCellMenu alloc]init];
    cell1.strImg = @"google";
    cell1.strTitle = @"Google";
    
    CustomCellMenu *cell2 = [[CustomCellMenu alloc]init];
    cell2.strImg = @"facebook";
    cell2.strTitle = @"Facebook";
    
    CustomCellMenu *cell3 = [[CustomCellMenu alloc]init];
    cell3.strImg = @"youtube";
    cell3.strTitle = @"Youtube";
    
    CustomCellMenu *cell4 = [[CustomCellMenu alloc]init];
    cell4.strImg = @"linkedin";
    cell4.strTitle = @"Linkedin";
    
    CustomCellMenu *cell5 = [[CustomCellMenu alloc]init];
    cell5.strImg = @"twitter";
    cell5.strTitle = @"Twitter";
    
    arrData = [[NSMutableArray alloc]initWithObjects:cell1,cell2,cell3,cell4,cell5, nil];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrData.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return ScreenSize.height/12;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    CustomCellMenu *mainCell = [arrData objectAtIndex:indexPath.row];
    UIImageView *image = (UIImageView *)[cell viewWithTag:1];
    image.image = [UIImage imageNamed:mainCell.strImg];
    UILabel *lb1 = (UILabel *)[cell viewWithTag:2];
    lb1.text = mainCell.strTitle;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        GoogleViewController *googleVC = [self.storyboard instantiateViewControllerWithIdentifier:@"google"];
        [self.navigationController pushViewController:googleVC animated:YES];
        sideView.hidden = YES;
    }else if (indexPath.row == 1){
        FacebookViewController *fbVC = [self.storyboard instantiateViewControllerWithIdentifier:@"facebook"];
        [self.navigationController pushViewController:fbVC animated:YES];
    }
}

- (IBAction)menuAction:(id)sender {
//    sideView.hidden = NO;
//    sideBar.hidden = NO;
//    [self.view bringSubviewToFront:sideView];
    if (!isSideViewOpen) {
        isSideViewOpen = true;
        sideView.hidden = NO;
//        sideBar.hidden = NO;
//        [sideView setFrame:CGRectMake(0, 0, 0, ScreenSize.height*2/3)];
//        [sideBar setFrame:CGRectMake(0, 0, 0, ScreenSize.height*2/3)];
//        [UIView beginAnimations:@"TableAnimation" context:NULL];
//        [UIView setAnimationDelegate:self];
//        [UIView setAnimationDuration:0.2];
//        [sideView setFrame:CGRectMake(0, 0, ScreenSize.width*2/3, ScreenSize.height*2/3)];
//        [sideBar setFrame:CGRectMake(0, 0, ScreenSize.width*2/3, ScreenSize.height*2/3)];
//        [UIView commitAnimations];
    }else{
        isSideViewOpen = false;
        sideView.hidden = YES;
//        sideBar.hidden = YES;
//        [sideView setFrame:CGRectMake(0, 0, ScreenSize.width*2/3, ScreenSize.height*2/3)];
//        [sideBar setFrame:CGRectMake(0, 0, ScreenSize.width*2/3, ScreenSize.height*2/3)];
//        [UIView beginAnimations:@"TableAnimation" context:NULL];
//        [UIView setAnimationDelegate:self];
//        [UIView setAnimationDuration:0.2];
//        [sideView setFrame:CGRectMake(0, 0, 0, ScreenSize.height*2/3)];
//        [sideBar setFrame:CGRectMake(0, 0, 0, ScreenSize.height*2/3)];
//        [UIView commitAnimations];
    }
}
@end
