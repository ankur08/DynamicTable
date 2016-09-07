//
//  ViewController.h
//  DynamicTable
//
//  Created by ankur on 07/09/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *ScollView;
- (IBAction)AddView:(id)sender;
- (IBAction)removeView:(id)sender;

@end

