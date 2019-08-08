#import "Application.h"
#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

@implementation Application
-(instancetype) initWithContactList: (ContactList *) contactList {
    if (self = [super init]) {
        _inputCollector = [[InputCollector alloc] init];
        _contactList = contactList;
    }
    
    return self;
}
-(void) start {
    while (true) {
        NSString *mode = [[_inputCollector inputForPrompt: @"What would you like to do next?\n  new  - Create a new contact\n  list - List all contacts\n  quit - Exit application\n\n> "] stringByTrimmingCharactersInSet:
                              [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        if ([mode isEqual: @"quit"]) {
            NSLog(@"Bye bye!");
            
            break;
        }
        
        if ([mode isEqual: @"new"]) {
            [self addNewContact];
        }
        
        if ([mode isEqual: @"list"]) {
            [self list];
        }
        
        NSLog(@"What you inputted is not recognizable.");
    }
}
-(void) addNewContact {
    NSLog(@"Okay!\n");
    
    NSString *name = [[_inputCollector inputForPrompt: @"What's the name?\n\n> "] stringByTrimmingCharactersInSet:
                      [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *email = [[_inputCollector inputForPrompt: @"What's his/her email?\n\n> "] stringByTrimmingCharactersInSet:
                          [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    [_contactList add: name andEmail: email];
}
-(void) list {
    NSLog(@"Here is contacts registered:");
    
    for (int i = 0; i < [_contactList.contacts count]; i++) {
        Contact *contact = _contactList.contacts[i];
        
        NSLog(@"  %d: %@ (%@)", i + 1, contact.name, contact.email);
    }
}
@end
