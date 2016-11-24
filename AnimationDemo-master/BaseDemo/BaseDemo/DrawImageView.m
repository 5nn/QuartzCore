//
//  DrawImageView.m
//  BaseDemo
//
//  Created by mike on 16/11/2016.
//  Copyright © 2016 mike. All rights reserved.
//

#import "DrawImageView.h"

@implementation DrawImageView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    
    UIImage *image = [UIImage imageNamed:@"123.jpg"];
    
    [image drawInRect:CGRectMake(10, 10, 150, 150)];
    
    [image drawAtPoint:CGPointMake(10, 110)];
}


@end
