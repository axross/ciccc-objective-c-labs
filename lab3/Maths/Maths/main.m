#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "Question.h"
#import "Util.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        
        Boolean gameOn = YES;
        
        while (gameOn) {
            Question *q = additionQuestion.question;
            
            NSString *answer = [Util getUserInputWidthMaxLength: 255 andPrompt: [NSString stringWithFormat:@"%d + %d ? ", q.right, q.left]];
            
            if ([answer isEqual: @"quit"]) {
                break;
            } else if([answer integerValue] == q.answer) {
                NSLog(@"Right!");
                scoreKeeper.right += 1;
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrong += 1;
            }
            
            [additionQuestion generateRandomQuestion];
        }
        
        NSLog(@"%@", scoreKeeper);
    }
    return 0;
}
