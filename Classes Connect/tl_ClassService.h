//
//  tl_ClassService.h
//  Classes Connect
//
//  Created by zhTian on 16/4/29.
//  Copyright © 2016年 zhTian. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol tl_ClassCallbackDelegate <NSObject>

- (void)update_related_data;

@end

@protocol tl_ClassService <NSObject>

- (void)register_bridge_service: (id<tl_ClassCallbackDelegate>)observer;
- (void)unregister_bridge_service: (id<tl_ClassCallbackDelegate>)observer;

@end
