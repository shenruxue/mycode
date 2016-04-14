//
//  JobSearchInforList.h
//  test
//
//  Created by yyx on 16/3/21.
//  Copyright © 2016年 yyx. All rights reserved.
//

#import "JSONModel.h"
#import "jobSummary.h"

@interface JobSearchInforList : JSONModel
@property(nonatomic,strong)NSArray<jobSummary,Optional> * jobSeasrchList;
@end
