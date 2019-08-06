#import <Foundation/Foundation.h>
#import "DicePip.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject
@property (strong) DicePip *pip;
-(instancetype) initAndRoll;
-(void) roll;
@end

NS_ASSUME_NONNULL_END
