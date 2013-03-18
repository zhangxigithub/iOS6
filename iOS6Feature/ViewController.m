//
//  ViewController.m
//  iOS6Feature
//
//  Created by 张 玺 on 13-3-18.
//  Copyright (c) 2013年 me.zhangxi. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"iOS6";
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)socialFramework:(id)sender {
    

    SLComposeViewController *composeViewController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeSinaWeibo];

    [composeViewController addImage:[UIImage imageNamed:@"seal"]];
    [composeViewController setInitialText:@"share from demo @张玺"];
    [self presentViewController:composeViewController animated:YES completion:^{
    }];

}

- (IBAction)UIActivityViewController:(id)sender {
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[@"hello",[UIImage imageNamed:@"seal.png"]] applicationActivities:nil];
    /*
    activityViewController.excludedActivityTypes = @[UIActivityTypeAssignToContact,
                                                     UIActivityTypeMessage,
                                                     UIActivityTypeSaveToCameraRoll];
     */
    [self presentViewController:activityViewController animated:YES completion:^{
        
    }];
}

- (IBAction)downloadApp:(id)sender {
    SKStoreProductViewController *product = [[SKStoreProductViewController alloc] init];
    product.delegate = self;
    [product loadProductWithParameters:@{SKStoreProductParameterITunesItemIdentifier:@"494241173"}
                       completionBlock:^(BOOL result, NSError *error) {}];
    
    [self presentModalViewController:product animated:YES];

}
-(void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController
{
    [viewController dismissModalViewControllerAnimated:YES];
}
- (IBAction)showCollectionView:(id)sender
{
    CollectionViewController *collection = [[CollectionViewController alloc] initWithNibName:@"CollectionViewController" bundle:nil];
    
    
    [self.navigationController pushViewController:collection animated:YES];
}

- (IBAction)showRefreshControl:(id)sender
{
    RefreshControlViewController *refresh = [[RefreshControlViewController alloc] initWithStyle:UITableViewStyleGrouped];
    [self.navigationController pushViewController:refresh animated:YES];
}

- (IBAction)autoLayout:(id)sender
{
    AutoLayoutViewController *autoLayout = [[AutoLayoutViewController alloc] initWithNibName:@"AutoLayoutViewController" bundle:nil];
    [self.navigationController pushViewController:autoLayout animated:YES];
    
}
- (void)viewDidUnload {
    [super viewDidUnload];
}
@end






















