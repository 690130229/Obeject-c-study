#import "Fraction.h"
#import "DenominatorNotZeroException.h"
@implementation Fraction
-(void)setNumerator:(int)n
{
	numerator = n;
}

-(void)setDenominator:(int)d 
{
    if (0 == d) {
        NSException *e = [DenominatorNotZeroException exceptionWithName:@"DenominatorNotZeroException"
                                                                 reason:@"The denominator can't be 0!"
                                                               userInfo:nil];
        @throw e;
    }
	denominator = d;
}

-(void)setNumerator:(int)n andDenominator:(int)d
{
    if (0 == d) {
        NSException *e = [DenominatorNotZeroException exceptionWithName:@"DenominatorNotZeroException"
                                                                 reason:@"The denominator can't be 0!"
                                                               userInfo:nil];
        @throw e;
    }
    
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

-(id) init
{
    self = [super init];
    return self;
}

-(Fraction*) initWithNumerator:(int)n  andDenominator:(int)d
{
    self = [self init];
    if(self)
    {
        [self setNumerator:n  andDenominator:d ];
    }
    return self;
}

-(NSString*)description
{
    return @"I am a Fraction";
}



@end
