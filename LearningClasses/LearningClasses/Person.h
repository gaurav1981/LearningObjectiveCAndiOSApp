//
//  Person.h
//  LearningClasses
//
//  Created by Gaurav Gupta on 16/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
		//instance variables OR ivars
	NSString *sexOfPerson;
	NSString *fullNameOfPerson;
}

	//Properties
@property (nonnull, nonatomic, strong) NSString *genderOfPerson;
@property (nonnull, nonatomic, strong) NSNumber *ageOfPerson;
@property (nonnull, nonatomic, strong) NSNumber *heightOfPerson;
@property (nonnull, nonatomic, strong) NSString *dateOfBirth;
@property (nonnull, nonatomic, strong) NSString *panNumber;
@property (nonnull, nonatomic, strong) NSString *currentLocation;

-(void)setFullName:(nonnull NSString*)fullName;
-(nonnull NSString*)getFullNameOfPerson;

	//will return of age/gender/dob/pan/fullname
-(nonnull NSDictionary*)getPersonalDetails;

+(nonnull Person*)createNewPersonFromDetails:(nonnull NSDictionary*)personDetails;
+(nonnull Person*)sharedInstance ;
-(nonnull instancetype)init __attribute__ ((unavailable("use sharedInstance method")));
-(nonnull instancetype)new __attribute__ ((unavailable("use sharedInstance method")));
-(nonnull instancetype)alloc __attribute__ ((unavailable("use sharedInstance method")));

@end
/*
            gender   age   height  fullname    dob
 Pranitha   female   25     5.11   Pranitha K
 Gaurav     male     36     5.11   Gaurav G
 Pranitha   female   25     5.11   K
 */
