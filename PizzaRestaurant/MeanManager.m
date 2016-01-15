//
//  MeanManager.m
//  PizzaRestaurant
//
//  Created by Anthony Tulai on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "MeanManager.h"

@implementation MeanManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    for (NSString *topping in toppings) {
        if ([topping isEqual: @"anchovies"]) {
            return NO;
        }
    }
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}



@end
