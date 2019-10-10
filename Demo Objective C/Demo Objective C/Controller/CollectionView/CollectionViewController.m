//
//  CollectionViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/9/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "CollectionViewController.h"
#import "DetailCollectionViewController.h"
#define NumberItemOfRow 4
#define MinimumLineSpacing 4
#define MinimumInteritemSpacing 4

@interface CollectionViewController ()

@end

@implementation CollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _arrImage = [[NSMutableArray alloc]initWithObjects:@"google",@"facebook",@"youtube",@"linkedin",@"twitter",@"google",@"facebook",@"youtube",@"linkedin",@"twitter",@"google",@"facebook",@"youtube",@"linkedin",@"twitter",@"google",@"facebook",@"youtube",@"linkedin",@"twitter", nil];
    
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _arrImage.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UIImageView *img = (UIImageView *)[cell viewWithTag:1];
    img.image = [UIImage imageNamed:[_arrImage objectAtIndex:indexPath.row]];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    DetailCollectionViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"detail"];
    detailVC.strImg = [_arrImage objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:detailVC animated:YES];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGSize sizeItem = CGSizeZero;
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBounds.size;
    sizeItem.width = (screenSize.width-(NumberItemOfRow - 1)*MinimumInteritemSpacing)/MinimumInteritemSpacing;
    return  CGSizeMake(sizeItem.width,sizeItem.width);
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return MinimumLineSpacing;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return MinimumInteritemSpacing;
}

@end
