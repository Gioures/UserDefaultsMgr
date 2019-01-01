//
//  ViewController.m
//  demo
//
//  Created by ytkjs on 2019/1/1.
//  Copyright © 2019年 Gioures. All rights reserved.
//

#import "ViewController.h"
#import "demo-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [UserDefaultsMgr setString:@"ASC" key:@"string"];
}


@end
