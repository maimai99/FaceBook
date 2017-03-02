//
//  Shape.m
//  FaceBook
//
//  Created by sherry on 2017/02/27.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@implementation Shape

-(id)initWithLength:(int)length
{
    self = [super init];
        if (self) {
            self.length = length;
        }
        return self;
}

-(float)area{
    
     return 0;
}

-(float)circumferense{
    
    return 0;
}

-(int)countObject{
    
    return 0;
}

@end

