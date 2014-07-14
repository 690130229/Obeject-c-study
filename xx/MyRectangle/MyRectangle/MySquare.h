//
//  MySquare.h
//  MyRectangle
//
//  Created by user on 7/12/14.
//  Copyright (c) 2014 user. All rights reserved.
//

#import "MyRectangle.h"

@interface MySquare : MyRectangle
{
    int size;
}

-(MySquare*)initWithSize:(int)size;
-(void)setSize:(int)size;
-(int)size;


@end
