//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Anthony Tulai on 2016-01-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    SMALL,
    MEDIUM,
    LARGE
} PizzaSize;

@interface Pizza : NSObject

@property (assign) PizzaSize size;
@property (strong) NSArray *toppings;

-(instancetype) initWithSize: (PizzaSize)size andToppings: (NSArray *)toppings;

@end
