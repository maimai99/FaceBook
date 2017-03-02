//
//  Square.m
//  FaceBook
//
//  Created by sherry on 2017/02/27.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"


@implementation Square

-(id)initWithSquare:(int)length{
    self = [super init];
    if (self) {
        self.length = length;
    }
    return self;
}

-(float)area{
    float area = (self.length)*(self.length);
    return area;
}

-(float)circumference{
    return 4*(self.length);
}

@end
