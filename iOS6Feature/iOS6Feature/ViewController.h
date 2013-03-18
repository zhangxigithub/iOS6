//
//  ViewController.h
//  iOS6Feature
//
//  Created by 张 玺 on 13-3-18.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <StoreKit/StoreKit.h>
#import "CollectionViewController.h"
#import "RefreshControlViewController.h"
#import "AutoLayoutViewController.h"

@interface ViewController : UIViewController<SKStoreProductViewControllerDelegate>

- (IBAction)socialFramework:(id)sender;
- (IBAction)UIActivityViewController:(id)sender;
- (IBAction)downloadApp:(id)sender;
- (IBAction)showCollectionView:(id)sender;
- (IBAction)showRefreshControl:(id)sender;
- (IBAction)autoLayout:(id)sender;



@end
