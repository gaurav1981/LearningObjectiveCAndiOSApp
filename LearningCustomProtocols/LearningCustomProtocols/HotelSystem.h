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

//strong instance to hotel owner
@property (nonnull, strong)HotelOwner *owner;

//single instance of the System reprsenting the hotel system
+(HotelSystem* _Nonnull )sharedInstance;

//delegate for managers
@property (nonatomic,weak,setter=addManagers:) _Nullable id <HotelManager> managerDelegate;

//ensuring pure singleton is created
-(_Nonnull instancetype)init  __attribute((unavailable("init is unavailable;use +sharedInstance")));
+(_Nonnull instancetype)new   __attribute((unavailable("new is unavailable;use +sharedInstance")));
+(_Nonnull instancetype)alloc __attribute((unavailable("alloc is unavailable;use +sharedInstance")));

//Methods used by the owner;
-(void)generateReport;
-(void)generateReportFor:(NSDate* _Nonnull)date;

@end
