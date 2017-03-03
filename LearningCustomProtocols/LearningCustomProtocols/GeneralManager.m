//
//  generalManager.m
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 24/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import "GeneralManager.h"

@implementation GeneralManager

-(instancetype)init{
	self = [super init];
	if (self){
		_boss = [HotelOwner singleBoss];
		_boss.managerDelegate = self;
	}
	return self;
}

-(void)generateReport{
	NSLog(@"Report Generated");
}

-(void)generateReportFor:(NSDate *)date{
	NSLog(@"Report Generated for the date %@",date);
	
	NSDateFormatter *longStyle= [[NSDateFormatter alloc] init];
	[longStyle setDateStyle:NSDateFormatterLongStyle];
	NSString *dateString = [longStyle stringFromDate:date];
	
	NSLog(@"Report Generated for the date in long string %@",dateString);
	[longStyle setDateStyle:NSDateFormatterFullStyle];
	NSLog(@"Report Generated for the date in full string %@", [longStyle stringFromDate:date]);
}


@end
