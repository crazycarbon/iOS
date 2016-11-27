//
//  ViewController.m
//  JavascriptCore
//
//  Created by 王浩 on 16/11/27.
//  Copyright © 2016年 王浩. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    JSContext *context = [JSContext new];
    context[@"nslog"] = ^(NSString *name){
        NSLog(@"js parse%@",name);
    };
    [context evaluateScript:@"nslog('wanghao')"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
