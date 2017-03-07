//
//  InputCollector.m
//  ContactList
//
//  Created by Pierre Binon on 2017-03-07.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "InputCollector.h"



@implementation InputCollector

- (NSString *) inputForPrompt: (NSString *) promptString {
    
    printf("%s",[promptString UTF8String]);
    
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithCString: inputChars encoding: NSUTF8StringEncoding];
    NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
}

@end
