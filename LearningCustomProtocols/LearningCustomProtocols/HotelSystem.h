//
//  HotelSystem.h
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 03/03/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HotelManager.h"

@class HotelOwner;

//SYSTEM FOR ENTIRE HOTEL
@interface HotelSystem : NSObject

//single instance of the System reprsenting the hotel system
+(HotelSystem* _Nonnull )sharedInstance;

//delegate for managers
@property (nonatomic,weak,setter=addManagers:) _Nullable id <HotelManager> managerDelegate;

//ensuring pure singleton is created
-(_Nonnull instancetype)init  __attribute((unavailable("use +sharedInstance")));
+(_Nonnull instancetype)new   __attribute((unavailable("use +sharedInstance")));
+(_Nonnull instancetype)alloc __attribute((unavailable("use +sharedInstance")));
+(_Nonnull instancetype)allocWithZone __attribute((unavailable("kindly use +sharedInstance")));
//Methods used by the owner;
-(void)generateReport;
-(void)generateReportFor:(NSDate* _Nonnull)date;

@end
