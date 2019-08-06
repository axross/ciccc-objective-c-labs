#import "Application.h"

@implementation Application
-(instancetype) init {
    self = [super init];
    
    return self;
}
-(void) start {
    while (true) {
        NSLog(@"Select operation by the number (type anything else to quit)\n  1. uppercase\n  2. lowercase\n  3. numberize\n  4. canadianize\n  5. respond\n  6. despace\n\n> ");
    
        NSString *mode = [self prompt];
    
        NSLog(@"What string do you want to manipulate?\n\n> ");
    
        NSString *string = [self prompt];
        
        NSLog(@"%@", mode);
    
        if ([mode isEqual: @"1"]) {
            NSLog(@"%@", [string uppercaseString]);
        } else if ([mode isEqual: @"2"]) {
            NSLog(@"%@", [string lowercaseString]);
        } else if ([mode isEqual: @"3"]) {
            int number = [string intValue];
            
            if ([string isEqual: @"0"]) {
                NSLog(@"%@ is number.", string);
            } else {
                if(number == 0) {
                    NSLog(@"%@ cannot be parsed as number.", string);
                } else {
                    NSLog(@"%@ is number.", string);
                }
            }
        } else if ([mode isEqual: @"4"]) {
            NSLog(@"%@", [string stringByAppendingString: @", eh?"]);
        } else if ([mode isEqual: @"5"]) {
            if ([string hasSuffix: @"?"]) {
                NSLog(@"I don't know");
            }
            
            if([string hasSuffix: @"!"]) {
                NSLog(@"Whoa, calm down!");
            }
        } else if ([mode isEqual: @"6"]) {
            NSLog(@"%@", [string stringByReplacingOccurrencesOfString:@" " withString: @"-"]);
        } else {
            break;
        }
    }
}
-(NSString*) prompt {
    char inputChars[255];
    
    fgets(inputChars, 255, stdin);
    
    return [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet:
            [NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end
