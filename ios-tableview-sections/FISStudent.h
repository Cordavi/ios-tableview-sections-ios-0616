//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by Michael Amundsen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject
@property (strong, nonatomic) NSArray *favoriteThings;
@property (strong, nonatomic) NSString *favoriteFood;
@property (strong, nonatomic) NSString *favoriteColor;
@property (strong, nonatomic) NSString *favoriteMusicalArtist;
@property (strong, nonatomic) NSString *favoriteGame;
@property (strong, nonatomic) NSString *name;

- (instancetype)init;
- (instancetype)initWithName:(NSString *)name;

@end
