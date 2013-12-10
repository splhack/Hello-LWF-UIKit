//
//  StartOverViewController.m
//  Hello-LWF-UIKit
//
//  Created by Kazuki Sakamoto on 12/10/13.
//
//

#import "StartOverViewController.h"
#import "ViewController.h"

@interface StartOverViewController ()

@end

@implementation StartOverViewController

- (IBAction)startOver:(id)sender
{
    NSArray *a = self.navigationController.viewControllers;
    ViewController *c = (ViewController *)[a objectAtIndex:a.count - 2];
    [c reset];

    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
