//
//  AutoLayoutViewController.h
//  iOS6Feature
//
//  Created by 张 玺 on 13-3-18.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoLayoutViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;

@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)sliderValueChanged:(id)sender;


@end
