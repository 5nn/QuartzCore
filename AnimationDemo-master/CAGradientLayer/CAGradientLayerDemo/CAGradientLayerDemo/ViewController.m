//
//  ViewController.m
//  CAGradientLayerDemo
//
//  Created by mike on 16/11/2016.
//  Copyright © 2016 mike. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //渐变图形
//    CAGradientLayer *gl = [CAGradientLayer layer];
//    gl.frame = self.view.frame;
//    gl.colors = @[(__bridge id)[UIColor redColor].CGColor,
//                  (__bridge  id)[UIColor yellowColor].CGColor,
//                  (__bridge id)[UIColor greenColor].CGColor];
//    gl.locations = @[@0.0,@0.5,@1.0];
//    gl.startPoint = CGPointMake(0, 0.0);
//    gl.endPoint = CGPointMake(1.0, 1.0);
//    
//    [self.view.layer addSublayer:gl];
    
    
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"123.jpg"]];
    [self.view addSubview:image];
    image.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    
    CAShapeLayer *shape = [CAShapeLayer layer];
    CGMutablePathRef ms = CGPathCreateMutable();
    CGPathAddEllipseInRect(ms, nil, CGRectInset(CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.width), 50,50));//画圆
//    CGPathAddRect(ms, nil, CGRectInset(CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.width), 50,50));//画方
    shape.path = ms;
    //shape.fillColor = [UIColor greenColor].CGColor;
    shape.shadowOpacity = 1;
    shape.shadowRadius = 45;
    image.layer.mask = shape;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
