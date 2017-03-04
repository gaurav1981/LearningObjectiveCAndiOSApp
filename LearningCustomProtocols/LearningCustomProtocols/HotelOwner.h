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
-(_Nonnull instancetype)init  __attribute((unavailable("init is unavailable;use +sharedInstance")));
+(_Nonnull instancetype)new   __attribute((unavailable("new is unavailable;use +sharedInstance")));
+(_Nonnull instancetype)alloc __attribute((unavailable("alloc is unavailable;use +sharedInstance")));

-(void)showMeReport;
-(void)showMeReportFor:(NSDate* _Nonnull)date;

@end
