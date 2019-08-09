//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Kohei Asai on 2019-08-08.
//  Copyright © 2019 Kohei Asai. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
-(void) processPaymentAmount: (NSInteger*) amount {
    NSLog(@"Amazon processed amount $%ld", amount);
}
@end
