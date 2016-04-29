//
//  tl_ClassA.m
//  Classes Connect
//
//  Created by zhTian on 16/4/29.
//  Copyright © 2016年 zhTian. All rights reserved.
//

#import "tl_ClassA.h"
#import "tl_ClassB.h"
#import "tl_ClassService.h"
#import "tl_ClassManager.h"

@interface tl_ClassA ()<tl_ClassCallbackDelegate>

@end

@implementation tl_ClassA

- (instancetype)init
{
    self = [super init];
    if(self)
    {
    }
    
    return self;
}

- (void)init_related_view
{
}

- (void)init_related_data
{
    tl_ClassManager *container = (tl_ClassManager *)[tl_ClassManager shareManager];
    id<tl_ClassService> obj = (id<tl_ClassService>)[container fetchManagerByKey: @"tl_ClassB"];
    
    //TODo something , then call back to bridge update related data
    [obj register_bridge_service: self];    
}

- (void)update_related_data
{
    NSLog(@"%s",__FUNCTION__);
}

@end
