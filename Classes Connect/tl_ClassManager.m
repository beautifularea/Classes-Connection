//
//  tl_ClassManager.m
//  Classes Connect
//
//  Created by zhTian on 16/4/29.
//  Copyright © 2016年 zhTian. All rights reserved.
//

#import "tl_ClassManager.h"

@interface tl_ClassManager ()

//contain all alive manager instance
@property (nonatomic, strong) NSMutableDictionary *dictionary;

@end

@implementation tl_ClassManager

- (instancetype)init
{
    self = [super init];
    if(self)
    {
    }
    
    return self;
}

+ (tl_ClassManager *)shareManager
{
    static tl_ClassManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[tl_ClassManager alloc] init];
    });
    return instance;
}

- (void)addManager2Container: (id)manager
{
    NSString *key = NSStringFromClass([manager class]);
    
    if([self.dictionary objectForKey: key])
    {
        return;
    }
    
    [self.dictionary setObject: manager forKey: key];
}

- (id)fetchManagerByKey: (NSString *)key
{
    if([self.dictionary.allKeys containsObject: key])
    {
        return [self.dictionary objectForKey: key];
    }
    
    //if not contain then create it , add to vector
    Class className = NSClassFromString (key);
    id anInstance = [[className alloc] init];
    [self.dictionary setObject: anInstance forKey: key];
    
    return anInstance;
}

@end
