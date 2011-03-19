//
//  simpleCalculatorViewController.h
//  simpleCalculator
//
//  Created by danielbas on 2011/3/18.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "simpleCalculator.h"
#import <AudioToolbox/AudioToolbox.h>
@interface simpleCalculatorViewController : UIViewController 
{
    IBOutlet UILabel *textLabel;
    simpleCalculator *sCalculator;
    
    UIButton *button1;
    UIButton *button2;
    UIButton *button3;
    UIButton *button4;
    UIButton *button5;
    UIButton *button6;
    UIButton *button7;
    UIButton *button8;
    UIButton *button9;
    UIButton *button0;
    UIButton *buttonDot;
    UIButton *buttonPlus;
    UIButton *buttonMinus;
    UIButton *buttonMultiply;
    UIButton *buttonDivide;
    UIButton *buttonEquals;
    UIButton *buttonReset;
    UIButton *buttonChangeSign;
    
}

@property (nonatomic, retain) IBOutlet UILabel *textLabel;
@property (nonatomic, retain) simpleCalculator *sCalculator;
@property (nonatomic, retain) UIButton *button1;
@property (nonatomic, retain) UIButton *button2;
@property (nonatomic, retain) UIButton *button3;
@property (nonatomic, retain) UIButton *button4;
@property (nonatomic, retain) UIButton *button5;
@property (nonatomic, retain) UIButton *button6;
@property (nonatomic, retain) UIButton *button7;
@property (nonatomic, retain) UIButton *button8;
@property (nonatomic, retain) UIButton *button9;
@property (nonatomic, retain) UIButton *button0;
@property (nonatomic, retain) UIButton *buttonDot;
@property (nonatomic, retain) UIButton *buttonPlus;
@property (nonatomic, retain) UIButton *buttonMinus;
@property (nonatomic, retain) UIButton *buttonMultiply;
@property (nonatomic, retain) UIButton *buttonDivide;
@property (nonatomic, retain) UIButton *buttonEquals;
@property (nonatomic, retain) UIButton *buttonReset;
@property (nonatomic, retain) UIButton *buttonChangeSign;

-(IBAction)buttonPressed:(id)sender;
@end


