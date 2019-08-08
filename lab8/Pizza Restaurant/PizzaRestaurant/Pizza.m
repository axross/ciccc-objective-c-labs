//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Kohei Asai on 2019-08-08.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
-(instancetype) initWithSize: (PizzaSize) size andToppings: (NSArray*) toppings {
    if (self = [super init]) {
        _size = size;
        _toppings = toppings;
    }
    
    return self;
}
@end
