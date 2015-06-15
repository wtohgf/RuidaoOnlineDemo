//
//  NEUMainPageViewController.m
//  RuidaoOnlineDemo
//
//  Created by hegf on 15/6/15.
//  Copyright (c) 2015年 hegf. All rights reserved.
//

#import "NEUMainPageViewController.h"
#import "NEUOnLineStudyBaseNavController.h"
#import "NEUOnLineStduyViewController.h"
#import <RDVTabBarItem.h>

@interface NEUMainPageViewController ()

@end

@implementation NEUMainPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIViewController *firstViewController = [[UIViewController alloc] init];
    UIViewController *firstNavigationController = [[UINavigationController alloc] initWithRootViewController:firstViewController];
    
    
    UIStoryboard* onlinestduyStoryBoard = [UIStoryboard storyboardWithName:@"NEUOnLineStudy" bundle:nil];
    NEUOnLineStudyBaseNavController *secondNavigationController = [onlinestduyStoryBoard instantiateViewControllerWithIdentifier:@"NEUOnLineStudyBaseNavController"];
    
    UIViewController *thirdViewController = [[UIViewController alloc] init];
    UIViewController *thirdNavigationController = [[UINavigationController alloc] initWithRootViewController:thirdViewController];
    
    UIViewController *fourViewController = [[UIViewController alloc] init];
    UIViewController *fourNavigationController = [[UINavigationController alloc] initWithRootViewController:fourViewController];
    
    [self setViewControllers:@[firstNavigationController, secondNavigationController,
                               thirdNavigationController, fourNavigationController]];
    
    
    UIImage *finishedImage = [UIImage imageNamed:@"tabbar_selected_background"];
    UIImage *unfinishedImage = [UIImage imageNamed:@"tabbar_normal_background"];
    NSArray *tabBarItemImages = @[@"bottom_btn1", @"bottom_btn2", @"bottom_btn3", @"bottom_btn4"];
    
    
    NSArray *tabBarItemTitles = @[@"测试", @"学习", @"实践", @"就业"];
    RDVTabBar *tabBar = self.tabBar;
    
    [tabBar setFrame:CGRectMake(CGRectGetMinX(tabBar.frame), CGRectGetMinY(tabBar.frame), CGRectGetWidth(tabBar.frame), 44)];
    
    NSInteger index = 0;
    for (RDVTabBarItem *item in [self.tabBar items]) {
        [item setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_checked", [tabBarItemImages objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_unchecked", [tabBarItemImages objectAtIndex:index]]];
        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        
        [item setTitle:tabBarItemTitles[index]];
        
        index++;
    }
    
    tabBar.translucent = YES;

    // Customize the tabBar background
    tabBar.backgroundView.backgroundColor = [UIColor colorWithRed:245/255.0
                                                            green:245/255.0
                                                             blue:245/255.0
                                                            alpha:0.9];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
