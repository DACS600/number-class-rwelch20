#import <Foundation/Foundation.h>

#import "Number.h"

int main (int argc, const char *argv[]) {
  @autoreleasepool
  {
    Number *myNum = [[Number alloc] init];
    int number;
    /*

    I COULD NOT FIGURE OUT HOW TO TAKE A CSTRING FROM SCANF, EVERYTHING ELSE FOR USER INPUT SHOULD WORK THOUGH.

    NSString *numString;
    const char *cStringNum;
    printf("Enter a number: ");

    while (true) {

      scanf("%i \n", &cStringNum);
      // I learned how to do this by online research
      numString = [NSString stringWithUTF8String: cStringNum];
      //checks to see that the number is valid
      if ([myNum numIsValid: numString])
        break;
      printf("That number is invalid. Please try again. ");
    }
    */
    printf("Enter a number: ");
    scanf("%i \n", &number);

    [myNum setNum: number];
    [myNum print];

    //Is Even calling
    if ([myNum isEven])
      printf("it is even. \n");
    else
      printf("it is odd. \n");

    //isPrime calling
    if ([myNum isPrime])
      printf("it is prime. \n");
    else
      printf("it is not prime. \n");

    //sumOFDigits calling
    printf("the sum of the digits is %i. \n", [myNum sumOfDigits]);

    //numOfDigits calling
    printf("there are %i digits. \n", [myNum numberOfDigits]);

    //largestDigit calling
    printf("the largest digit is %i. \n", [myNum largestDigit]);

    //isPerfect calling
    if ([myNum isPerfectSquare])
      printf("it is a perfect square. \n");
    else
      printf("it is not a perfect square. \n");

    //nearestPerfectSquare
    printf("the nearest perfect square is %i. \n", [myNum nearestPerfectSquare]);
  }
  return 0;
}
