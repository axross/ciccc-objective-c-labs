//
//  AmazonPaymentService.h
//  Payments
//
//  Created by Kohei Asai on 2019-08-08.
//  Copyright © 2019 Kohei Asai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface AmazonPaymentService : NSObject <PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
