//
//  jobSummary.h
//  test
//
//  Created by yyx on 16/3/21.
//  Copyright © 2016年 yyx. All rights reserved.
//

#import "JSONModel.h"

@protocol jobSummary <NSObject>

@end

@interface jobSummary : JSONModel
@property(nonatomic,copy)NSString * positionName;
@property(nonatomic,copy)NSString * lowSalary;
@property(nonatomic,copy)NSString * highSalary;
@property(nonatomic,copy)NSString * city;
@property(nonatomic,copy)NSString * experienceName;
@property(nonatomic,copy)NSString * degreeName;
@property(nonatomic,copy)NSString * userName;
@property(nonatomic,copy)NSString * company;
@property(nonatomic,copy)NSString * title;
@property(nonatomic,copy)NSString * scaleName;
@property(nonatomic,copy)NSString * jobActiveTime;
@property(nonatomic,copy)NSString * userAvatar;
@end
