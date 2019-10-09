//
//  CollectionViewController.h
//  Demo Objective C
//
//  Created by MT382 on 10/9/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CollectionViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (strong, nonatomic) NSMutableArray *arrImage;
@end

NS_ASSUME_NONNULL_END
