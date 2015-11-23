//
//  toolView.h
//  draw board
//
//  Created by 阿城 on 15/10/12.
//  Copyright © 2015年 阿城. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface toolView : UIView
@property (nonatomic ,strong) void (^toolBlock)(NSInteger);
@property (nonatomic ,strong) void (^cirtainBlock)();
@property (nonatomic ,strong) dispatch_block_t cancelBlock;
//@property (nonatomic ,strong) dispatch_block_t colorBlock;
@property (nonatomic ,strong) dispatch_block_t lineWidthBlock;
@end
