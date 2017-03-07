//
//  ContactList.m
//  ContactList
//
//  Created by Pierre Binon on 2017-03-07.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "ContactList.h"



@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _array = [NSMutableArray new];
    }
    return self;
}


- (void) addContact: (Contact *) newContact {
    [self.array addObject: newContact];
}


- (void) displayData {
    
    for (Contact *contact in self.array) {
        
        NSInteger i = [self.array indexOfObject: contact];        
        NSLog (@"%ld: <%@, %@>", (long) i, contact.name, contact.email);
    }
}


@end
