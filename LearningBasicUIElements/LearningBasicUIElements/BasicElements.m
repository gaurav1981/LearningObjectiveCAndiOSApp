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
@property (weak, nonatomic) IBOutlet UILabel *stepperLabel;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UISwitch *swch;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (assign) int counter;
@end

@implementation BasicElements

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"IN %@ CLASS viewDidLoad",[self class]);
    _counter = 0;
		//[_segmentedControl set]
	
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
		//[self performSegueWithIdentifier:@"segueAddVC" sender:self];
}
- (IBAction)incrementBy2:(id)sender {
	_stepperLabel.text = [NSString stringWithFormat:@"%f", [_stepper value]];
}
- (IBAction)flipState:(UISwitch *)sender {
	if (_swch.isOn) {
		self.view.backgroundColor = [UIColor redColor];
	}else{
		self.view.backgroundColor = [UIColor clearColor];
	}
}

- (IBAction)changeContinously:(id)sender {
	NSLog(@"Value of slider currently is %f", _slider.value);
}

- (IBAction)selectionOfColors:(id)sender {
	switch (_segmentedControl.selectedSegmentIndex) {
		case 0:{
			_counterLabel.backgroundColor = _stepperLabel.backgroundColor = [UIColor redColor];
			break;
		}
		case 1:
			_counterLabel.backgroundColor = _stepperLabel.backgroundColor = [UIColor blueColor];
			break;
		case 2:
			_counterLabel.backgroundColor = _stepperLabel.backgroundColor = [UIColor greenColor];
			break;
		default:
			_counterLabel.backgroundColor = _stepperLabel.backgroundColor = [UIColor yellowColor];
			break;
	}
}


@end
