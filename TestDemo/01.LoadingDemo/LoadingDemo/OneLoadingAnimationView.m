//
//  OneLoadingAnimationView.m
//  LoadingDemo
//
//  Created by 三少 on 16/5/30.
//  Copyright © 2016年 Demo. All rights reserved.
//

#import "OneLoadingAnimationView.h"
#import "ArcToCircleLayer.h"

static CGFloat const kRadius = 40;
static CGFloat const kLineWidth = 6;
static CGFloat const kStep1Duration = 5.0;

@interface OneLoadingAnimationView ()

@property (nonatomic) ArcToCircleLayer *arcToCircleLayer;/*objec*/

@end

@implementation OneLoadingAnimationView


-(void)awakeFromNib{
    
    [super awakeFromNib];
}

-(void)startAnimation{
    
    [self reset];
    [self doStep1];
}
- (void)reset{
    
    [self.arcToCircleLayer removeFromSuperlayer];
}

- (void)doStep1{
    self.arcToCircleLayer = [ArcToCircleLayer layer];
    self.arcToCircleLayer.contentsScale = [UIScreen mainScreen].scale;
    [self.layer addSublayer:self.arcToCircleLayer];
    
    self.arcToCircleLayer.bounds = CGRectMake(0, 0, kRadius * 2 + kLineWidth, kRadius * 2 + kLineWidth);
    self.arcToCircleLayer.position = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
    
    // animation
    self.arcToCircleLayer.progress = 1; // end status
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"progress"];
    animation.duration = 5;
    animation.fromValue = @0.0;
    animation.toValue = @1.0;
    [self.arcToCircleLayer addAnimation:animation forKey:nil];
}
@end
