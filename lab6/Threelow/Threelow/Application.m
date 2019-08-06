#import "Application.h"
#import "Die.h"

@implementation Application
NSMutableArray* _dice;

-(instancetype) init {
    if (self = [super init]) {
        _dice = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 6; ++i) {
            [_dice addObject: [[Die alloc] initAndRoll]];
        }
    }
    
    return self;
}
-(void) start {
    while (true) {
        NSLog(@"Now: %@", [self getDiceString]);
        NSLog(@"roll\n\n> ");
        
        NSString *input = [self prompt];
        
        if ([input isEqual: @"roll"]) {
            for (Die *die in _dice) {
                [die roll];
            }
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
