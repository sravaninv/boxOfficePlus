//
//  main.m
//  boxOfficePlus
//
//  Created by Gabriel Nadel on 8/4/15.
//  Copyright (c) 2015 Gabriel Nadel. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    }
    
    //AND operator is: &&
    //OR operator is: ||
    //NOT operator is: !
    
    
    //Full price tickets = $10
    //For a non-employee with an age discount AND attending a matinee = $6.50
    //For a non-employee with an age discount OR attending a matinee = $8
    //For an employee attending a non-matinee = $4.50
    //For an employee attending a matinee = $0.0 (FREE)
    
    
    BOOL ageDiscount;
    BOOL isMatinee = YES;
    BOOL isEmployee = NO;
    
    int customerAge = 98;
    float customerPrice;
    
    int youthAge = 13;
    int seniorAge = 65;
    
    float regularPrice = 10.0;
    float ageOrMatineePrice = 8.50;
    float ageAndMatineePrice = 6.50;
    float employeeRegularPrice = 4.0;
    float employeeMatineePrice = 0;
    
    
    //Assess Age Discount
    if ((customerAge < youthAge) || (customerAge >= seniorAge)){
        ageDiscount = YES;
    }
    
    else{
        ageDiscount = NO;
    }
    
    
    //Determine Price
    if (ageDiscount && isMatinee && !isEmployee) {
        customerPrice = ageAndMatineePrice;
    }
    
    else if ((ageDiscount || isMatinee) && !isEmployee){
        customerPrice = ageOrMatineePrice;
    }
    
    else if (isEmployee && !isMatinee){
        customerPrice = employeeRegularPrice;
        
    }
    
    else if (isEmployee && isMatinee){
        customerPrice = employeeMatineePrice;
        
    }
    
    else{
        customerPrice = regularPrice;
    }
    
    return 0;
}


