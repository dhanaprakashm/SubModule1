//
//  KRSubModule1ViewController.m
//  SubModule1
//
//  Created by Muddineti, Dhana (NonEmp) on 6/10/14.
//  Copyright (c) 2014 KROGER. All rights reserved.
//

#import "KRMainSubModule1ViewController.h"
#import "KRSubModulePresenter.h"

@interface KRMainSubModule1ViewController ()

@property (nonatomic, strong) KRSubModulePresenter *presenter;

@end

@implementation KRMainSubModule1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.presenter = [[KRSubModulePresenter alloc] init] ;
}

- (IBAction)gotoSubModule1:(id)sender
{
    [self.presenter presentSubModuleViewControllerFromVC:self];
}

@end
