//
//  MySquare.m
//  MyRectangle
//
//  Created by user on 7/12/14.
//  Copyright (c) 2014 user. All rights reserved.
//

#import "MySquare.h"

@implementation MySquare

-(MySquare*)initWithSize:(int)s
{
    self = [super init];
    if (self) {
        [self setWidth:s ];
        [self setHeight:s ];
    }
    return self;
}

-(void) setSize:(int)s
{
    size = s;
}

-(int) size
{
    return  size;
}
@end
