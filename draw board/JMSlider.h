//
//  JMSlider.h
//  YaoYao
//
//  Created by JM Zhao on 2016/11/26.
//  Copyright © 2016年 JunMingZhaoPra. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JMSlider;
typedef void(^SliderValue)(JMSlider *value);

@interface JMSlider : UIView
@property (nonatomic, copy) SliderValue value;
@property (nonatomic, assign) CGFloat sValue;
@property (nonatomic, weak) UILabel *title;
@end
