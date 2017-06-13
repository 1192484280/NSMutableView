//
//  AppDelegate.m
//  ZENWork
//
//  Created by zhangming on 17/3/30.
//  Copyright © 2017年 youjiesi. All rights reserved.
//

#import "AppDelegate.h"
#import "WorkViewController.h"
#import "FileViewController.h"
#import "MineViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [NSThread sleepForTimeInterval:2];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:[[WorkViewController alloc] init]];
    nav1.tabBarItem.title = @"工作流";
    nav1.tabBarItem.image = [[UIImage imageNamed:@"tabbar_work_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav1.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_work_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:[[FileViewController alloc] init]];
    nav2.tabBarItem.title = @"文件共享";
    nav2.tabBarItem.image = [[UIImage imageNamed:@"tabbar_file_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav2.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_file_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:[[MineViewController alloc] init]];
    nav3.tabBarItem.title = @"我";
    nav3.tabBarItem.image = [[UIImage imageNamed:@"tabbar_mine_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav3.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_mine_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor grayColor]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"#D33B47"]} forState:UIControlStateSelected];
    tabbar.viewControllers = @[nav1,nav2,nav3];
    
    self.window.rootViewController = tabbar;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
