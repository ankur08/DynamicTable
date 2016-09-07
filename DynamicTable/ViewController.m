//
//  ViewController.m
//  DynamicTable
//
//  Created by ankur on 07/09/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import "ViewController.h"
#import "RowViewController.h"
@interface ViewController ()
{
    NSMutableArray *rowArray;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    rowArray = [[NSMutableArray alloc]init];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}

- (IBAction)AddView:(id)sender {
    UIStoryboard *mainBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    RowViewController *rvcObject = [mainBoard instantiateViewControllerWithIdentifier:@"RowView"];
    
    if (rowArray.count == 0)
    {
        [rowArray addObject:@"newValue"];
        rvcObject.view.frame = CGRectMake(10, 20, rvcObject.view.frame.size.width - 20, 100);
        [rvcObject.view setTag:rowArray.count];
        [self.ScollView addSubview:rvcObject.view];
    }else
        {
            for(UIView *newView in _ScollView.subviews)
            {
                if (newView.tag == rowArray.count) {
                    //add new view below the current View
                    [rowArray addObject:@"newValue"];
                    rvcObject.view.frame = CGRectMake(10, newView.frame.origin.y+110, newView.frame.size.width , 100);
                    [rvcObject.view setTag:rowArray.count];
                    [_ScollView addSubview:rvcObject.view];
                    CGFloat scrollViewHeight = _ScollView.contentSize.height + 130;
                    [_ScollView setContentSize:CGSizeMake(_ScollView.frame.size.width, scrollViewHeight)];
                }
            }
        }
    
}

- (IBAction)removeView:(id)sender {
    if (rowArray.count>1) {
        
        for (UIView * mvcView in _ScollView.subviews) {
            if (mvcView.tag==rowArray.count) {
                if (rowArray.count==0) {
                    // do nothing...
                }
                else{
                    //add another view below the last view
                    [rowArray removeLastObject];
                    [mvcView removeFromSuperview];
                    CGFloat scrollViewHeight = _ScollView.contentSize.height - 130;
                    [_ScollView setContentSize:CGSizeMake(_ScollView.frame.size.width, scrollViewHeight)];
                }
            }
            
        }
    }
}
@end
