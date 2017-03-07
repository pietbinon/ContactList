//
//  InputCollector.h
//  ContactList
//
//  Created by Pierre Binon on 2017-03-07.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface InputCollector : NSObject

- (NSString *) inputForPrompt: (NSString *) promptString;

@end
