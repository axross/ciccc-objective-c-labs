#import "ContactList.h"
#import "Contact.h"

@implementation ContactList
-(instancetype) init {
    if (self = [super init]) {
        _contacts = [[NSMutableArray alloc] init];
    }
    
    return self;
}
-(void) add: (NSString *) name andEmail: (NSString *) email {
    Contact *contact = [[Contact alloc] initWithName: name andEmail: email];
    
    [_contacts addObject: contact];
}
@end
