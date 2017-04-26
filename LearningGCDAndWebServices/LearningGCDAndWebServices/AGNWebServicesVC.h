//
//  AGNWebServicesVC.h
//  LearningGCDAndWebServices
//
//  Created by gaurav gupta on 26/04/17.
//  Copyright © 2017 Arigatonerds Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AGNWebServicesVC : UIViewController <NSURLSessionDataDelegate>

@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UIStepper *stppr;
@property (weak, nonatomic) IBOutlet UILabel *stpprResult;

@end
