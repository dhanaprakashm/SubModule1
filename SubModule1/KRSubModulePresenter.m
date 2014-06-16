//
//  KRSubModulePresenter.m
//  SubModule1
//
//  Created by Muddineti, Dhana (NonEmp) on 6/10/14.
//  Copyright (c) 2014 KROGER. All rights reserved.
//

#import "KRSubModulePresenter.h"

@implementation KRSubModulePresenter

- (void)presentSubModuleViewControllerFromVC:(UIViewController *)mainVC
{
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"SubModule1" bundle:nil];
    UIViewController *subModule1 = [story instantiateViewControllerWithIdentifier:@"SubModule1"];
//    [mainVC presentViewController:subModule1 animated:YES completion:nil];
    
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:subModule1];
    navVC.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStylePlain target:self action:@selector(dismiss:)];
    
    [mainVC presentViewController:navVC animated:YES completion:nil];
}

- (void)pushSubModuleViewControllerFromVC:(UINavigationController *)navVC
{
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"SubModule1" bundle:nil];
    UIViewController *subModule1 = [story instantiateViewControllerWithIdentifier:@"SubModule1"];
    
    [navVC pushViewController:subModule1 animated:YES];
}

- (void)dismiss:(UIViewController *)viewController
{
    [viewController dismissViewControllerAnimated:YES completion:NO];
}

@end
