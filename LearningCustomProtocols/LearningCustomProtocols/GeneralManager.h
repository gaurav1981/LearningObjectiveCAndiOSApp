//
//  generalManager.h
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 24/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HotelOwner.h"

@interface GeneralManager : NSObject <HotelManager>

@property (nonnull) HotelOwner *boss;

@end
