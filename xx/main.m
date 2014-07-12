//
//  main.m
//  xx
//
//  Created by user on 5/25/14.
//  Copyright (c) 2014 user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "greet.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        /*
        NSLog(@"Hello, World!");
        int n = 5;
        NSNumber *numberObject = [NSNumber numberWithInt:n];
        NSLog(@"The NSNumber is %@",numberObject);
        int y = [numberObject intValue];
        NSLog(@"The int value is %d",y);
        
        NSString *myString = @"My String\n";
        
        NSString *anotherString = [NSString stringWithFormat:@"%d %@",1,@"String"];
        
        NSString *fromString = [NSString stringWithCString:"A C String" encoding:NSASCIIStringEncoding];
        
        NSLog(@"The myString is %@",myString);
        NSLog(@"The anotherString is %@",anotherString);
        NSLog(@"The fromString is %@",fromString);
        
        NSString *testString = @"hello,leslie";
        NSString *revisedString = [testString uppercaseString];
        NSLog(@"The value of revisedString is %@",revisedString);
        
        greet *gre = [[greet alloc] init];
        [gre  setSomeString:@"I come from main"];
        [gre sayHello];
        
        NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"someObject",@"anObject",
                                    @"Hello",@"hellostring",nil];
        NSString *storedString = [dictionary objectForKey:@"anObject"];
        NSLog(@"storedString is %@",storedString);
        
        //2014-06-14
        NSArray *array = @[@"string",@42,[NSNull null],@"haha",[NSNull null]];
        for (id object in array) {
            if (object == [NSNull null]) {
                NSLog(@"Found a null object");
            }
        }
        
        //using block
        void (^simpleBlock)(void);
        simpleBlock = ^{
            NSLog(@"This is a block");
        };
        
        simpleBlock();
        
        double (^multiplyTwoValues)(double,double);
        multiplyTwoValues = ^(double firstValue, double secondValue){
            return firstValue*secondValue;
        };
        double result = multiplyTwoValues(2,4);
        NSLog(@"The result is %f",result);
        
        __block int anInteger = 42;
        void (^testBlock)(void) = ^{
            anInteger = 100;
            NSLog(@"Integer is %i",anInteger);
        };
        //anInteger = 84;
        testBlock();
        
        */
        #import "Fraction.h"
         Fraction *frac = [[Fraction alloc] init];
    [frac setNumerator:3 andDenominator:5];
    [frac print];
    [Fraction t];
    [frac m];
    [frac release];

     
        
    }
         
        
    return 0;
}

