//
//  Shape.h
//  FaceBook
//
//  Created by sherry on 2017/02/27.
//  Copyright © 2017年 sherry. All rights reserved.
//


@interface Shape : NSObject

@property int length;

-(id)initWithLength:(int)length;

-(float)area;
-(float)circumferense;
-(int)countObject;

@end
