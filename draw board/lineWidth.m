//
//  lineWidth.m
//  draw board
//
//  Created by 阿城 on 15/10/11.
//  Copyright © 2015年 阿城. All rights reserved.
//

#import "lineWidth.h"
#import "DrawBoard.h"

@interface lineWidth ()
@property (nonatomic ,assign) CGFloat lineWidth;
@end


@implementation lineWidth

-(void)didMoveToSuperview{
    _lineWidth = kDefaultLineWidth;
}

- (IBAction)slider:(UISlider *)sender {
    _lineWidth = (sender.value - 1) * 5 + kDefaultLineWidth;
    [self setNeedsDisplay];
    if (self.widthBlock) {
        _widthBlock( _lineWidth);
    }
}

-(void)drawRect:(CGRect)rect{
    CGPoint center = CGPointMake(self.bounds.size.height * 0.5, self.bounds.size.height * 0.5);
    UIBezierPath *cir = [UIBezierPath bezierPathWithArcCenter:center radius:_lineWidth * 0.5 startAngle:0 endAngle:2*M_PI clockwise:1];
    [cir fill];
}


@end
