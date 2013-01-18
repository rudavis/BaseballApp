//
//  Player.h
//  Baseball
//
//  Created by Russ Davis on 1/16/13.
//  Copyright (c) 2013 RTB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *bats;
@property (nonatomic, copy) NSString *throws;
@property (nonatomic, copy) NSString *position;

@end
