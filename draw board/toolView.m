//
//  toolView.m
//  draw board
//
//  Created by 阿城 on 15/10/12.
//  Copyright © 2015年 阿城. All rights reserved.
//

#import "toolView.h"

@interface toolView ()

@property (weak, nonatomic) IBOutlet UIButton* cirtain;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray* btns;
@property (weak, nonatomic) IBOutlet UIButton *colorSet;
@property (weak, nonatomic) IBOutlet UIButton *lineWidth;

@end

@implementation toolView

- (IBAction)btnClick:(UIButton*)sender
{
    for (UIButton* btn in _btns) {
        btn.selected = NO;
    }
    sender.selected = YES;
    _cirtain.enabled = YES;
    if (self.toolBlock) {
        self.toolBlock(sender.tag);
    }
}
- (IBAction)cirtainClick:(UIButton*)sender
{

    if (self.cirtainBlock) {
        self.cirtainBlock();
    }
}
- (IBAction)cancelClick:(UIButton*)sender
{
    if (self.cancelBlock) {
        self.cancelBlock();
    }
}
- (IBAction)lineWidth:(id)sender
{
    if (!_lineWidth.selected ) {
        if (self.lineWidthBlock) {
            self.lineWidthBlock();
        }
    }
    _lineWidth.selected = YES;
    _colorSet.selected = NO;
}
- (IBAction)colorSet:(UIButton *)sender {
    if (!_colorSet.selected ) {
        if (self.lineWidthBlock) {
            self.lineWidthBlock();
        }
    }
    _lineWidth.selected = NO;
    _colorSet.selected = YES;
}


@end
