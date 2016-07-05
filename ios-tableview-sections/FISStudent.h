//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by Kenneth Cooke on 6/28/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject
@property (strong, nonatomic) NSArray *favoriteThings;
@property (strong, nonatomic) NSString *name;

-(instancetype)init;

@end
