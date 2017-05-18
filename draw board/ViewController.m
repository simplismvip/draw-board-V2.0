//
//  ViewController.m
//  draw board
//
//  Created by 阿城 on 15/10/11.
//  Copyright © 2015年 阿城. All rights reserved.
//

#import "ViewController.h"
#import "DrawBoard.h"
#import "JMSlider.h"

@interface ViewController ()
@property (nonatomic, weak) JMSlider *fontSize;
@property (nonatomic, weak) JMSlider *alpha;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DrawBoard *drawBoard = [[DrawBoard alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:drawBoard];
    
    JMSlider *fontSize = [[JMSlider alloc] initWithFrame:CGRectMake(10, 100, self.view.bounds.size.width - 20, 25)];
    fontSize.backgroundColor = [UIColor redColor];
    fontSize.value = ^(JMSlider *value) {
        
    };
    
    [self.view addSubview:fontSize];
    self.fontSize = fontSize;
    
    JMSlider *alpha = [[JMSlider alloc] initWithFrame:CGRectMake(10, 200, self.view.bounds.size.width - 20, 25)];
    alpha.backgroundColor = [UIColor redColor];
    alpha.value = ^(JMSlider *value) {
        
    };
    
    [self.view addSubview:alpha];
    self.alpha = alpha;

    
}

- (BOOL)prefersStatusBarHidden{
    return YES;
}

@end
