//
//  tl_BaseClass.m
//  Classes Connect
//
//  Created by zhTian on 16/4/29.
//  Copyright © 2016年 zhTian. All rights reserved.
//

#import "tl_BaseClass.h"

@implementation tl_BaseClass

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self init_related_view];
        [self init_related_data];
    }
    
    return self;
}

- (void)init_related_view
{
    
}

- (void)init_related_data
{
    
}

@end
