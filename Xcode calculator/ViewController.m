//
//  ViewController.m
//  Xcode calculator
//
//  Created by Admin on 21.03.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"
#import "Fraction.h"


@interface ViewController ()
@property (strong, nonatomic) Fraction *firstFraction;
@property (assign, nonatomic) BOOL denominatorFlag;
@property (strong, nonatomic) Fraction *secondFraction;
@property (assign, nonatomic) BOOL operationFlag;
@property (assign, nonatomic) NSInteger operation;
@property (weak, nonatomic) IBOutlet UILabel *result;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.firstFraction = [[Fraction alloc] init];
    self.secondFraction = [[Fraction alloc] init];
}

- (IBAction)buttonTap:(id)sender
{
    UIButton *button = (UIButton *)sender;
    switch (button.tag) {
        case 1001: {
            if (!self.operationFlag) {
                [self setFraction:self.firstFraction withNumber:1];
//                if (!self.denominatorFlag) {
//                    self.firstFraction.nominator =  (self.firstFraction.nominator * 10) +1;
//                    self.result.text = [NSString stringWithFormat:@"%i", self.firstFraction.nominator];
//                } else {
//                    self.firstFraction.denominator =  (self.firstFraction.denominator * 10) +1;
//                    self.result.text = [NSString stringWithFormat:@"%i / %i", self.firstFraction.nominator, self.firstFraction.denominator];
//                }
            } else {
                [self setFraction:self.secondFraction withNumber:1];
//                if (!self.denominatorFlag) {
//                    self.secondFraction.nominator =  (self.secondFraction.nominator * 10) +1;
//                    self.result.text = [NSString stringWithFormat:@"%i", self.secondFraction.nominator];
//                } else {
//                    self.secondFraction.denominator =  (self.secondFraction.denominator * 10) +1;
//                    self.result.text = [NSString stringWithFormat:@"%i / %i",self.secondFraction.nominator, self.secondFraction.denominator];
//                }
            }
            break;
        }
        case 1002: {
            if (!self.operationFlag) {
                [self setFraction:self.firstFraction withNumber:2];
            } else {
                [self setFraction:self.firstFraction withNumber:2];
            }
            break;
        }
        case 1003: {
            if (!self.operationFlag) {
                [self setFraction:self.firstFraction withNumber:3];
            }else {
                [self setFraction:self.firstFraction withNumber:3];
            }

            break;
        }
            
        case 1004: {
            if (!self.operationFlag) {
                [self setFraction:self.firstFraction withNumber:4];
                } else {
                [self setFraction:self.firstFraction withNumber:4];
                }
            break;
        }
        case 1005: {
            if (!self.operationFlag) {
                [self setFraction:self.firstFraction withNumber:5];
            }else {
                [self setFraction:self.firstFraction withNumber:5];
                }

            break;
        }
        case 1006: {
            if (!self.operationFlag) {
                [self setFraction:self.firstFraction withNumber:6];
                } else {
                [self setFraction:self.firstFraction withNumber:6];
                }

            break;
        }
        case 1007: {
            if (!self.operationFlag) {
                [self setFraction:self.firstFraction withNumber:7];
                } else {
                [self setFraction:self.firstFraction withNumber:7];
                }

            break;
        }
        case 1008: {
            if (!self.operationFlag) {
                [self setFraction:self.firstFraction withNumber:8];
                } else {
                [self setFraction:self.firstFraction withNumber:8];
                }

            break;
        }
            
        case 1009: {
            if (!self.operationFlag) {
                [self setFraction:self.firstFraction withNumber:9];
                } else {
                    [self setFraction:self.firstFraction withNumber:9];
                }

            break;
        }
         case 1000: {
            if (!self.operationFlag) {
               [self setFraction:self.firstFraction withNumber:0];
                } else {
                    [self setFraction:self.firstFraction withNumber:0];
                }

            break;
        }
        
        
        case 100 :{
            self.denominatorFlag = YES;
            break;
        }
        case 1500: {
            self.operationFlag = NO;
            self.denominatorFlag = NO;
            [self calculateAndOutput];
            break;
            
        }
        case 1100: {
            self.operationFlag = YES;
            self.denominatorFlag = NO;
            self.operation = button.tag;
            break;
        }case 1200: {
            self.operationFlag = YES;
            self.denominatorFlag = NO;
            self.operation = button.tag;
            break;
        }
        case 1300: {
            self.operationFlag = YES;
            self.denominatorFlag = NO;
            self.operation = button.tag;
            break;
        }
         case 1400: {
            self.operationFlag = YES;
            self.denominatorFlag = NO;
            self.operation = button.tag;
            break;
        }
        
            default:
            break;
        }
    
}

- (void)setFraction:(Fraction *)fraction withNumber:(NSInteger)number
{
    NSString *resultingString;
    if (!self.denominatorFlag) {
        fraction.nominator =  (fraction.nominator * 10) + number;
        resultingString = [NSString stringWithFormat:@"%i", fraction.nominator];
    } else {
        fraction.denominator =  (fraction.denominator * 10) + number;
        resultingString = [NSString stringWithFormat:@"%i / %i", fraction.nominator, fraction.denominator];
    }
    self.result.text = resultingString;
}

- (void)calculateAndOutput;
{
    switch (self.operation) {
        case 1100: {
            [self addFirstFraction:self.firstFraction  toSecondFraction:self.secondFraction];
            
            break;
        }
            
    
        case 1200: {
            [self minusFirstFraction:self.firstFraction  toSecondFraction:self.secondFraction];
            break;
        }
        case 1300: {
            [self multiplyFirstFraction:self.firstFraction  toSecondFraction:self.secondFraction];
            break;
        }
        case 1400: {
            [self divideFirstFraction:self.firstFraction  toSecondFraction:self.secondFraction];
            break;
        }
            default:
            break;
        }

    self.firstFraction = [[Fraction alloc] init];
    self.secondFraction = [[Fraction alloc] init];
}

- (Fraction *)addFirstFraction:(Fraction *)fractionA toSecondFraction:(Fraction *)fractionB
{
    Fraction *result = [[Fraction alloc] init];
    result.denominator = fractionA.denominator * fractionB.denominator;
    result.nominator = fractionA.nominator * fractionB.denominator + fractionB.nominator * fractionA.denominator;
    [result optimizeFraction];
    self.result.text = [NSString stringWithFormat:@"%i / %i", result.nominator, result.denominator];
    return result;
}
- (Fraction *)minusFirstFraction:(Fraction *)fractionA toSecondFraction:(Fraction *) fractionB
{
    Fraction *result1 = [[Fraction alloc] init];
    result1.denominator = fractionA.denominator * fractionB.denominator;
    result1.nominator = fractionA.nominator * fractionB.denominator - fractionB.nominator * fractionA.denominator;
    self.result.text = [NSString stringWithFormat:@"%i / %i", result1.nominator, result1.denominator];
    return result1;
}
- (Fraction *)multiplyFirstFraction:(Fraction *)fractionA toSecondFraction:(Fraction *) fractionB
{
    Fraction *result2 = [[Fraction alloc] init];
    result2.denominator = fractionA.denominator * fractionB.denominator;
    result2.nominator = fractionA.nominator *  fractionB.nominator;
    self.result.text = [NSString stringWithFormat:@"%i / %i", result2.nominator, result2.denominator];
    return result2;
}
- (Fraction *)divideFirstFraction:(Fraction *)fractionA toSecondFraction:(Fraction *) fractionB
{
    Fraction *result3 = [[Fraction alloc] init];
    result3.denominator = fractionA.denominator * fractionB.nominator;
    result3.nominator = fractionA.nominator *  fractionB.denominator;
    self.result.text = [NSString stringWithFormat:@"%i / %i", result3.nominator, result3.denominator];
    return result3;
}@end
