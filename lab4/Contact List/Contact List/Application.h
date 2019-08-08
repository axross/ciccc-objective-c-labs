#import <Foundation/Foundation.h>
#import "ContactList.h"
#import "InputCollector.h"

NS_ASSUME_NONNULL_BEGIN

@interface Application : NSObject
@property (strong) InputCollector *inputCollector;
@property (assign) ContactList *contactList;
-(instancetype) initWithContactList: (ContactList *) contactList;
-(void) start;
-(void) addNewContact;
-(void) list;
@end

NS_ASSUME_NONNULL_END
