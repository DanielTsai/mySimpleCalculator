//
//  simpleCalculator.h
//  simpleCalculator
//
//  Created by danielbas on 2011/3/19.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface simpleCalculator : NSObject {
  @private
    NSMutableString *_display;
    double           _operand;
    NSString        *_operator;

}

-init;
-(void) dealloc;
-(void) input:(NSString*) character;
-(NSString *) displayValue;

@end
