//
//  Complex.h
//  Complex
//
//  Created by user on 7/12/14.
//  Copyright (c) 2014 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
    double real;
    double imaginary;
}

-(Complex*) initWithReal:(double)r andImaginary:(double)i;
-(void)setReal:(double)r;
-(void)setImaginary:(double)i;
-(void)setReal:(double)r andImaginary:(double)i;
-(double)real;
-(double)imaginary;
-(void)print;

@end
