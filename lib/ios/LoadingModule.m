//
//  LoadingModule.m
//  Loading
//
//  Created by yzw on 2016/11/28.
//  Copyright © 2016年 yzw. All rights reserved.
//

#import "LoadingModule.h"
#import "LoadingView.h"

@implementation LoadingModule
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(show:(NSString*)str)
{
    
    [LoadingView showWithStr:str];
}

RCT_EXPORT_METHOD(hidden)
{
    [LoadingView hidden];
}

@end
