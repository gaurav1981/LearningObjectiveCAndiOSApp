//
//  main.m
//  LearningCustomProtocols
//
//  Created by Gaurav Gupta on 24/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HotelOwner.h"
#import "generalManager.h"


int main(int argc, const char * argv[]) {
	@autoreleasepool {
		HotelOwner *owner = [HotelOwner singleBoss];
        GeneralManager *mgr = [[GeneralManager alloc] init];
        
        [owner showMeReport];
        
		
			
	}
    return 0;
}
