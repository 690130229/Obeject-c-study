//
//  MyRectangle.m
//  MyRectangle
//
//  Created by user on 7/12/14.
//  Copyright (c) 2014 user. All rights reserved.
//

#import "MyRectangle.h"

@implementation MyRectangle
-(MyRectangle*)initWithWidth:(int)w  andHeight:(int)h
{
    self = [self init];
    if (self) {
        [self setWidth:w ];
        [self setHeight:h ];
    }
    
    return self;
}

-(void) setWidth:(int)w
{
    width = w;
}

-(void)setHeight:(int)h
{
    height = h ;
}

-(int) width
{
    return width;
}

-(int)height
{
    return height;
}

-(void)area
{
    NSLog(@"The area is %d",width*height);
}
@end
