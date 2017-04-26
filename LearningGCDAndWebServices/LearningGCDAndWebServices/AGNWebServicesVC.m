//
//  AGNWebServicesVC.m
//  LearningGCDAndWebServices
//
//  Created by gaurav gupta on 26/04/17.
//  Copyright © 2017 Arigatonerds Inc. All rights reserved.
//

#import "AGNWebServicesVC.h"

NSString *baseURL = @"https://jsonplaceholder.typicode.com/users";

@interface AGNWebServicesVC () 
@property (nonatomic, weak) UIView *subView;
@end

@implementation AGNWebServicesVC
@synthesize
result = _result,
stppr = _stppr,
stpprResult = _stpprResult;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	_result.text = @"";
	_stpprResult.text = @"";

	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)updateStpprResult:(id)sender {
	_stpprResult.text = [NSString stringWithFormat:@"%f",_stppr.value];
}

- (IBAction)backGroundRun:(id)sender {
	_result.text = @"STARTING";
	dispatch_async(dispatch_queue_create("com.test.queue", nil), ^{
//		for (int i = 0; i < 1000; i++) {
//			NSLog(@"Value of iterator in background is %i",i);
//		}
		[self downloadData];
	});
}

-(void)downloadData{
	NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:baseURL] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
		NSLog(@"Printing the data %@ with length %li",data,[data length]);
		
		dispatch_async(dispatch_get_main_queue(), ^{
					_result.text = @"DATA DOWNLOADED";
		});
		
		NSArray *rcvdArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:NULL];
		NSLog(@"Printing the array %@ with length %li",rcvdArray,[rcvdArray count]);

		dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
			_result.text = @"ARRAY CREATED";
		});

	}];
	
	[downloadTask resume];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
