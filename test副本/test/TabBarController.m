//
//  TabBarController.m
//  test
//
//  Created by yyx on 16/3/19.
//  Copyright © 2016年 yyx. All rights reserved.
//

#import "TabBarController.h"
#import "JobViewController.h"
#import "CompanyViewController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray * controllers = [[NSMutableArray alloc] init];
    
    JobViewController * jobVC = [[JobViewController alloc] init];
    UINavigationController * jobNavigationC = [[UINavigationController alloc] initWithRootViewController:jobVC];
    
    CompanyViewController * companyVC = [[CompanyViewController alloc] init];
    UINavigationController * companyNC = [[UINavigationController alloc] initWithRootViewController:companyVC];
    
    [controllers addObject:jobNavigationC];
    [controllers addObject:companyNC];
    self.viewControllers = controllers;
    
    UITabBarItem * jobItem = self.tabBar.items[0];
    jobItem.title = @"职位";
    jobItem.image = [[UIImage imageNamed:@"iconfont-zhuyemian-1"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    jobItem.selectedImage = [[UIImage imageNamed:@"iconfont-zhuyemian"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem * companyItem = self.tabBar.items[1];
    companyItem.title = @"公司";
    companyItem.image = [[UIImage imageNamed:@"iconfont-icon-user"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    companyItem.selectedImage = [[UIImage imageNamed:@"iconfont-icon-user-1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSLog(@"这是在实验");
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
