//
//  main.m
//  ObjectiveC101
//
//  Created by Gaurav Gupta on 04/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ANLanguageBasics.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		
			//NSArray
		NSArray *arrayOfNames = @[@"Gaurav",@"Pranitha",@"Suresh"];
		NSLog(@"arrayNames is %@",arrayOfNames);
		NSLog(@"number of elements in the array are %lu",arrayOfNames.count);
		NSLog(@"3rd element of the array is %@",[arrayOfNames objectAtIndex:2]);
		NSMutableArray *array = [NSMutableArray arrayWithArray:arrayOfNames];
		[array addObject:@"neel"];
		NSLog(@"array is %@",array);
		[array replaceObjectAtIndex:1 withObject:@"dash"];
		NSLog(@"array is %@",array);
		arrayOfNames = array;
		NSLog(@"arrayNames is %@",arrayOfNames);
		
		NSDictionary *pairOFNamesAndAddresses = @{@"gaurav":@"bangalore",@"pranitha":@"california"};
		NSLog(@"Dictionary is %@",pairOFNamesAndAddresses);
			//[pairOFNamesAndAddresses setValue:@"delhi" forKey:@"gaurav"];
		NSLog(@"Dictionary is %@",pairOFNamesAndAddresses);
		
		NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithObjectsAndKeys:@{@"designation":@"software",@"platform":@"Android",@"gender":@"female"}, @"pranitha" ,nil];
		NSLog(@"HEre is the platform %@",[[dictionary objectForKey:@"pranitha"] objectForKey:@"platform"]);
		NSLog(@"dictionary %@", dictionary);
		[[dictionary objectForKey:@"pranitha"] objectForKey:@"platform"];
		
		
		
	}
    return 0;
}
