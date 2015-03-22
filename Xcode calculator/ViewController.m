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
@property (strong, nonatomic) Fraction *secondFraction;
@property (assign, nonatomic) BOOL operationFlag;
@property (assign, nonatomic) NSInteger operation;
@property (weak, nonatomic) IBOutlet UILabel *result;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

    
- (IBAction)buttonTap:(id)sender
{
    UIButton *button = (UIButton *)sender;
    switch (button.tag) {
        case 1001: {
            if (self.operationFlag) {
                self.secondFraction;
            } else {
                self.firstFraction;
                
            }
            break;
        }
        case 1002: {
            if (self.operationFlag) {
                self.secondFraction;
            } else {
                self.firstFraction;
                
            }
            break;
        }
        case 1003: {
            if (self.operationFlag) {
                self.secondFraction;
            } else {
                self.firstFraction;
                
            }
            break;
        }
        case 1004: {
            if (self.operationFlag) {
                self.secondFraction;
            } else {
                self.firstFraction;
                
            }
            break;
        }
        case 1005: {
            if (self.operationFlag) {
                self.secondFraction;
            } else {
                self.firstFraction;
                
            }
            break;
        } case 1006: {
            if (self.operationFlag) {
                self.secondFraction;
            } else {
                self.firstFraction;
                
            }
            break;
        }
        case 1007: {
            if (self.operationFlag) {
                self.secondFraction;
            } else {
                self.firstFraction;
                
            }
            break;
        }
        case 1008: {
            if (self.operationFlag) {
                self.secondFraction;
            } else {
                self.firstFraction;
                
            }
            break;
        }
            
        case 1009: {
            if (self.operationFlag) {
                self.secondFraction;
            } else {
                self.firstFraction;
                
            }
            break;
        } case 1000: {
            if (self.operationFlag) {
                self.secondFraction;
            } else {
                self.firstFraction;
                
            }
            break;
        }
        case 1100: {
            self.operationFlag = YES;
            self.operation = button.tag;
            break;
        }
        case 1500: {
            self.operationFlag = NO;
            [self calculateAndOutput];
            break;
        }
        default:
            break;
    }
}

- (void)calculateAndOutput
{
    switch (self.operation) {
        case 1100: {
            
            break;
        }
        default:
            break;
    }
}

- (Fraction *)addFirstFraction:(Fraction *)fractionA toSecondFraction:(Fraction *)fractionB
{
    Fraction *result;
    result.denominator = fractionA.denominator * fractionB.denominator;
    result.nominator = fractionA.nominator * fractionB.denominator + fractionB.nominator * fractionA.denominator;
    [result optimizeFraction];
    return result;
}

@end
