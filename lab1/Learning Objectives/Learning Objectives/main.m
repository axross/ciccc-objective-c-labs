#import <Foundation/Foundation.h>
#import "Application.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Application *application = [[Application alloc] init];
        
        [application start];
    }
    return 0;
}
