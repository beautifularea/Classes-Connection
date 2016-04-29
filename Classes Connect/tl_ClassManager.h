//
//  tl_ClassManager.h
//  Classes Connect
//
//  Created by zhTian on 16/4/29.
//  Copyright © 2016年 zhTian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface tl_ClassManager : NSObject

+ (nonnull tl_ClassManager *)shareManager;

- (void)addManager2Container: (nonnull id)manager;
- (nonnull id)fetchManagerByKey: (nonnull NSString *)key;

@end
