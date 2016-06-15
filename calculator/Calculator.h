//
//  Calculator.h
//  calculator
//
//  Created by Toleen Jaradat on 6/15/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

-(float) addOperation :(float) number1 secondNumberFloatValue:(float) number2;
-(float) substractOperation :(float) number1 secondNumberFloatValue:(float) number2;
-(float) multiplyOperation :(float) number1 secondNumberFloatValue:(float) number2;
-(float) divideOperation :(float) number1 secondNumberFloatValue:(float) number2;

@end
