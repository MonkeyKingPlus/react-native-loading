//
//  LoadingView.h
//  Loading
//
//  Created by yzw on 2016/11/28.
//  Copyright © 2016年 yzw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoadingView : UIView


+(void)showWithStr:(NSString*)str cancelAble:(BOOL)bCancel;
+(void)hidden;

@end
