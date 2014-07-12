//
//  greet.h
//  xx
//
//  Created by user on 5/29/14.
//  Copyright (c) 2014 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface greet : NSObject
{
    NSString *_myNonProperty;
}
@property NSString* someString;
-(void)sayHello;
-(void)saySomething:(NSString*)greeting;
@end
