#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
@property (nonatomic) int right;
@property (nonatomic) int wrong;
-(instancetype) init;
-(NSString *) description;
@end

NS_ASSUME_NONNULL_END
