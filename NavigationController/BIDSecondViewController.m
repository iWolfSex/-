//
//  BIDSecondViewController.m
//  NavigationController
//
//  Created by 刘超 on 13-3-31.
//  Copyright (c) 2013年 刘超. All rights reserved.
//

#import "BIDSecondViewController.h"
#import "BIDThirdViewController.h"
@interface BIDSecondViewController ()

@end

@implementation BIDSecondViewController

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
    beasview.backgroundColor=[UIColor orangeColor];
    self.view=beasview;
    UIButton*button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"HiddenORShow" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(90, 100, 140, 40)];
    [button addTarget:self action:@selector(hiddenORShow) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    UIButton*beak=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [beak setTitle:@"beak" forState:UIControlStateNormal];
    [beak setFrame:CGRectMake(90, 200, 140, 40)];
    [beak addTarget:self action:@selector(beak) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:beak];
    UIButton*push=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [push setTitle:@"push" forState:UIControlStateNormal];
    [push setFrame:CGRectMake(90, 300, 140, 40)];
    [push addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:push];
    
    UIView*testview=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    testview.backgroundColor=[UIColor yellowColor];
    self.navigationItem.titleView=testview;
    
    UIBarButtonItem*ringhtItem=[[UIBarButtonItem alloc]initWithTitle:@"自定义" style:UIBarButtonItemStyleBordered target:self action:nil];
    self.navigationItem.rightBarButtonItem=ringhtItem;
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setToolbarHidden:NO animated:YES];
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
-(void)hiddenORShow
{
    if (self.navigationController.toolbarHidden) {
        [self.navigationController setToolbarHidden:NO animated:YES];
        [self.navigationController setNavigationBarHidden:NO animated:YES];
    }else
    {
        [self.navigationController setToolbarHidden:YES animated:YES];
        [self.navigationController setNavigationBarHidden:YES animated:YES];
        
    }
}
-(void)beak
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(void)push
{
    BIDThirdViewController*thirdViewController=[[BIDThirdViewController alloc]init];
    [self.navigationController pushViewController:thirdViewController animated:YES];
}
@end
