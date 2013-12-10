//
//  ViewController.h
//  Hello-LWF-UIKit
//
//  Created by Kazuki Sakamoto on 12/10/13.
//
//

#import <UIKit/UIKit.h>

@class LWFView;

@interface ViewController : UIViewController
@property (nonatomic, weak) IBOutlet LWFView *lwfView;

- (void)reset;
@end
