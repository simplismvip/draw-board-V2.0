//
//  PathStyle.h
//  draw board
//
//  Created by 阿城 on 15/10/11.
//  Copyright © 2015年 阿城. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger ,PrintStyle){
    PrintStyleFill = 1,
    PrintStyleStrock = 2
};
typedef NS_ENUM(NSInteger ,DrawStyle){
    DrawStyleFreedomLine = 100,
    DrawStyleLine = 1,
    DrawStyleCircle = 2,
    DrawStyleRectangle = 3,
    DrawStyleOval = 4,
    DrawStyleTriangle = 5,
    DrawStyleCurve = 6,
    DrawStyleRubber = 7
};

@interface PathStyle : NSObject
@property (nonatomic ,strong) UIColor *color;
@property (nonatomic ,assign) CGFloat width;
@property (nonatomic ,assign) PrintStyle printStyle;
@property (nonatomic ,assign) DrawStyle drawStyle;
@end
