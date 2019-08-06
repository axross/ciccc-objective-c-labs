#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject
@property (nonatomic) int score;
@property (strong) Question *question;
-(instancetype) init;
-(void) generateRandomQuestion;
@end

NS_ASSUME_NONNULL_END
