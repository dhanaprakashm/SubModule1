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
    
    [mainVC presentViewController:subModule1 animated:YES completion:nil];
}

@end