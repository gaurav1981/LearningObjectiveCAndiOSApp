//
//  Person.m
//  LearningClasses
//
//  Created by Gaurav Gupta on 16/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import "Person.h"

static Person *sharedObj;
static dispatch_once_t *onceToken;

@implementation Person

	        //property        ivar/backing instance variable
@synthesize panNumber      =  _panNumber,
            genderOfPerson =  sexOfPerson;


+(Person *)sharedInstance{
	
	dispatch_once(onceToken, ^{
		sharedObj = (Person*)[[super alloc] init];
	});
	return sharedObj;
}

-(void)setFullName:(NSString *)fullName{
	fullNameOfPerson = fullName;
}

-(NSString *)getFullNameOfPerson{
	return  fullNameOfPerson;
}

-(NSDictionary *)getPersonalDetails{
	
		//age/gender/dob/pan/fullname
	NSDictionary *temp = [NSDictionary
						  dictionaryWithObjects:@[fullNameOfPerson,_ageOfPerson,_dateOfBirth,sexOfPerson,self.panNumber]
						  forKeys:@[@"nameOfPerson",@"age",@"dob",@"gender",@"pan"]];
	return temp;
}

	//gettter
-(NSString *)genderOfPerson{
	NSLog(@"insider getter for genederOfPerson");
	return [sexOfPerson uppercaseString];
}

	//setter
-(void)setGenderOfPerson:(NSString *)genderOfPerson{
	sexOfPerson = genderOfPerson;
}

	//gettter
-(NSString *)panNumber{
	NSLog(@"insider getter for panNumber");
	return _panNumber;
}

	//setter
-(void)setPanNumber:(NSString *)panNumber{
	NSLog(@"insider setter for panNumber");
	_panNumber = [panNumber lowercaseString];
}

	//class method
+(Person *)createNewPersonFromDetails:(NSDictionary *)personDetails{
	Person *newObj = [[Person alloc] init];

	[newObj setFullName:[personDetails objectForKey:@"nameOfPerson"]];
	newObj.ageOfPerson = [personDetails objectForKey:@"age"];
	newObj.heightOfPerson = [personDetails objectForKey:@"height"];
	[newObj setGenderOfPerson:[personDetails objectForKey:@"gender"]];
	[newObj setPanNumber:[personDetails objectForKey:@"pan"]];
	
	
	NSLog(@"%s address contained in the newObj is %@",__PRETTY_FUNCTION__,newObj);
	return newObj;
}


@end
