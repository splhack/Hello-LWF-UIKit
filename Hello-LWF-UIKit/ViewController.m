//
//  ViewController.m
//  Hello-LWF-UIKit
//
//  Created by Kazuki Sakamoto on 12/10/13.
//
//

#import "ViewController.h"
#import "LWFView.h"
#import "LWFObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	LWFObject *lwfObject = [self.lwfView lastLWFObject];
    __weak ViewController *self_ = self;
	[lwfObject addEventHandler:@"done" handler:^{
		[self performSegueWithIdentifier:@"ToStartOverButton" sender:self_];
	}];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)reset
{
	[self.lwfView lwfInit];
}

@end
