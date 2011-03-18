//
//  simpleCalculatorAppDelegate.h
//  simpleCalculator
//
//  Created by danielbas on 2011/3/18.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class simpleCalculatorViewController;

@interface simpleCalculatorAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet simpleCalculatorViewController *viewController;

@end
