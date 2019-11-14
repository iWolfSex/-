//
//  BIDnavigationController.m
//  NavigationController
//
//  Created by 刘超 on 13-4-1.
//  Copyright (c) 2013年 刘超. All rights reserved.
//

#import "BIDnavigationController.h"

@interface BIDnavigationController ()

@end

@implementation BIDnavigationController

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
    if ([self.navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) {
        [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"zhuti1"] forBarMetrics:UIBarMetricsDefault];
    }
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
@implementation UINavigationBar (setBackground)
-(void)drawRect:(CGRect)rect
{
    UIImage*iamge=[UIImage imageNamed:@"zhuti1"];
    [iamge drawInRect:rect];
}


@end
