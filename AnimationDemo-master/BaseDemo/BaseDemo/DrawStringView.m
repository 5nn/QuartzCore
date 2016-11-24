//
//  DrawStringView.m
//  BaseDemo
//
//  Created by mike on 16/11/2016.
//  Copyright © 2016 mike. All rights reserved.
//

#import "DrawStringView.h"

@implementation DrawStringView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    NSString *myStr = @"你需要明白的第一件事就是，其實一個網站就是一堆存在硬碟的檔案啦。就像是你電腦裡的眾多影片、音樂和照片。即便如此，網站的組成中還是有一部分是獨一無二的";
    
//    [myStr drawAtPoint:CGPointMake(0, 150) withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14],NSForegroundColorAttributeName:[UIColor blueColor]}];
    
    [myStr drawInRect:CGRectMake(0, 100, 200, 200) withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14],NSForegroundColorAttributeName:[UIColor blueColor]}];

}


@end
