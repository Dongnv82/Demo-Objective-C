//
//  DetailCollectionViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/9/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "DetailCollectionViewController.h"
#import "CollectionViewController.h"

@interface DetailCollectionViewController ()

@end

@implementation DetailCollectionViewController
@synthesize strImg,imageView;
- (void)viewDidLoad {
    [super viewDidLoad];
    imageView.image = [UIImage imageNamed:strImg];
}

@end
