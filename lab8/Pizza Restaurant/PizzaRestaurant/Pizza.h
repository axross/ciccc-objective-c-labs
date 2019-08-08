//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Kohei Asai on 2019-08-08.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, PizzaSize) {
    PizzaSizeSmall,
    PizzaSizeRegular,
    PizzaSizeLarge
};

@interface Pizza : NSObject
@property (nonatomic) PizzaSize size;
@property (strong) NSArray* toppings;
-(instancetype) initWithSize: (PizzaSize) size andToppings: (NSArray*) toppings;
@end


NS_ASSUME_NONNULL_END
