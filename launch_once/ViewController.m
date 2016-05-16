//
//  ViewController.m
//  launch_once
//
//  Created by yinlong on 16/5/9.
//  Copyright © 2016年 yinlong. All rights reserved.
//

#import "ViewController.h"
#import "Engine.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Engine *engine1 = [[Engine alloc]init];
    
    [engine1 lauch]; // work      // work
    [engine1 lauch]; // not work  // not work
    
    Engine *engine2 = [[Engine alloc]init];
    
    [engine2 lauch]; // work     // not work
    [engine2 lauch];// not work  // not work
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
