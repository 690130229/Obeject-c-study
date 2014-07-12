#import <Foundation/Foundation.h>
static int t =0;

@interface Fraction:NSObject{
	int numerator;
	@public int denominator;
}
-(void)setNumerator:(int)numerator;
-(void)setDenominator:(int)denominator;
-(void)setNumerator:(int)numerator andDenominator:(int)denominator;

-(int)numerator;
-(int)denominator;

-(void)print;
+(void)t;
@end

