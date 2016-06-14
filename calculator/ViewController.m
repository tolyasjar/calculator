//
//  ViewController.m
//  calculator
//
//  Created by Toleen Jaradat on 6/14/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UITextField *firstNumberTextField;
@property (nonatomic,weak) IBOutlet UITextField *secondNumberTextField;
@property (nonatomic,weak) IBOutlet UILabel *resultLabel;



// Do any additional setup after loading the view, typically from a nib.


@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
      _resultLabel.text = @" ";

}

// NSLog(@"%@", firstNumber);

-(IBAction) addButtonPressed {
    
    _firstNumberFloatValue = [self.firstNumberTextField.text floatValue];
    _secondNumberFloatValue = [self.secondNumberTextField.text floatValue];
    
    _result = [self addOperation:_firstNumberFloatValue  secondNumberFloatValue:_secondNumberFloatValue];
    NSString *resultString = [NSString stringWithFormat:@"%f",_result];
    self.resultLabel.text = resultString;
    
}

-(IBAction) substractButtonPressed {
    
    _firstNumberFloatValue = [self.firstNumberTextField.text floatValue];
    _secondNumberFloatValue = [self.secondNumberTextField.text floatValue];
    
    _result = [self substractOperation:_firstNumberFloatValue  secondNumberFloatValue:_secondNumberFloatValue];
    NSString *resultString = [NSString stringWithFormat:@"%f",_result];
    self.resultLabel.text = resultString;
    
    
}

-(IBAction) multiplyButtonPressed {
    
    _firstNumberFloatValue = [self.firstNumberTextField.text floatValue];
    _secondNumberFloatValue = [self.secondNumberTextField.text floatValue];
    
    _result = [self MultiplyOperation:_firstNumberFloatValue  secondNumberFloatValue:_secondNumberFloatValue];
    NSString *resultString = [NSString stringWithFormat:@"%f",_result];
    self.resultLabel.text = resultString;
    
    
}

-(IBAction) divideButtonPressed {
    
    _firstNumberFloatValue = [self.firstNumberTextField.text floatValue];
    _secondNumberFloatValue = [self.secondNumberTextField.text floatValue];
    
    _result = [self DivideOperation:_firstNumberFloatValue  secondNumberFloatValue:_secondNumberFloatValue];
    NSString *resultString = [NSString stringWithFormat:@"%f",_result];
    self.resultLabel.text = resultString;
    

    
}


-(float) addOperation :(float) number1 secondNumberFloatValue:(float) number2 {
    
    return  number1 + number2;
    
}

-(float) substractOperation :(float) number1 secondNumberFloatValue:(float) number2 {
    
    return  number1-number2;
    
}

-(float) MultiplyOperation :(float) number1 secondNumberFloatValue:(float) number2 {
    
    return  number1*number2;
    
}

-(float) DivideOperation :(float) number1 secondNumberFloatValue:(float) number2 {
    
    return  number1/number2;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
