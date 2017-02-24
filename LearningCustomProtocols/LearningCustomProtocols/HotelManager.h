//
//  HotelManager.h
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 24/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HotelOwner;

@protocol HotelManager <NSObject>

@required
-(void)generateReport;

@optional
-(void)generateStatsAndSave;
@end
