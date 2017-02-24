//
//  main.m
//  LearningClasses
//
//  Created by Gaurav Gupta on 16/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
	@autoreleasepool {
			//	Person *newObjPranitha = [[Person alloc] init];
		Person *newObjPranitha = [Person sharedInstance];
		[newObjPranitha setFullName:@"Pranitha K"];
			//dot notation
		newObjPranitha.genderOfPerson = @"female";
		newObjPranitha.dateOfBirth = @"15/04/1982";
		newObjPranitha.heightOfPerson = [NSNumber numberWithFloat:5.4];
		newObjPranitha.ageOfPerson = [NSNumber numberWithInt:35];

			//Message reciever syntax
		[newObjPranitha setPanNumber:@"AHTPG0671W"];
		
		NSLog(@"Gender of Pranitha Object is %@",[newObjPranitha genderOfPerson]);
		NSLog(@"Pan number of Pranitha object is %@",newObjPranitha.panNumber);
		
		Person *newObjGaurav = [Person createNewPersonFromDetails:@{@"nameOfPerson":@"Gaurav",@"age":@35,@"gender":@"male",@"height":@5.11,@"pan":@"ahtpg0573e"}];
		NSLog(@"%s address contained in the newObjGaurav is %@",__PRETTY_FUNCTION__,newObjGaurav);
		
		NSLog(@"Gender of Gaurav Object is %@",[newObjGaurav genderOfPerson]);
		NSLog(@"Pan number of Gaurav object is %@",newObjGaurav.panNumber);
		
		NSString *name = @"Gaurav Gupta";
		NSLog(@"%s address contained in the name is %p while value is %@",__PRETTY_FUNCTION__,name, name);
		
		NSMutableString *newName = [name mutableCopy];
		NSLog(@"%s address contained in the newName is %p while value is %@",__PRETTY_FUNCTION__,newName, newName);
		
		
	}
    return 0;
}
