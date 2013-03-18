//
//  CollectionViewController.h
//  iOS6Feature
//
//  Created by 张 玺 on 13-3-18.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
- (IBAction)close:(id)sender;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
