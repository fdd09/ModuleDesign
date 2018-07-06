//
//  NormalMeditor.m
//  ModuleDesign
//
//  Created by 冯东旺 on 2018/6/30.
//  Copyright © 2018年 冯东旺. All rights reserved.
//

#import "NormalMeditor.h"

@implementation NormalMeditor


+ (instancetype)sharedInstance {
    static NormalMeditor *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[NormalMeditor alloc] init];
    });
    
    return _sharedInstance;
}


@end
