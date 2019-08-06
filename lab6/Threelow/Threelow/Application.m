#import "Application.h"
#import "Die.h"

@implementation Application
-(instancetype) init {
    if (self = [super init]) {
        _dice = @[
            [[Die alloc] initAndRoll],
            [[Die alloc] initAndRoll],
            [[Die alloc] initAndRoll],
            [[Die alloc] initAndRoll],
            [[Die alloc] initAndRoll],
            [[Die alloc] initAndRoll]
        ];
        _heldDice = [[NSMutableSet alloc] init];
    }
    
    return self;
}
-(void) start {
    while (true) {
        NSString *diceString = @"";
        int score = 0;
        
        for (Die *die in _dice) {
            diceString = [_heldDice containsObject: die]
                ? [diceString stringByAppendingFormat: @"[%@]", [die asString]]
                : [diceString stringByAppendingString: [die asString]];
            score += [die asInt];
        }
        
        NSLog(@"Now (bracketed dice are held): %@ (score: %d)", diceString, score);
        NSLog(@"\"roll\", \"hold\" or \"reset\"\n\n> ");
        
        NSString *input = [self prompt];
        
        if ([input isEqual: @"roll"]) {
            for (Die *die in _dice) {
                if ([_heldDice containsObject: die]) {
                    continue;
                }
                
                [die roll];
            }
        }
        
        if ([input isEqual: @"hold"]) {
            while (true) {
                NSLog(@"Which die do you want to hold? (0-5)\nChoose held die's number to unhold\n\n> ");
                NSString *dieIndex = [self prompt];
                int dieIndexInt = [dieIndex intValue];
                
                if ((dieIndexInt >= 1 && dieIndexInt <= 5) || (dieIndexInt == 0 && [dieIndex isEqual: @"0"])) {
                    if ([_heldDice containsObject: _dice[dieIndexInt]]) {
                        [_heldDice removeObject: _dice[dieIndexInt]];
                    } else {
                        [_heldDice addObject: _dice[dieIndexInt]];
                    }

                    break;
                }

                NSLog(@"Invalid!");
            }
        }
        
        if ([input isEqual: @"reset"]) {
            [_heldDice removeAllObjects];
        }
    }
}
-(NSString*) getDiceString {
    NSString *diceString = @"";
    
    for (Die* die in _dice) {
        diceString = [diceString stringByAppendingString: [die asString]];
    }
    
    return diceString;
}
-(NSString*) prompt {
    char inputChars[255];
    
    fgets(inputChars, 255, stdin);
    
    return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:
            [NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end
