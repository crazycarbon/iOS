//
//  ViewController.m
//  localIP
//
//  Created by 王浩 on 16/9/2.
//  Copyright © 2016年 王浩. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"local ip is %@",[WHNetwork localIPAddress]);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
