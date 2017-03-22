//
//  ViewController.m
//  LearningBasicUIElements
//
//  Created by Gaurav Gupta on 22/03/17.
//  Copyright © 2017 Arigato Nerds Inc. All rights reserved.
//

#import "BasicElements.h"

@interface BasicElements ()
@property (weak, nonatomic) IBOutlet UIButton *btnAdditionalVC;
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;
@property (assign) int counter;
@end

@implementation BasicElements

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"IN %@ CLASS viewDidLoad",[self class]);
    _counter = 0;
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"IN %@ CLASS viewWillAppear",[self class]);
}


-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"IN %@ CLASS viewDidAppear",[self class]);

}

-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"IN %@ CLASS viewWillDisappear",[self class]);
    
}

-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"IN %@ CLASS viewDidDisappear",[self class]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAdditionalVC:(id)sender {
    _counter++;
    _counterLabel.text = [NSString stringWithFormat:@"%i",_counter];
    [self performSegueWithIdentifier:@"segueAddVC" sender:self];
}


@end
