//
//  Fraction.m
//  Xcode calculator
//
//  Created by Admin on 21.03.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

- (NSInteger)integerPart
{
    NSInteger result;
    result = self.nominator % self.denominator;
    return result;
}

- (void)optimizeFraction
{
    
}

@end
