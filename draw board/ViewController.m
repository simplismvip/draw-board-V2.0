//
//  ViewController.m
//  draw board
//
//  Created by 阿城 on 15/10/11.
//  Copyright © 2015年 阿城. All rights reserved.
//

#import "ViewController.h"
#import "DrawBoard.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DrawBoard *drawBoard = [[DrawBoard alloc]initWithFrame:self.view.bounds];
    
    [self.view addSubview:drawBoard];
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

@end
