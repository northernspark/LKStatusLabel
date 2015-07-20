//
//  LKStatusLabel.m
//  Lynker
//
//  Created by Joe Barbour on 20/07/2015.
//  Copyright (c) 2015 Lynker. All rights reserved.
//

#import "LKStatusLabel.h"

@implementation LKStatusLabel

-(void)drawRect:(CGRect)rect {
    if (![self.subviews containsObject:statusLabel]) {
        statusLabel = [[UILabel alloc] initWithFrame:self.bounds];
        statusLabel.textColor = self.labelColour;
        statusLabel.textAlignment = NSTextAlignmentCenter;
        statusLabel.text = self.labelContent;
        statusLabel.font = self.labelFont;
        statusLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:statusLabel];
        
        statusGradient = [CAGradientLayer layer];
        statusGradient.frame = self.bounds;
        statusGradient.colors = @[(id)[self.superview.backgroundColor colorWithAlphaComponent:1.0].CGColor,
                                  (id)[self.superview.backgroundColor colorWithAlphaComponent:0.0].CGColor,
                                  (id)[self.superview.backgroundColor colorWithAlphaComponent:1.0].CGColor];
        statusGradient.startPoint = CGPointMake(0.0, 0.0);
        statusGradient.endPoint = CGPointMake(0.0, 1.0);
        [self.layer addSublayer:statusGradient];

    }

}

-(void)setText:(NSString *)text animate:(BOOL)animate {
    if (animate) {
        statusFrame = statusLabel.frame;
        [UIView animateWithDuration:0.1 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
            statusFrame.origin.y =  0.0 - self.bounds.size.height;
            statusLabel.frame = statusFrame;
            statusLabel.alpha = 0.0;
        } completion:^(BOOL finished) {
            statusFrame.origin.y = 0.0 + self.bounds.size.height;
            statusLabel.frame = statusFrame;
            statusLabel.text = text;
            [UIView animateWithDuration:0.7 delay:0 usingSpringWithDamping:0.6 initialSpringVelocity:0.4 options:UIViewAnimationOptionCurveEaseIn animations:^{
                statusFrame.origin.y = self.bounds.origin.y;
                statusLabel.frame = statusFrame;
                statusLabel.alpha = 1.0;

            } completion:nil];

        }];
        
    }
    else statusLabel.text = text;
    
}

@end
