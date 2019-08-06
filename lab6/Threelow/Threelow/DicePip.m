#import "DicePip.h"

@implementation DicePip
-(instancetype) initWithValue: (int) value {
    if (self = [super init]) {
        _value = value;
    }
    
    return self;
}
-(int) value {
    return _value;
}
-(NSString*) asString {
    switch (_value) {
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
