//
//  Rectangle.m
//  FaceBook
//
//  Created by sherry on 2017/02/27.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@implementation Rectangle

-(id)initWithLength:(int)length width:(int)width
{
    
    self = [super initWithLength:length];
    if (self) {
        self.width = width;
    }
    return self;
}

-(float)area{
    float area = (self.width)*(self.width);
    return area;
}

-(float)circumference{
    return 4*(self.width);
}

@end
