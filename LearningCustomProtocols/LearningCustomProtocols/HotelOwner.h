//
//  HotelOwnder.h
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 24/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HotelManager.h"

@interface HotelOwner : NSObject
@property (nonatomic) _Nonnull id <HotelManager> managerDelegate;

+(nonnull HotelOwner*)singleBoss;
-(void)getReport;

-(nonnull instancetype)init UNAVAILABLE_ATTRIBUTE;
+(nonnull instancetype)alloc UNAVAILABLE_ATTRIBUTE;
+(nonnull instancetype)new UNAVAILABLE_ATTRIBUTE;
@end
