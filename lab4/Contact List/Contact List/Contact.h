#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject
@property (assign) NSString *name;
@property (assign) NSString *email;
-(instancetype) initWithName: (NSString *) name andEmail: (NSString *) email;
@end

NS_ASSUME_NONNULL_END
