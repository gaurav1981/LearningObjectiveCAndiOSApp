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

@end
