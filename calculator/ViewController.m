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
    
    myCalculator = [[Calculator alloc] init];
    
    
      _resultLabel.text = @" ";

}



-(IBAction) addButtonPressed {
    
    _firstNumberFloatValue = [self.firstNumberTextField.text floatValue];
    _secondNumberFloatValue = [self.secondNumberTextField.text floatValue];
    
    
   // _result = [self addOperation:_firstNumberFloatValue  secondNumberFloatValue:_secondNumberFloatValue];
    _result = [myCalculator addOperation:_firstNumberFloatValue secondNumberFloatValue:_secondNumberFloatValue];
    NSString *resultString = [NSString stringWithFormat:@"%f",_result];
    self.resultLabel.text = resultString;
    
}

-(IBAction) substractButtonPressed {
    
    _firstNumberFloatValue = [self.firstNumberTextField.text floatValue];
    _secondNumberFloatValue = [self.secondNumberTextField.text floatValue];
    
    _result = [myCalculator substractOperation:_firstNumberFloatValue secondNumberFloatValue: _secondNumberFloatValue];
    NSString *resultString = [NSString stringWithFormat:@"%f",_result];
    self.resultLabel.text = resultString;
    
    
}

-(IBAction) multiplyButtonPressed {
    
    _firstNumberFloatValue = [self.firstNumberTextField.text floatValue];
    _secondNumberFloatValue = [self.secondNumberTextField.text floatValue];
    
      _result = [myCalculator multiplyOperation:_firstNumberFloatValue secondNumberFloatValue: _secondNumberFloatValue];
    NSString *resultString = [NSString stringWithFormat:@"%f",_result];
    self.resultLabel.text = resultString;
    
    
}

-(IBAction) divideButtonPressed {
    
    _firstNumberFloatValue = [self.firstNumberTextField.text floatValue];
    _secondNumberFloatValue = [self.secondNumberTextField.text floatValue];
    
      _result = [myCalculator divideOperation:_firstNumberFloatValue secondNumberFloatValue: _secondNumberFloatValue];
    NSString *resultString = [NSString stringWithFormat:@"%f",_result];
    self.resultLabel.text = resultString;
    

    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
