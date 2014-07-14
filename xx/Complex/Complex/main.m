//
//  main.m
//  Complex
//
//  Created by user on 7/12/14.
//  Copyright (c) 2014 user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"
#import "MyRectangle.h"

#import <dlfcn.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Complex *comp = [[Complex alloc] initWithReal:1.5 andImaginary:3.5];
        id number = comp;
        [number print];
        
        NSLog(@"Hello, World!");
        
        //To call the dylib
        
        NSString *dyPath = @"/Users/user/Documents/leslie/dylib/MyRectangle.dylib";
        void *handle = dlopen(dyPath.UTF8String, RTLD_LOCAL);
        if (!handle) {
            NSLog(@"Open dylib failure");
            
            //MyRectangle *myRec = [[MyRectangle alloc] initWithWidth:3 andHeight:4];
            //[myRec area];
            exit(EXIT_FAILURE);
        }
        
        
        Class MyRectangle_class = objc_getClass("MyRectangle");
        if (!MyRectangle_class) {
            NSLog(@"Unable to get MyRectangle class");
            exit(EXIT_FAILURE);
        }
        
        MyRectangle *myRec = [[MyRectangle_class alloc] initWithWidth:2 andHeight:4];
        [myRec area];
        
        
        NSString *s1 = [NSString stringWithFormat:@"You height is %d weight is %d",168,68];
        NSLog(@"%@",s1);
        NSString *s2 = @"You height is 168 weight is 68";
        
        if([s2 isEqualToString:s1] == YES)
        {
            NSLog(@"Equal YES");
        }
        else
        {
            NSLog(@"Equal NO");
        }
        
        NSMutableString *ms1 = [NSMutableString stringWithCapacity:100];
        [ms1 appendString:@"You height is"];
        [ms1 appendFormat:@"%d weight is %d", 168,68];
        
        NSLog(@"%@",ms1);
        
        NSRange range = [ms1 rangeOfString:@"weight is 68"];
        [ms1 deleteCharactersInRange:range];
        NSLog(@"%@",ms1);
        
        //
        
        NSArray *array = [NSArray arrayWithObjects:@"one",@"two",@"three",@"four",nil];
        int count = [array count];
        int i;
        for(i=0; i<count; ++i)
        {
            NSLog(@"%@",[array objectAtIndex:i]);
            
        }
         
        
        
        NSString *s = @"iphone,android,windows phone7";
        array = [s componentsSeparatedByString:@","];
        NSLog(@"%@",array);
        
        // iterator
        NSMutableArray *mArrary = [NSMutableArray arrayWithCapacity:10];
        [mArrary addObject:@"apple"];
        [mArrary addObject:@"google"];
        [mArrary addObject:@"Microsoft"];
        
        s = [mArrary componentsJoinedByString:@","];
        NSLog(@"%@",s);
        
        NSEnumerator *e = [mArrary objectEnumerator];
        id obj;
        while (obj = [e nextObject]) {
            NSLog(@"%@",obj);
        }
        
        for (NSString *ms in mArrary) {
            NSLog(@"%@",ms);
        }
        
        //key-value   value-key
        NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"apple",@"A",@"google",@"hah", nil];
        NSLog(@"%@",[dic objectForKey:@"A"]);
        
        //set
        NSRect rect = NSMakeRect(1, 2, 30, 50);
        NSValue *v = [NSValue valueWithBytes:&rect objCType:@encode(NSRect)];
        
        NSMutableArray *mArray = [NSMutableArray arrayWithCapacity:3];
        [mArray addObject:v];
        NSRect rect2;
        [[mArray objectAtIndex:0] getValue:&rect2];
        NSLog(@"%f",rect2.size.width);
        
        //
        NSDate *date = [NSDate date];
        NSLog(@"Today is %@!", date);
        
        NSCalendarDate *date2 = [NSCalendarDate dateWithString:@"26 Apr 2008" calendarFormat:@"%d %b %Y"];
        NSLog(@"Today is %@!",date2);
        
        //
        const char *cs = "He is very high";
        NSData *data = [NSData dataWithBytes:cs length:strlen(cs)+1];
        NSLog(@"%@",data);//NSData store the types
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}

