//
//  LSDLanguageManager.h
//  国际化
//
//  Created by 神州锐达 on 2018/3/29.
//  Copyright © 2018年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>

#define ChangeLanguageNotificationName @"changeLanguage"

@interface LSDLanguageManager : NSObject
    
+(instancetype)shareManager;

//当前语言
- (NSString *)currentLanguage;

//设置当前语言
- (void)setUserlanguage:(NSString *)language;

//获取当前语种下的内容
- (NSString *)getStringForKey:(NSString *)key tbl:(NSString *)tbl;

@end
