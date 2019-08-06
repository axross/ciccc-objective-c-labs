#include <stdlib.h>
#import "Die.h"

@implementation Die
-(instancetype) initAndRoll {
    if (self = [super init]) {
        [self roll];
    }
    
    return self;
}
-(void) roll {
    _pip = arc4random_uniform(6) + 1;
}
-(int) asInt {
    return _pip;
}
-(NSString*) asString {
    switch (_pip) {
        case 1: return @"⚀";
        case 2: return @"⚁";
        case 3: return @"⚂";
        case 4: return @"⚃";
        case 5: return @"⚄";
        case 6: return @"⚅";
    }
    
    return @"";
}
@end
