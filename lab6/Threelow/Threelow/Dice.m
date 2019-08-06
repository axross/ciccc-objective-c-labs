#include <stdlib.h>
#import "Dice.h"
#import "DicePip.h"

@implementation Dice
-(instancetype) initAndRoll {
    if (self = [super init]) {
        [self roll];
    }
    
    return self;
}
-(void) roll {
    int intValue = arc4random_uniform(5) + 1;
    
    _pip = [[DicePip alloc] initWithValue: intValue];
}
@end
