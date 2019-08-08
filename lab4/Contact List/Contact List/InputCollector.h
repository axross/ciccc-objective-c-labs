#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject
-(instancetype) init;
-(NSString*) inputForPrompt: (NSString*) input;
@end

NS_ASSUME_NONNULL_END
