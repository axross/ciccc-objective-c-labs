//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Kohei Asai on 2019-08-08.
//  Copyright © 2019 Kohei Asai. All rights reserved.
//

#import "PaypalPaymentService.h"
#import "PaymentGateway.h"

@implementation PaypalPaymentService
-(void) processPaymentAmount: (NSInteger*) amount {
    NSLog(@"Paypal processed amount $%ld", amount);
}
@end
