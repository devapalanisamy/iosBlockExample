//
//  main.m
//  BlockExample
//
//  Created by Deva Palanisamy on 25/12/13.
//  Copyright (c) 2013 Aurum. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        

        
        
        // Block Example - without passing arguments to block
        int (^myFirstExample)(void)=^{
            return 6;
        };
        NSLog(@"my First Block returns the value %d",myFirstExample());
        
        
         // Block Example - passing arguments to block
        int (^mySecondExample)(int,int)=^(int a,int b){
            return a * b;
        };
        NSLog(@"my Second Block returns the value %d",mySecondExample(7,6));
        
        //Block Example - No return type and No arguments
        void(^myThirdExample)(void) = ^{
            NSLog(@"This block takes nothing and returns nothing");
        };
        myThirdExample();
        
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

