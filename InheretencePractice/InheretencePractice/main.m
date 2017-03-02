//
//  main.m
//  InheretencePractice
//
//  Created by sherry on 2017/02/27.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Shape.h"
#import "Rectangle.h"
#import "Square.h"
#import "cal.h"


int main(int argc, const char * argv[]) {
    
    NSMutableArray<Shape *>*shapes = [[NSMutableArray alloc]init];
    Rectangle* r1 = [[Rectangle alloc]initWithLength:6 width:5];
    [r1 countObject];
    [shapes addObject:r1];
    
    BOOL isMemberOfClass = true;
    float totalArea = 0;

    
    for(int i = 0;i < shapes.count;i++){
        Shape *sh = [shapes objectAtIndex:i];
        
        if([sh isMemberOfClass:[Rectangle class]]){
            float a = [((Rectangle*)sh) area];
            totalArea = totalArea + a;
        }else if([sh isMemberOfClass:[Square class]]){
            float a = [((Square*)sh) area];
            totalArea = totalArea + a;
        }else{
            float a = [((cal*)sh) area];
            totalArea = totalArea + a;
        }
    }
    
    return NSApplicationMain(argc, argv);
}
