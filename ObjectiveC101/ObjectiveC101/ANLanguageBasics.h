//
//  ANLanguageBasics.h
//  ObjectiveC101
//
//  Created by Gaurav Gupta on 04/02/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ANLanguageBasics : NSObject{
	NSString *name;
}

@property (nonnull,nonatomic, strong) NSString *personName;

-(NSString*)returnName;
@end
