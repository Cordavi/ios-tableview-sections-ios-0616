//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Michael Amundsen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent

- (instancetype)init {
    return [self initWithName:@""];
    
}

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

@end
