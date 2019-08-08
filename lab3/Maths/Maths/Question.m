#import "Question.h"

@implementation Question
-(instancetype) initWithLeft: (int) left andRight: (int) right {
    if ([super init]) {
        _left = left;
        _right = right;
        _answer = left + right;
    }
    return self;
}
@end
