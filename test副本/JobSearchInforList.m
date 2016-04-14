//
//  JobSearchInforList.m
//  test
//
//  Created by yyx on 16/3/21.
//  Copyright © 2016年 yyx. All rights reserved.
//

#import "JobSearchInforList.h"

@implementation JobSearchInforList
+(JSONKeyMapper *)keyMapper{
    return [[JSONKeyMapper alloc] initWithDictionary:@{
                                                       @"jobSearchResult.jobSearchInfoList":@"JobSearchInforList"
                                                       }];
}
+(BOOL)propertyIsOptional:(NSString *)propertyName{
    return YES;
}

@end
