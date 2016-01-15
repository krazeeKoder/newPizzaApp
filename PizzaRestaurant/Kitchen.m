//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
#import "KitchenDelegate.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    if (self.delegate) {
        
        if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
            
            if ([self.delegate kitchenShouldUpgradeOrder:self]) {
                Pizza *pizza = [[Pizza alloc] initWithSize:LARGE andToppings:toppings];
                if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                    NSLog(@"Made the pizza");
                }
                return pizza;
            }
            else
            {
                Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
                if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                    NSLog(@"I made you a pizza, you are cool;");
                }
                return pizza;
            }
        }
        else {
            return nil;
        }
    }
    
    
    
    return ([[Pizza alloc] initWithSize:LARGE andToppings:toppings]);
}

@end
