//
//  Util.m
//  Maths
//
//  Created by Kohei Asai on 2019-08-06.
//  Copyright © 2019 Kohei Asai. All rights reserved.
//

#import "Util.h"

@implementation Util
+(NSString *) getUserInputWidthMaxLength: (int) maxLength andPrompt: (NSString *) prompt {
    if (maxLength < 1) {
        maxLength = 255;
    }

    NSLog(@"%@ ", prompt);

    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);

    if (result != NULL) {
        NSString *inputStr = [NSString stringWithUTF8String:inputChars];

        return [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }

    return NULL;
}
@end
