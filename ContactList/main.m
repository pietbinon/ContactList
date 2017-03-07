//
//  main.m
//  ContactList
//
//  Created by Pierre Binon on 2017-03-07.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *collector = [[InputCollector alloc] init];
        ContactList *list = [[ContactList alloc] init];
        
        while (YES) {
            
            NSString *inputString = [collector inputForPrompt: @"What would you like to do next?\n1. Create a new contact list (type new)\n2. List all contacts (type list)\n3. Exit Application (type quit)\n"];
            
            if ([inputString isEqualToString: @"quit"] || [inputString isEqualToString: @"QUIT"])
                break;
            
            if ([inputString isEqualToString: @"new"]) {
                
                Contact *contact = [[Contact alloc] init];
                
                NSString *username = [collector inputForPrompt: @"Enter the full name: "];
                contact.name = username;
                
                NSString *emailAddress = [collector inputForPrompt: @"Enter the email address: "];
                contact.email = emailAddress;
                
                [list addContact: contact];
            }
            
            if ([inputString isEqualToString: @"list"]) {
                [list displayData];
            }
        }
    }
    return 0;
}
