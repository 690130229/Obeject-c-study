//
//  MyRectangle.h
//  MyRectangle
//
//  Created by user on 7/12/14.
//  Copyright (c) 2014 user. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface MyRectangle : NSObject
{
    int width;
    int height;
}

-(MyRectangle*) initWithWidth:(int)weight andHeight:(int)height;
-(void)setWidth:(int)width;
-(void)setHeight:(int)height;
-(int)width;
-(int)height;
-(void)area;

@end
