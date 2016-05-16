//
//  Engine.m
//  launch_once
//
//  Created by yinlong on 16/5/9.
//  Copyright © 2016年 yinlong. All rights reserved.
//

#import "Engine.h"
#import <objc/message.h>

@interface Engine ()

@end

@implementation Engine

- (void)lauch {
    if (objc_getAssociatedObject(self, _cmd)) {
        return;
    } else {
        // 第一个参数:给哪个对象产生关联
        // 第二个参数:属性名
        // 第三个参数:属性值
        // 第四个参数:策略
        objc_setAssociatedObject(self, _cmd, @"Launched", OBJC_ASSOCIATION_RETAIN);
        NSLog(@"launch only once");
    }
}

//- (void)lauch {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        NSLog(@"launch only once");
//    });
//}

@end
