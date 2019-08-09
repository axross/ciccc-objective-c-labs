//
//  StripePaymentService.m
//  Payments
//
//  Created by Kohei Asai on 2019-08-08.
//  Copyright © 2019 Kohei Asai. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
-(void) processPaymentAmount: (NSInteger*) amount {
    NSLog(@"Stripe processed amount $%ld", amount);
}
@end
