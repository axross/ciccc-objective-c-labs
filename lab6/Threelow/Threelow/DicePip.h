#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DicePip : NSObject {
    int _value;
}
-(instancetype) initWithValue: (int) value;
-(int) value;
-(NSString *) asString;
@end

NS_ASSUME_NONNULL_END
