#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Application : NSObject
@property (strong) NSArray *dice;
@property (strong) NSMutableSet *heldDice;
-(void) start;
@end

NS_ASSUME_NONNULL_END
