//
//  BIDRootViewController.m
//  NavigationController
//
//  Created by 刘超 on 13-3-31.
//  Copyright (c) 2013年 刘超. All rights reserved.
//

#import "BIDRootViewController.h"
#import "BIDSecondViewController.h"
@interface BIDRootViewController ()

@end

@implementation BIDRootViewController

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
    beasview.backgroundColor=[UIColor purpleColor];
    self.view=beasview;
    UIButton*button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Push" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(90, 100, 140, 40)];
    [button addTarget:self action:@selector(pushVc) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIBarButtonItem*leftItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(study)];
    self.navigationItem.leftBarButtonItem=leftItem;
    
    UIButton*item=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [item setTitle:@"item" forState:UIControlStateNormal];
    [item setFrame:CGRectMake(0, 0, 60, 30)];
    [item addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem*ringhtItem=[[UIBarButtonItem alloc]initWithCustomView:item];
    self.navigationItem.rightBarButtonItem=ringhtItem;
    
    
    self.navigationController.delegate=self;
    
    //ios 5.0
    //
    UIToolbar*toolbar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 460-44-44-100, 320, 44)];
    toolbar.barStyle=UIBarStyleDefault;
    [self.view addSubview:toolbar];
    UIBarButtonItem*addItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:nil];
    
     UIBarButtonItem*saveItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:nil];
    
     UIBarButtonItem*editItem=[[UIBarButtonItem alloc]initWithTitle:@"title" style:UIBarButtonItemStyleDone target:self action:nil];
    
     UIBarButtonItem*painItem=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"zhuti3"] style:UIBarButtonItemStylePlain target:self action:nil];
    UIImageView*imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"zhuti4"]];
    UIBarButtonItem*iamgeItem=[[UIBarButtonItem alloc]initWithCustomView:imageview];
    
    UIBarButtonItem*flexibleItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem*flexiItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    flexiItem.width=2;
    NSArray*items=@[addItem,flexiItem,saveItem,flexibleItem,editItem,flexibleItem,painItem,flexibleItem,iamgeItem];
    [toolbar setItems:items animated:YES];
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
-(void)pushVc
{
    BIDSecondViewController*secomdviewcontroller=[[BIDSecondViewController alloc]init];
    [self.navigationController pushViewController:secomdviewcontroller animated:YES];
}
-(void)study
{
    UIAlertView*lertview=[[UIAlertView alloc]initWithTitle:@"study" message:@"请选择" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
    lertview.alertViewStyle= UIAlertViewStylePlainTextInput;
    
    [lertview show];
}
-(void)test
{
    UIActionSheet*actionsheet=[[UIActionSheet alloc]initWithTitle:@"study" delegate:nil cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"确定", nil];
    
    [actionsheet showInView:self.view];

}
#pragma mark- navigationDelegate
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"willShowViewController:%p",viewController);
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSLog(@"didShowViewController:%p",viewController);
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    UITextField *tf=[alertView textFieldAtIndex:0];
    NSString*ds=tf.text;
    NSLog(@"%@",ds);
}
@end
