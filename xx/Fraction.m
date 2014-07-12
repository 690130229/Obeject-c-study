#import "Fraction.h"
@implementation Fraction
-(void)setNumerator:(int)n
{
	numerator = n;
}

-(void)setDenominator:(int)d 
{
	denominator = d;
}

-(void)setNumerator:(int)n andDenominator:(int)d
{
	numerator = n;
	denominator = d;
}

-(int)numerator
{
	return numerator;
}

-(int)denominator
{
	return denominator;
}

-(void)print
{
	printf("%d %d\n",numerator,denominator );
}

-(void)m 
{
	printf("-m,The class variable is %d\n", ++t);
}

+(void)t
{
	printf("+t The class variable is %d\n", ++t);
}

@end
