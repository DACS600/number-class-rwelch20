//Implementation of number

#import "Number.h"

@implementation Number

-(id) init
{
  self = [super init];

  if (self)
  {
    num = 1;
  }
  return self;
}

//print method
-(void) print
{
  printf("Your number is: %i \n", num);
}

//setter
-(void) setNum: (int) x
{
  num = x;
}

//isEven method
-(bool) isEven
{
  return (num%2 == 0);
}

  //isPrime method
-(bool) isPrime
  {
    //tests the specific case of the number being 0
    if (num == 0)
      return false;
    for (int i = 2; i < num/2; i--) {
      if (num%i == 0)
        return false;
    }
    return true;
  }

  //sumOfDigits method
-(int) sumOfDigits
{
  int sum = 0;
  //for negative numbers I am not interpreting the "-" in a negative number to be a digit
  int numDup = [self absVal: num];
  while (numDup > 0) {
    sum = sum + numDup%10;
    numDup = numDup/10;
  }
  return sum;
}

//numOfDigits method
-(int) numberOfDigits
{
  int numOfDig = 1;
  //for negative numbers I am not interpreting the "-" in a negative number to be a digit
  int numDup = [self absVal: num];
  while (numDup > 9) {
    numOfDig++;
    numDup = numDup/10;
  }
  return numOfDig;
}

//largestDigit method
-(int) largestDigit
{
 int numDup = [self absVal: num];
 int big = numDup%10;
 numDup = numDup/10;
 while (numDup > 0) {
   int nextDig = numDup%10;
   if (nextDig > big) {
     big = nextDig;
   }
   numDup = numDup/10;
 }
 return big;
}

//isPerfectSquare method
-(bool) isPerfectSquare
{
  int i = 0;
  while (num  >= i*i) {
    if (num == i*i)
      return true;
    i++;
  }
  return false;
}

//overwritten isPerfect Square method that takes arguments
-(bool) isPerfectSquare: (int) a
{
  int i = 0;
  while (a  >= i*i) {
    if (a == i*i)
      return true;
    i++;
  }
  return false;
}

//nearestPerfectSquare method
-(int) nearestPerfectSquare
{
  int change = 0;
  while (true) {
    if ([self isPerfectSquare: num+change])
      return num+change;
    else if ([self isPerfectSquare: num-change])
      return num-change;
    change++;
  }
}

//absVal function
-(int) absVal: (int) a
{
  if (num < 0)
    return -num;
  return num;
}


//checks to see if the number that the user inputs is valid
-(bool) numIsValid: (NSString *) numStr
{
  int len = [numStr length];
  NSLog(@"%i", len);
  for (int i = 0; i < len; i++) {
    NSString *charAtIndex = [numStr substringWithRange:NSMakeRange(i, 1)];
    NSLog(@"%@", charAtIndex);
    if (!([charAtIndex isEqualToString:@"0"] || [charAtIndex isEqualToString:@"1"] || [charAtIndex isEqualToString:@"2"] || [charAtIndex isEqualToString:@"3"] || [charAtIndex isEqualToString:@"4"] || [charAtIndex isEqualToString:@"5"] || [charAtIndex isEqualToString:@"6"] || [charAtIndex isEqualToString:@"7"] || [charAtIndex isEqualToString:@"8"] || [charAtIndex isEqualToString:@"9"]))
      return false;
  }
  return true;
}

@end
