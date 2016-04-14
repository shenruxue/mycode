//
//  DataRequest.m
//  test
//
//  Created by yyx on 16/3/19.
//  Copyright © 2016年 yyx. All rights reserved.
//

#import "DataRequest.h"
#import "AFHTTPSessionManager.h"


@implementation DataRequest
+(void)Get:(NSString *)urlString parameters:(id)parameters success:(SuccessHandle)Successhandle fail:(FailHandle)failHandle{
    
    AFHTTPSessionManager * manger = [AFHTTPSessionManager manager];
    [manger GET:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        Successhandle(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failHandle(@"bfjkdsbjkf");
        
    }];
    
}
@end
