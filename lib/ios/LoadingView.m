//
//  LoadingView.m
//  Loading
//
//  Created by yzw on 2016/11/28.
//  Copyright © 2016年 yzw. All rights reserved.
//

#import "LoadingView.h"


@implementation LoadingView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

+ (instancetype)shareInstance{
    
    static LoadingView *shareLoadingView = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        shareLoadingView = [[LoadingView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        shareLoadingView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.5];
        [[UIApplication sharedApplication].keyWindow addSubview:shareLoadingView];
        
    });
    return shareLoadingView;
}


- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self){
        
        
        
        //        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
        //
        //        tap.numberOfTapsRequired = 1;
        //        [view addGestureRecognizer:tap];
        
        
        
        UIView *loaddingView = [[UIView alloc] initWithFrame:CGRectZero];
        loaddingView.translatesAutoresizingMaskIntoConstraints = NO;
        loaddingView.tag = 1;
        loaddingView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.8];
        loaddingView.layer.masksToBounds = true;
        loaddingView.layer.cornerRadius = 5;
        [self addSubview:loaddingView];
        
        UIActivityIndicatorView *activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        activity.tag = 3;
        activity.translatesAutoresizingMaskIntoConstraints = NO;
        activity.center = loaddingView.center;
        activity.hidesWhenStopped = true;
        [loaddingView addSubview:activity];
        
        
        UILabel *label = [[UILabel alloc] init];
        label.backgroundColor = [UIColor clearColor];
        
        label.translatesAutoresizingMaskIntoConstraints = NO;
        label.tag = 2;
        label.font = [UIFont systemFontOfSize:14];
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        [loaddingView addSubview:label];
        
        
        
        NSLayoutConstraint *constrint1 = [NSLayoutConstraint constraintWithItem:loaddingView
                                                                      attribute:NSLayoutAttributeCenterX
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self
                                                                      attribute:NSLayoutAttributeCenterX
                                                                     multiplier:1.0
                                                                       constant:0];
        
        NSLayoutConstraint *constrint2 = [NSLayoutConstraint constraintWithItem:loaddingView
                                                                      attribute:NSLayoutAttributeCenterY
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self
                                                                      attribute:NSLayoutAttributeCenterY
                                                                     multiplier:1.0
                                                                       constant:0];
        
        NSLayoutConstraint *constrint7 = [NSLayoutConstraint constraintWithItem:loaddingView
                                                                      attribute:NSLayoutAttributeLeading
                                                                      relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                         toItem:self
                                                                      attribute:NSLayoutAttributeLeading
                                                                     multiplier:1.0
                                                                       constant:40];
        constrint7.priority = 300;
        
        
        NSLayoutConstraint *constrint8 = [NSLayoutConstraint constraintWithItem:loaddingView
                                                                      attribute:NSLayoutAttributeTrailing
                                                                      relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                         toItem:self
                                                                      attribute:NSLayoutAttributeTrailing
                                                                     multiplier:1.0
                                                                       constant:40];
        constrint8.priority = 300;
        
        NSLayoutConstraint *constrint9 = [NSLayoutConstraint constraintWithItem:loaddingView
                                                                      attribute:NSLayoutAttributeHeight
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:nil
                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                     multiplier:1.0
                                                                       constant:100];
        
        
        NSLayoutConstraint *constrint3 = [NSLayoutConstraint constraintWithItem:activity
                                                                      attribute:NSLayoutAttributeCenterY
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:loaddingView
                                                                      attribute:NSLayoutAttributeCenterY
                                                                     multiplier:1.0
                                                                       constant:0];
        
        NSLayoutConstraint *constrint4 = [NSLayoutConstraint constraintWithItem:activity
                                                                      attribute:NSLayoutAttributeCenterX
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:loaddingView
                                                                      attribute:NSLayoutAttributeCenterX
                                                                     multiplier:1.0
                                                                       constant:0];
        
        
        NSLayoutConstraint *constrint13 = [NSLayoutConstraint constraintWithItem:activity
                                                                       attribute:NSLayoutAttributeLeading
                                                                       relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                          toItem:loaddingView
                                                                       attribute:NSLayoutAttributeLeading
                                                                      multiplier:1.0
                                                                        constant:40];
        
        NSLayoutConstraint *constrint14 = [NSLayoutConstraint constraintWithItem:activity
                                                                       attribute:NSLayoutAttributeTrailing
                                                                       relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                          toItem:loaddingView
                                                                       attribute:NSLayoutAttributeTrailing
                                                                      multiplier:1.0
                                                                        constant:40];
        
        
        NSLayoutConstraint *constrint5 = [NSLayoutConstraint constraintWithItem:label
                                                                      attribute:NSLayoutAttributeLeading
                                                                      relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                         toItem:loaddingView
                                                                      attribute:NSLayoutAttributeLeading
                                                                     multiplier:1.0
                                                                       constant:0];
        
        NSLayoutConstraint *constrint6 = [NSLayoutConstraint constraintWithItem:label
                                                                      attribute:NSLayoutAttributeTrailing
                                                                      relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                         toItem:loaddingView
                                                                      attribute:NSLayoutAttributeTrailing
                                                                     multiplier:1.0
                                                                       constant:0];
        
        
        NSLayoutConstraint *constrint10 = [NSLayoutConstraint constraintWithItem:label
                                                                       attribute:NSLayoutAttributeTop
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:activity
                                                                       attribute:NSLayoutAttributeBottom
                                                                      multiplier:1.0
                                                                        constant:10];
        
        NSLayoutConstraint *constrint11 = [NSLayoutConstraint constraintWithItem:label
                                                                       attribute:NSLayoutAttributeCenterY
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:loaddingView
                                                                       attribute:NSLayoutAttributeCenterY
                                                                      multiplier:1.0
                                                                        constant:0];
        
        NSLayoutConstraint *constrint12 = [NSLayoutConstraint constraintWithItem:label
                                                                       attribute:NSLayoutAttributeCenterX
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:loaddingView
                                                                       attribute:NSLayoutAttributeCenterX
                                                                      multiplier:1.0
                                                                        constant:0];
        
        
        //
        [self addConstraint:constrint1];
        [self addConstraint:constrint2];
        [self addConstraint:constrint3];
        [self addConstraint:constrint4];
        [self addConstraint:constrint5];
        [self addConstraint:constrint6];
        [self addConstraint:constrint7];
        [self addConstraint:constrint8];
        [self addConstraint:constrint9];
        [self addConstraint:constrint10];
        //  [self addConstraint:constrint11];
        [self addConstraint:constrint12];
        [self addConstraint:constrint13];
        [self addConstraint:constrint14];
        
    }
    return self;
}

- (void)dismiss{
    
    
    UIView *view = [self viewWithTag:1];
    UILabel *label = [view viewWithTag:2];
    UIActivityIndicatorView *activity = [view viewWithTag:3];
    
    label.text = nil;
    [activity stopAnimating];
    self.hidden = YES;
}

- (void)show:(NSString*)str{
    
    
    UIView *view = [self viewWithTag:1];
    if(str){
        UILabel *label = [view viewWithTag:2];
        label.text = str;
    }
    
    UIActivityIndicatorView *activity = [view viewWithTag:3];
    if(activity){
        [activity startAnimating];
    }
    
}

+(void)showWithStr:(NSString*)str{
    dispatch_async(dispatch_get_main_queue(), ^{
        [[self shareInstance] show:str];
    });
}

+(void)hidden {
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [[self shareInstance] dismiss];
    });
    
}


@end
