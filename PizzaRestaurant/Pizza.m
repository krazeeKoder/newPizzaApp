//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Anthony Tulai on 2016-01-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

-(instancetype) initWithSize: (PizzaSize)size andToppings: (NSArray *)toppings {
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}

@end
