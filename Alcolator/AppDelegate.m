//
//  AppDelegate.m
//  Alcolator
//
//  Created by Philip Sopher on 1/25/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "WhiskeyViewController2.h"

//For Navigation Controller but not tabbed controller
//#import "MainMenuViewController.h"

@interface AppDelegate () <UITextFieldDelegate>

@property UITabBarController *tabBarVC;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
//    Navigation Controller Here
    
//    MainMenuViewController *mainMenuViewController = [[MainMenuViewController alloc] init];
//    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:mainMenuViewController];
//    
//    self.window.rootViewController = navigationController;

    //Navigation Controller Ends Here
    
    
    //Tabbed View Controller Here
    
    ViewController *wineVC = [[ViewController alloc] init];
    WhiskeyViewController2 *whiskeyVC = [[WhiskeyViewController2 alloc] init];
    UITabBarController *tabBarVC = [[UITabBarController alloc] init];
    tabBarVC.viewControllers = @[wineVC, whiskeyVC];
    
    self.window.rootViewController = tabBarVC;
    
    //Following for Delegate Assignment
    
//    self.tabBarVC = [[UITabBarController alloc] init];
//    self.tabBarVC.delegate = self;
//    self.tabBarVC.viewControllers = @[wineVC, whiskeyVC];
    
    //End of Delegate Assigment
    
    
    //Tabbed View Controller Ends Here
    
    [self.window makeKeyAndVisible];
    return YES;
}

//- (void) tabBarController:didSelectViewController: {
//    
//}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
