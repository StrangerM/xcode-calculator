//
//  Fraction.h
//  Xcode calculator
//
//  Created by Admin on 21.03.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property (assign, nonatomic) NSInteger denominator;
@property (assign, nonatomic) NSInteger nominator;


- (NSInteger)integerPart;
- (void)optimizeFraction;
@end
