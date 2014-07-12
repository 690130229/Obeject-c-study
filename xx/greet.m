//
//  greet.m
//  xx
//
//  Created by user on 5/29/14.
//  Copyright (c) 2014 user. All rights reserved.
//

#import "greet.h"

@implementation greet
-(void)sayHello
{
    [self saySomething:@"hello,this is from sayHello"];
}

-(void)saySomething:(NSString *)greeting
{
    //NSLog(@"%@ || and someStrring is %@",greeting,[self someString]);
    NSLog(@"%@ || and someStrring is %@ || non property is %@",greeting,_someString,_myNonProperty);
}
/*
-(void)someString
{
    NSString *myString = @"comes from functon/someString";
    
    [self setSomeString:myString];
}
 */
-(id)init
{
    self = [super init];
    
    if(self)
    {
        //initialize instance variables here
        _myNonProperty = @"haha, i come from init";
    }
    
    return self;
}
@end
