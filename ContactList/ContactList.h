//
//  ContactList.h
//  ContactList
//
//  Created by Pierre Binon on 2017-03-07.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"



@interface ContactList : NSObject

@property (nonatomic) NSMutableArray<Contact*> *array;

- (void) addContact: (Contact *) newContact;
- (void) displayData;

@end
