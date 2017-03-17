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
		
        //sharedObj = [HotelOwner alloc];
        //here [super alloc] returns the object which is of type HotelOwner. this is the default behavior
        sharedObj = [super alloc];
        sharedObj = [sharedObj initPrivately];
        
        /*
         HotelOwner *obj = [HotelOwner alloc]
         */
	});
	return sharedObj;
}

-(instancetype)initPrivately{
    //call the init method from the super class
    self = [super init];
    
    //if self is actually not nill.
    if (self){
        
        //storing the reference of Hotelsystem => strong reference
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

-(void)dealloc{
    _system = nil;
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
