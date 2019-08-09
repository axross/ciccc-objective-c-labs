//
//  main.m
//  Payments
//
//  Created by Kohei Asai on 2019-08-08.
//  Copyright © 2019 Kohei Asai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PaymentGateway *paymentGateway = [PaymentGateway new];
        
        NSInteger price = arc4random_uniform(900) + 100;
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", price);
        
        char inputChars[255];
        
        fgets(inputChars, 255, stdin);
        
        NSString *input = [[NSString stringWithUTF8String: inputChars] stringByTrimmingCharactersInSet:
                [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        int selected = [input intValue];
        
        
        switch (selected) {
            case 1:
                paymentGateway.paymentService = [PaypalPaymentService new];
                break;
            case 2:
                paymentGateway.paymentService = [StripePaymentService new];
                break;
            case 3:
                paymentGateway.paymentService = [AmazonPaymentService new];
                break;
        }

        NSLog(@"Selected: %d", selected);
        
        [paymentGateway processPaymentAmount: price];
    }
    return 0;
}
