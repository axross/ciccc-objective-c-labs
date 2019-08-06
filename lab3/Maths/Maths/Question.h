#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property (nonatomic) int left;
@property (nonatomic) int right;
@property (nonatomic) int answer;
- (instancetype)initWithLeft: (int) left andRight: (int) right;
@end

NS_ASSUME_NONNULL_END
