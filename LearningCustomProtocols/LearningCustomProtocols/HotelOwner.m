//
//  HotelOwnder.m
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 24/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import "HotelOwner.h"
static HotelOwner *sharedObj;

@interface HotelOwner ()
@property (nonnull, nonatomic, strong) NSMutableArray <id<HotelManager>> *managerDelegates;
@end

@implementation HotelOwner
@synthesize managerDelegates = _managerDelegates;

+(HotelOwner *)singleBoss{
	
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		sharedObj = [[super alloc] initPrivately];
	});
	return sharedObj;
}

-(void)setManagerDelegate:(id<HotelManager>)managerDelegate{
	_managerDelegate = managerDelegate;
	[sharedObj.managerDelegates addObject:managerDelegate];
}

-(instancetype)initPrivately{
	self = [super init];
	if (self){
		self.managerDelegates = [[NSMutableArray alloc] init];
	}
	return self;
}

-(void)getReport{
	if ([sharedObj.managerDelegates count] != 0) {
		[sharedObj.managerDelegates enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
			if ([obj respondsToSelector:(@selector(generateReport))]) {
				[obj generateReport];
			}
		}];
	}
}
@end
