//
//  AutoLayoutViewController.m
//  iOS6Feature
//
//  Created by 张 玺 on 13-3-18.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "AutoLayoutViewController.h"

@interface AutoLayoutViewController ()

@end

@implementation AutoLayoutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    UIView *top    = self.view1;
//    UIView *bottom = self.view2;
//    
//    NSDictionary *views = NSDictionaryOfVariableBindings(top,bottom);
//    [self.view addConstraints:
//     [NSLayoutConstraint constraintsWithVisualFormat:@"V:[bottom]-50-[top]"
//                                             options:0
//                                             metrics:nil
//                                               views:views]];
    /*
     autolayout
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setView1:nil];
    [self setView2:nil];
    [self setSlider:nil];
    [super viewDidUnload];
}
- (IBAction)sliderValueChanged:(id)sender {
    float y = self.slider.value;
    CGRect frame = self.view1.frame;
    frame.origin.y = y;
    self.view1.frame = frame;
    
    //[self.view setNeedsLayout];
}
@end
