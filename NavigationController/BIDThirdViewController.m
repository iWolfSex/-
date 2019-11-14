//
//  BIDThirdViewController.m
//  NavigationController
//
//  Created by 刘超 on 13-3-31.
//  Copyright (c) 2013年 刘超. All rights reserved.
//

#import "BIDThirdViewController.h"

@interface BIDThirdViewController ()

@end

@implementation BIDThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)loadView
{
    UIView*beasview=[[UIView alloc]initWithFrame:[[UIScreen mainScreen]applicationFrame ]];
    beasview.backgroundColor=[UIColor blueColor];
    self.view=beasview;
    UIButton*push=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [push setTitle:@"push" forState:UIControlStateNormal];
    [push setFrame:CGRectMake(90, 30, 140, 40)];
    [push addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:push];
    UIButton*pop=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [pop setTitle:@"pop" forState:UIControlStateNormal];
    [pop setFrame:CGRectMake(90, 120, 140, 40)];
    [pop addTarget:self action:@selector(pop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pop];
    UIButton*root=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [root setTitle:@"root" forState:UIControlStateNormal];
    [root setFrame:CGRectMake(90, 210, 140, 40)];
    [root addTarget:self action:@selector(root) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:root];
    
    UIButton*index=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [index setTitle:@"index" forState:UIControlStateNormal];
    [index setFrame:CGRectMake(90, 300, 140, 40)];
    [index addTarget:self action:@selector(index) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:index];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)push
{
    BIDThirdViewController*thirdViewController=[[BIDThirdViewController alloc]init];
    [self.navigationController pushViewController:thirdViewController animated:YES];
}
-(void)pop
{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)root
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(void)index
{
    UIViewController*second=[[self.navigationController viewControllers]objectAtIndex:1];
    [self.navigationController popToViewController:second animated:YES];
}

@end
