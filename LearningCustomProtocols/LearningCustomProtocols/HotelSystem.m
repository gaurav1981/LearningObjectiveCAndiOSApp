//
//  HotelSystem.m
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 03/03/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import "HotelSystem.h"
static HotelSystem *singleInstance;

@interface HotelSystem ()

@property (nonnull, nonatomic, strong) NSMutableArray *_allManagerDelegates;

@end


@implementation HotelSystem

-(instancetype)initPrivateInstance{
    self = [super init];
    if (self){
        _managerDelegate = __DARWIN_NULL;
        __allManagerDelegates = [[NSMutableArray alloc] initWithCapacity:10];
    }
    return self;
}

+(HotelSystem *)sharedInstance{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleInstance = [[super alloc] initPrivateInstance];
    });
    
    return singleInstance;
}

-(void)addManagers:(id<HotelManager>)managerDelegate{
    
    //adding the delegate to the current list of managers
    if (managerDelegate) {
        [__allManagerDelegates addObject:managerDelegate];
    }else{
        NSLog(@"Delegate cant be nil");
    }
}

-(void)getReport{
    if ([singleInstance._allManagerDelegates count] != 0) {
        [singleInstance._allManagerDelegates enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([obj respondsToSelector:(@selector(generateReport))]) {
                [obj generateReport];
            }
        }];
    }
}

-(void)getReportFor:(NSDate*)date{
    if ([singleInstance._allManagerDelegates count] != 0) {
        [singleInstance._allManagerDelegates enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if ([obj respondsToSelector:(@selector(generateReportFor:))]) {
                [obj generateReportFor:date];
            }
        }];
    }


@end
