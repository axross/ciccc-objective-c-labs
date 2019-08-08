#import "InputCollector.h"

@implementation InputCollector
-(instancetype) init {
    self = [super init];
    
    return self;
}
-(NSString*) inputForPrompt: (NSString*) input {
    char inputChars[255];

    NSLog(@"%@", input);

    fgets(inputChars, 255, stdin);
    
    return [NSString stringWithUTF8String:inputChars];
}
@end
