//
//  generalManager.h
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 24/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HotelSystem.h"

@interface GeneralManager : NSObject <HotelManager>

@property (nonnull) HotelSystem *hotelSystem;

@end
