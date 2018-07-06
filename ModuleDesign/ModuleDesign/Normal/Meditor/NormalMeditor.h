//
//  NormalMeditor.h
//  ModuleDesign
//
//  Created by 冯东旺 on 2018/6/30.
//  Copyright © 2018年 冯东旺. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NormalMeditor : NSObject

+ (instancetype)sharedInstance;

//本地跳转
- (UIViewController *)jumpToViewController:(NSString *)identifier
                              queryForInit:(NSDictionary *)initParams
                          queryForInstance:(NSDictionary *)instanceParams
                        propertyDictionary:(NSDictionary *)propertyDictionary
                                retrospect:(BOOL)retrospect
                                  animated:(BOOL)animated;

@end
