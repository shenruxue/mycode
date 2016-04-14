//
//  CompanyViewController.m
//  test
//
//  Created by yyx on 16/3/19.
//  Copyright © 2016年 yyx. All rights reserved.
//

#import "CompanyViewController.h"
#import "DataRequest.h"
#import "HttpAdmin.h"

@interface CompanyViewController ()

@end

@implementation CompanyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getData];
    self.view.backgroundColor = [UIColor grayColor];
        // Do any additional setup after loading the view.
}
-(void)getData{
    [DataRequest Get:JOBADMIN parameters:nil success:^(id data) {
        
        
        
        
    } fail:^(id str) {
        NSLog(@"%@",str);
    }];

    
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
