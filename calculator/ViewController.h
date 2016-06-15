//
//  ViewController.h
//  calculator
//
//  Created by Toleen Jaradat on 6/14/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController

{
    
   
    float _firstNumberFloatValue;
    float _secondNumberFloatValue;
    float _result;
    Calculator *myCalculator;// = [[Calculator alloc] init];
    
    
    
}
@end

