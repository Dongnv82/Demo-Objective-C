//
//  CollectionViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/9/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "CollectionViewController.h"
#import "DetailCollectionViewController.h"


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

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return  CGSizeMake(80,80);
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 2;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 2;
}

@end
