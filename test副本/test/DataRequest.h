//
//  DataRequest.h
//  test
//
//  Created by yyx on 16/3/19.
//  Copyright © 2016年 yyx. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SuccessHandle)(id);
typedef void(^FailHandle)(id);

@interface DataRequest : NSObject
+(void)Get:(NSString *)urlString parameters:(id)parameters success:(SuccessHandle)handle fail:(FailHandle)failHandle;
@end
