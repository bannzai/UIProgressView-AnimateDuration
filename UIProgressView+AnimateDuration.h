//
//  UIProgressView+AnimateDuration.h
//
//  Created by hirose yudai on 2015/07/09.
//  Copyright (c) 2015年 Natural Style Co. Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIProgressView (AnimateDuration)

- (void)fullProgressAnimateWithDuration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion;
- (void)fullProgressAnimateWithDuration:(NSTimeInterval)duration delay:(NSTimeInterval)delay options:(UIViewAnimationOptions)options completion:(void (^)(BOOL finished))completion;

@end
