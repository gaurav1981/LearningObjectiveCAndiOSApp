//
//  HotelOwnder.h
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 24/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HotelSystem.h"

@interface HotelOwner : NSObject

//property for accessing system
@property (nonnull,strong) HotelSystem* system;

//single owner implementation
+(nonnull HotelOwner*)singleBoss;

//ensuring pure singleton is created
-(_Nonnull instancetype)init  __attribute((unavailable("kindly use +singleBoss")));
+(_Nonnull instancetype)new   __attribute((unavailable("kindly use +singleBoss")));
+(_Nonnull instancetype)alloc __attribute((unavailable("kindly use +singleBoss")));
+(_Nonnull instancetype)allocWithZone __attribute((unavailable("kindly use +singleBoss")));

-(void)showMeReport;
-(void)showMeReportFor:(NSDate* _Nonnull)date;

@end
/*
 
 system is an object of type class HotelSystem. This represents the hotel management system
 owner interacts with the system to get information about hotel.
 
 */
