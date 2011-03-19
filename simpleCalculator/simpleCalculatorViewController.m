//
//  simpleCalculatorViewController.m
//  simpleCalculator
//
//  Created by danielbas on 2011/3/18.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "simpleCalculatorViewController.h"


#define smallButtonWidth   72
#define smallButtonHeight  37
#define wideButtonWidth    151
#define wideButtonHeight   37
#define tallButtonWidth    72
#define tallButtonHeight   85

#define resetButtonX       7
#define resetButtonY       129

#define changeSignButtonX  86
#define changeSignButtonY  129

#define divideButtonX      166
#define divideButtonY      129

#define multiplyButtonX    245
#define multiplyButtonY    129

#define button7_X          7
#define button7_Y          174

#define button8_X          86
#define button8_Y          174

#define button9_X          166
#define button9_Y          174

#define minusButtonX       245
#define minusButtonY       174


#define button4_X          7
#define button4_Y          219

#define button5_X          86
#define button5_Y          219

#define button6_X          166
#define button6_Y          219

#define plusButtonX        245
#define plusButtonY        219

#define button1_X          7
#define button1_Y          269

#define button2_X          86
#define button2_Y          269

#define button3_X          166
#define button3_Y          269

#define equalsButtonX      245
#define equalsButtonY      269

#define button0_X          7
#define button0_Y          317

#define dotButtonX         165
#define dotButtonY         317

#define BUTTON_0_TAG            0
#define BUTTON_1_TAG            1
#define BUTTON_2_TAG            2
#define BUTTON_3_TAG            3
#define BUTTON_4_TAG            4
#define BUTTON_5_TAG            5
#define BUTTON_6_TAG            6
#define BUTTON_7_TAG            7
#define BUTTON_8_TAG            8
#define BUTTON_9_TAG            9
#define BUTTON_DOT_TAG          10
#define BUTTON_RESET_TAG        11
#define BUTTON_CHANGESIGN_TAG   12
#define BUTTON_PLUS_TAG         13   
#define BUTTON_MINUS_TAG        14
#define BUTTON_MULTIPLY_TAG     15
#define BUTTON_DIVIDE_TAG       16
#define BUTTON_EQUALS_TAG       17

@implementation simpleCalculatorViewController
@synthesize textLabel;
@synthesize sCalculator;
@synthesize button1;
@synthesize button2;
@synthesize button3;
@synthesize button4;
@synthesize button5;
@synthesize button6;
@synthesize button7;
@synthesize button8;
@synthesize button9;
@synthesize button0;
@synthesize buttonDot;
@synthesize buttonPlus;
@synthesize buttonMinus;
@synthesize buttonMultiply;
@synthesize buttonDivide;
@synthesize buttonReset;
@synthesize buttonEquals;
@synthesize buttonChangeSign;

#pragma mark -

- (void)playSound {
    CFBundleRef mainBundle;
    CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	mainBundle = CFBundleGetMainBundle ();
	soundFileURLRef  =	CFBundleCopyResourceURL(
												CFBundleGetBundleWithIdentifier(CFSTR("com.apple.UIKit")),
												CFSTR ("Tock"),CFSTR ("aiff"),NULL);
	AudioServicesCreateSystemSoundID (
									  soundFileURLRef,
									  &soundFileObject
									  );
	AudioServicesPlaySystemSound (soundFileObject);
}

-(IBAction)buttonPressed:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    [sCalculator input:[btn titleForState:UIControlStateNormal]];
    //NSLog(@"%@",[btn titleForState:UIControlStateNormal]);
    NSLog(@"%@",[sCalculator displayValue]);
    [textLabel setText:[sCalculator displayValue]];
    [self playSound];

}

-(void)initUILayout
{
    button0 =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button0.userInteractionEnabled = true;
    button0.tag = BUTTON_0_TAG;
    [button0 setTitle:@"0" forState:UIControlStateNormal];
	button0.frame = CGRectMake(button0_X, button0_Y, wideButtonWidth,wideButtonHeight);
	[button0 addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:button0];
    
    
	button1 =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.userInteractionEnabled = true;
    button1.tag = BUTTON_1_TAG;
    [button1 setTitle:@"1" forState:UIControlStateNormal];
	button1.frame = CGRectMake(button1_X, button1_Y, smallButtonWidth,smallButtonHeight);
	[button1 addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:button1];

    button2 =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.userInteractionEnabled = true;
    button2.tag = BUTTON_2_TAG;
    [button2 setTitle:@"2" forState:UIControlStateNormal];
	button2.frame = CGRectMake(button2_X, button2_Y, smallButtonWidth,smallButtonHeight);
	[button2 addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:button2];
    
    button3 =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.userInteractionEnabled = true;
    button3.tag = BUTTON_3_TAG;
    [button3 setTitle:@"3" forState:UIControlStateNormal];
	button3.frame = CGRectMake(button3_X, button3_Y, smallButtonWidth,smallButtonHeight);
	[button3 addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:button3];
    
    button4 =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button4.userInteractionEnabled = true;
    button4.tag = BUTTON_4_TAG;
    [button4 setTitle:@"4" forState:UIControlStateNormal];
	button4.frame = CGRectMake(button4_X, button4_Y, smallButtonWidth,smallButtonHeight);
	[button4 addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:button4];
    
    button5 =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button5.userInteractionEnabled = true;
    button5.tag = BUTTON_5_TAG;
    [button5 setTitle:@"5" forState:UIControlStateNormal];
	button5.frame = CGRectMake(button5_X, button5_Y, smallButtonWidth,smallButtonHeight);
	[button5 addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:button5];
    
    button6 =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button6.userInteractionEnabled = true;
    button6.tag = BUTTON_6_TAG;
    [button6 setTitle:@"6" forState:UIControlStateNormal];
	button6.frame = CGRectMake(button6_X, button6_Y, smallButtonWidth,smallButtonHeight);
	[button6 addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:button6];
    
    button7 =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button7.userInteractionEnabled = true;
    button7.tag = BUTTON_7_TAG;
    [button7 setTitle:@"7" forState:UIControlStateNormal];
	button7.frame = CGRectMake(button7_X, button7_Y, smallButtonWidth,smallButtonHeight);
	[button7 addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:button7];
    
    button8 =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button8.userInteractionEnabled = true;
    button8.tag = BUTTON_8_TAG;
    [button8 setTitle:@"8" forState:UIControlStateNormal];
	button8.frame = CGRectMake(button8_X, button8_Y, smallButtonWidth,smallButtonHeight);
	[button8 addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:button8];
    
    button9 =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button9.userInteractionEnabled = true;
    button9.tag = BUTTON_9_TAG;
    [button9 setTitle:@"9" forState:UIControlStateNormal];
	button9.frame = CGRectMake(button9_X, button9_Y, smallButtonWidth,smallButtonHeight);
	[button9 addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:button9];
    
    buttonDot =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonDot.userInteractionEnabled = true;
    buttonDot.tag = BUTTON_DOT_TAG;
    [buttonDot setTitle:@"." forState:UIControlStateNormal];
	buttonDot.frame = CGRectMake(dotButtonX, dotButtonY, smallButtonWidth,smallButtonHeight);
	[buttonDot addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:buttonDot];
    
    buttonReset =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonReset.userInteractionEnabled = true;
    buttonReset.tag = BUTTON_RESET_TAG;
    [buttonReset setTitle:@"A/C" forState:UIControlStateNormal];
	buttonReset.frame = CGRectMake(resetButtonX, resetButtonY, smallButtonWidth,smallButtonHeight);
	[buttonReset addTarget:self action:@selector(buttonPressed:)
        forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:buttonReset];
    
    buttonChangeSign =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonChangeSign.userInteractionEnabled = true;
    buttonChangeSign.tag = BUTTON_CHANGESIGN_TAG;
    [buttonChangeSign setTitle:@"+/-" forState:UIControlStateNormal];
	buttonChangeSign.frame = CGRectMake(changeSignButtonX, changeSignButtonY, smallButtonWidth,smallButtonHeight);
	[buttonChangeSign addTarget:self action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:buttonChangeSign];
    
    buttonDivide =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonDivide.userInteractionEnabled = true;
    buttonDivide.tag = BUTTON_DIVIDE_TAG;
    [buttonDivide setTitle:@"/" forState:UIControlStateNormal];
	buttonDivide.frame = CGRectMake(divideButtonX, divideButtonY, smallButtonWidth,smallButtonHeight);
	[buttonDivide addTarget:self action:@selector(buttonPressed:)
               forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:buttonDivide];
    
    buttonMultiply =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonMultiply.userInteractionEnabled = true;
    buttonMultiply.tag = BUTTON_MULTIPLY_TAG;
    [buttonMultiply setTitle:@"x" forState:UIControlStateNormal];
	buttonMultiply.frame = CGRectMake(multiplyButtonX, multiplyButtonY, smallButtonWidth,smallButtonHeight);
	[buttonMultiply addTarget:self action:@selector(buttonPressed:)
         forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:buttonMultiply];
    
    buttonMinus =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonMinus.userInteractionEnabled = true;
    buttonMinus.tag = BUTTON_MINUS_TAG;
    [buttonMinus setTitle:@"-" forState:UIControlStateNormal];
	buttonMinus.frame = CGRectMake(minusButtonX, minusButtonY, smallButtonWidth,smallButtonHeight);
	[buttonMinus addTarget:self action:@selector(buttonPressed:)
             forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:buttonMinus];
    
    buttonPlus =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonPlus.userInteractionEnabled = true;
    buttonPlus.tag = BUTTON_PLUS_TAG;
    [buttonPlus setTitle:@"+" forState:UIControlStateNormal];
	buttonPlus.frame = CGRectMake(plusButtonX, plusButtonY, smallButtonWidth,smallButtonHeight);
	[buttonPlus addTarget:self action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:buttonPlus];
    
    buttonEquals =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buttonEquals.userInteractionEnabled = true;
    buttonEquals.tag = BUTTON_EQUALS_TAG;
    [buttonEquals setTitle:@"=" forState:UIControlStateNormal];
	buttonEquals.frame = CGRectMake(equalsButtonX, equalsButtonY, tallButtonWidth,tallButtonHeight);
	[buttonEquals addTarget:self action:@selector(buttonPressed:)
         forControlEvents:UIControlEventTouchUpInside];
	[[self view] addSubview:buttonEquals];
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]))
    {
        //initial
    }
    return self;
    
}

- (void)dealloc
{
    [button1 release];
    [button2 release];
    [button3 release];
    [button4 release];
    [button5 release];
    [button6 release];
    [button7 release];
    [button8 release];
    [button9 release];
    [button0 release];
    [buttonDot release];
    [buttonPlus release];
    [buttonMinus release];
    [buttonMultiply release];
    [buttonDivide release];
    [buttonEquals release];
    [buttonReset release];
    [buttonChangeSign release];
    [sCalculator release];
    [super dealloc];
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    sCalculator = [simpleCalculator new];
    [self initUILayout];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
