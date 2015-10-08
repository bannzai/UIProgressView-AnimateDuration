
//
//  UIProgressView+AnimateDuration.m
//  WEAR
//
//  Created by hirose yudai on 2015/07/09.
//  Copyright (c) 2015年 Natural Style Co. Ltd. All rights reserved.
//

#import "UIProgressView+AnimateDuration.h"

@implementation UIProgressView (AnimateDuration)

- (void)fullProgressAnimateWithDuration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion {
    [self fullProgressAnimateWithDuration:duration delay:0.0f options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionTransitionNone completion:completion];
}

- (void)fullProgressAnimateWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options completion:(void (^)(BOOL finished))completion {

    __block dispatch_time_t time = DISPATCH_TIME_NOW;
    
    [UIView animateWithDuration:duration delay:delay options:options animations:^{
        [self setProgress:1.0 animated:YES];
        time = DISPATCH_TIME_NOW;
    } completion:^(BOOL finished) {
        dispatch_after(dispatch_time(time, (int64_t)(duration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            completion(finished);
        });
    }];
}

@end
