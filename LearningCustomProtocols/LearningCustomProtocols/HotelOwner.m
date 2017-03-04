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

@end

@implementation HotelOwner

+(HotelOwner *)singleBoss{
 
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		
			//here [super alloc] returns the object which is of type HotelOwner.
			sharedObj = [[super alloc] initPrivately];
	});
	return sharedObj;
}

-(instancetype)initPrivately{
	self = [super init];
	if (self){
        _system = [HotelSystem sharedInstance];
	}
	return self;
}

-(void)showMeReport{
    [_system generateReport];
}

-(void)showMeReportFor:(NSDate *)date{
    [_system generateReportFor:date];
}

@end


/*
 -(void)getReport{
	if ([sharedObj.managerDelegates count] != 0) {
 [sharedObj.managerDelegates enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
 if ([obj respondsToSelector:(@selector(generateReport))]) {
 [obj generateReport];
 }
 }];
	}
 }
 
 -(void)getReportFor:(NSDate*)date{
	if ([sharedObj.managerDelegates count] != 0) {
 [sharedObj.managerDelegates enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
 if ([obj respondsToSelector:(@selector(generateReportFor:))]) {
 [obj generateReportFor:date];
 }
 }];
	}
 }

 */
