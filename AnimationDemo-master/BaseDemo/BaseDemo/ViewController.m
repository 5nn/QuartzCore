//
//  ViewController.m
//  BaseDemo
//
//  Created by mike on 16/11/2016.
//  Copyright © 2016 mike. All rights reserved.
//

#import "ViewController.h"
#import "DrawStringView.h"
#import "DrawImageView.h"
#import "CGContextDrawLine.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CGContextDrawLine *img = [[CGContextDrawLine alloc] initWithFrame:self.view.frame];
    [self.view addSubview:img];

}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
        

}



@end
