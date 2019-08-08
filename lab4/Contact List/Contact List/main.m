#import <Foundation/Foundation.h>
#import "ContactList.h"
#import "Application.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        
        ContactList *contactList = [[ContactList alloc] init];
        Application *application = [[Application alloc] initWithContactList: contactList];
        
        [application start];
    }
    return 0;
}
