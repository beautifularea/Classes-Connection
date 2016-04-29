//
//  tl_ClassB.m
//  Classes Connect
//
//  Created by zhTian on 16/4/29.
//  Copyright © 2016年 zhTian. All rights reserved.
//

#import "tl_ClassB.h"
#import "tl_ClassService.h"

@interface tl_ClassB ()<tl_ClassService>

@end

@implementation tl_ClassB

- (void)init_related_view
{
}

- (void)init_related_data
{
}

//do somthing work for observer
- (void)register_bridge_service:(id<tl_ClassCallbackDelegate>)observer
{
    [observer update_related_data];
}

- (void)unregister_bridge_service: (id<tl_ClassCallbackDelegate>)observer
{
    [observer update_related_data];
}

@end
