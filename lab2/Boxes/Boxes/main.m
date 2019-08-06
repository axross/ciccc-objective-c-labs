#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *largerBox = [[Box alloc] initWithWidth: 2.0 andHeight: 3.0 andLength: 4.0];
        Box *smallerBox = [[Box alloc] initWithWidth: 1.0 andHeight: 2.0 andLength: 3.0];
        
        NSLog(@"The volume of the larger box is: %f", largerBox.volume);
        NSLog(@"The volume of the smaller box is: %f", smallerBox.volume);
        NSLog(@"The larger box can contains the smaller box %d times", [largerBox canContainsNTimesOf: smallerBox]);
    }
    return 0;
}
