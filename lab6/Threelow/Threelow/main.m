#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *dice = @[
            [[Dice alloc] initAndRoll],
            [[Dice alloc] initAndRoll],
            [[Dice alloc] initAndRoll],
            [[Dice alloc] initAndRoll],
            [[Dice alloc] initAndRoll]
        ];
        
        NSLog(@"%@", dice);
    }
    return 0;
}
