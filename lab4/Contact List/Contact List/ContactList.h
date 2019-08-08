#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject
@property (strong) NSMutableArray *contacts;
-(instancetype) init;
-(void) add: (NSString *) name andEmail: (NSString *) email;
@end

NS_ASSUME_NONNULL_END
