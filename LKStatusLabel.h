//
//  LKStatusLabel.h
//  Lynker
//
//  Created by Joe Barbour on 20/07/2015.
//  Copyright (c) 2015 Lynker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LKStatusLabel : UILabel {
    UILabel *statusLabel;
    CGRect statusFrame;
    CAGradientLayer *statusGradient;
}

-(void)setText:(NSString *)text animate:(BOOL)animate;

@property (nonatomic, strong) UIColor *labelColour;
@property (nonatomic, strong) UIFont *labelFont;
@property (nonatomic, strong) NSString *labelContent;

@end
