//Interface of Number

#import <Foundation/Foundation.h>

@interface Number : NSObject
{
  int num;
}
-(void) print;
-(void) setNum: (int) x;
-(bool) isEven;
-(bool) isPrime;
-(int) sumOfDigits;
-(int) numberOfDigits;
-(int) largestDigit;
-(bool) isPerfectSquare;
-(bool) isPerfectSquare: (int) a;
-(int) absVal: (int) a;
-(int) nearestPerfectSquare;
-(bool) numIsValid: (NSString *) numStr;

@end
