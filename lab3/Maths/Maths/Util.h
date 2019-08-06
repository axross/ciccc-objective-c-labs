//
//  Util.h
//  Maths
//
//  Created by Kohei Asai on 2019-08-06.
//  Copyright © 2019 Kohei Asai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Util : NSObject
+(NSString *) getUserInputWidthMaxLength: (int) maxLength andPrompt: (NSString *) prompt;
@end

NS_ASSUME_NONNULL_END
