//
//  HotelManager.h
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 24/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HotelManager <NSObject>

@required
-(void)generateReport;

@optional
-(void)generateReportFor:(NSDate*)date;
-(void)generateStatsAndSave;

@end
