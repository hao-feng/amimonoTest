//
//  AppDelegate.m
//  ttt
//
//  Created by hao on 16/04/2017.
//
//

@import testPod;
#import <BlocksKit/BlocksKit+UIKit.h>
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Override point for customization after application launch.

  UIViewController *controller = [TestController new];
  controller.title = @"A";
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  [button setTitle:@"B" forState:UIControlStateNormal];
  [button addTarget:self action:@selector(gotoBController) forControlEvents:UIControlEventTouchUpInside];
  button.frame = CGRectMake(50, 150, 100, 100);
  [controller.view addSubview: button];

  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  self.window.backgroundColor = [UIColor blackColor];
  self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:controller];
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

- (void)gotoBController
{
  UIViewController *controller = [TestController new];
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  [button setTitle:@"A" forState:UIControlStateNormal];
  [button bk_whenTapped:^{
    [controller.navigationController popViewControllerAnimated:YES];
  }];
  button.frame = CGRectMake(50, 150, 100, 100);
  [controller.view addSubview: button];

  [(UINavigationController *)self.window.rootViewController pushViewController:controller animated:YES];
}

@end
