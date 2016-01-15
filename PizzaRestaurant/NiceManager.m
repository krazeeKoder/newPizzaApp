//
//  NiceManager.m
//  PizzaRestaurant
//
//  Created by Anthony Tulai on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "NiceManager.h"

@implementation NiceManager


-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"I made you a pizza and I like your face");
    
}

@end
