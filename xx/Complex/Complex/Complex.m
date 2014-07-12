//
//  Complex.m
//  Complex
//
//  Created by user on 7/12/14.
//  Copyright (c) 2014 user. All rights reserved.
//

#import "Complex.h"

@implementation Complex
-(Complex*)initWithReal:(double)r andImaginary:(double)i
{
    self = [super init];
    if (self)
    {
        [self setReal:r andImaginary:i];
    }
    return self;
}

-(void)setReal:(double)r
{
    real = r;
}

-(void)setImaginary:(double)i
{
    imaginary = i;
}

-(void)setReal:(double)r andImaginary:(double)i
{
    real = r;
    imaginary = i;
}




@end
