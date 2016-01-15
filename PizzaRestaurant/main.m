//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "MeanManager.h"
#import "NiceManager.h"
//#import "Pizza.h"

int main(int argc, const char * argv[])
{

    
    Kitchen *restaurantKitchen = [Kitchen new];
    MeanManager *meanFred = [[MeanManager alloc] init];
    NiceManager *niceFrank = [[NiceManager alloc]init];
    
    
    NSLog(@"Please pick if you want Frank or Fred as your manager or no for no manager");
    
    char str[100];
    fgets (str, 100, stdin);
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    if ([inputString isEqual: @"Fred"] || [inputString isEqual: @"fred"]) {
        restaurantKitchen.delegate = meanFred;
        
    }
    else if ([inputString isEqual: @"Frank"] || [inputString isEqual: @"frank"]){
        restaurantKitchen.delegate = niceFrank;
    }
    
    NSLog(@"Please pick your pizza size and toppings:");
    
    while (TRUE) {
        // Loop forever
        
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSLog(@"Input was %@", inputString);
        
        // Take the first word of the command as the size, and the rest as the toppings
        NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
        
        NSString *size = [commandWords objectAtIndex:0];
        NSMutableArray *toppings = [[NSMutableArray alloc] init];
        int loopCounter = 0;
        for (NSString *topping in commandWords) {
            if (loopCounter != 0) {
                [toppings addObject:topping];
            }
            loopCounter++;
        }
        
        //NSArray *toppings = for
        
        PizzaSize numSize;
        if ([size isEqual: @"small"]) {
            numSize = SMALL;
        }
        else if ([size isEqual:@"medium"]) {
            numSize = MEDIUM;
        }
        else {
            numSize = LARGE;
        }
        
        
        Pizza *pizza = [restaurantKitchen makePizzaWithSize:numSize toppings:toppings];
        
        NSLog(@"Enjoy your %@ Pizza with toppings:", size);
        for (NSString *topping in pizza.toppings) {
            NSLog(@"%@", topping);
        }
        
        
        // And then send some message to the kitchen...
        
        
    }
    return 0;
}

