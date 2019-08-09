//
//  PaymentGateway.m
//  Payments
//
//  Created by Kohei Asai on 2019-08-08.
//  Copyright © 2019 Kohei Asai. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
-(void) processPaymentAmount: (NSInteger) amount {
    [_paymentService processPaymentAmount: amount];
}
@end
