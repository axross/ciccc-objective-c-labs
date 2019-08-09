//
//  PaymentGateway.h
//  Payments
//
//  Created by Kohei Asai on 2019-08-08.
//  Copyright © 2019 Kohei Asai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate
@required
-(void) processPaymentAmount: (NSInteger*) amount;
@end

@interface PaymentGateway : NSObject
@property (nonatomic) id <PaymentDelegate> paymentService;
-(void) processPaymentAmount: (NSInteger) amount;
@end

NS_ASSUME_NONNULL_END
