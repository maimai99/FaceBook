//
//  cal.m
//  FaceBook
//
//  Created by sherry on 2017/02/27.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cal.h"

@implementation cal

-(id)initWithRadius:(int)radius{
        self = [super initWithLength:radius];
        if (self) {
            self.radius = radius;
        }
    return self;
}


-(float)area{
    float area = 3.14*(self.radius)*(self.radius);
    return area;
}

-(float)circumference{
    return 2*(self.radius);
}

@end
