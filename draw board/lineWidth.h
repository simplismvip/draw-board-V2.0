//
//  lineWidth.h
//  draw board
//
//  Created by 阿城 on 15/10/11.
//  Copyright © 2015年 阿城. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kDefaultLineWidth 8

@interface lineWidth : UIView

@property (nonatomic ,strong) void (^widthBlock) (CGFloat);
@end
