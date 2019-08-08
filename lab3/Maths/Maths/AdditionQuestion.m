#import "AdditionQuestion.h"
#import "Question.h"

@implementation AdditionQuestion
-(instancetype) init {
    if (self = [super init]) {
        _score = 0;
        
        [self generateRandomQuestion];
    }

    return self;
}
-(void) generateRandomQuestion {
    NSUInteger left = arc4random_uniform(90) + 10;
    NSUInteger right = arc4random_uniform(90) + 10;
    
    _question = [[Question alloc] initWithLeft: (int) left andRight: (int) right];
}
@end
