#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Die : NSObject
@property (nonatomic) int pip;
-(instancetype) initAndRoll;
-(void) roll;
-(int) asInt;
-(NSString*) asString;
@end

NS_ASSUME_NONNULL_END
