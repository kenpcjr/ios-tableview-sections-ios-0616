//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Kenneth Cooke on 6/28/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent


-(instancetype)init{
    
    self = [super init];
    
    if (self) {
        _favoriteThings = @[];
        _name = @"";
    }
    return self;
}

@end
