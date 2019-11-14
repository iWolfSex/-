//
//  BIDAppDelegate.m
//  NavigationController
//
//  Created by 刘超 on 13-3-31.
//  Copyright (c) 2013年 刘超. All rights reserved.
//

#import "BIDAppDelegate.h"
#import "BIDRootViewController.h"
#import "BIDnavigationController.h"
@implementation BIDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    BIDRootViewController*rootviewcomtroller=[[BIDRootViewController alloc]init];
    /*UINavigationController*navigation=[[UINavigationController alloc]initWithRootViewController:rootviewcomtroller];
    //ios 5.0
    if ([navigation.navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) {
        [navigation.navigationBar setBackgroundImage:[UIImage imageNamed:@"zhuti1"] forBarMetrics:UIBarMetricsDefault];
    }*/
    BIDnavigationController*navigation=[[BIDnavigationController alloc]initWithRootViewController:rootviewcomtroller];
    self.window.rootViewController=navigation;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
