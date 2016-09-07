//
//  RowViewController.m
//  DynamicTable
//
//  Created by ankur on 07/09/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import "RowViewController.h"

@interface RowViewController ()

@end

@implementation RowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITextField *nameTxt = [[UITextField alloc]initWithFrame:CGRectMake(10, 10, self.view.frame.size.width-40, 35)];
    UITextField *addTxt = [[UITextField alloc]initWithFrame:CGRectMake(10, 55, 280, 35)];
    
    nameTxt.placeholder = @"Enter Name";
    addTxt.placeholder = @"Enter Address";
    
    [self.view addSubview:nameTxt];
    [self.view addSubview:addTxt];
    
    addTxt.backgroundColor=[UIColor whiteColor];
    nameTxt.backgroundColor=[UIColor whiteColor];
    
    
    nameTxt.borderStyle = UITextBorderStyleRoundedRect;
    nameTxt.font = [UIFont systemFontOfSize:15];
    nameTxt.autocorrectionType = UITextAutocorrectionTypeNo;
    nameTxt.keyboardType = UIKeyboardTypeDefault;
    nameTxt.returnKeyType = UIReturnKeyDone;
    nameTxt.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    
    addTxt.borderStyle = UITextBorderStyleRoundedRect;
    addTxt.font = [UIFont systemFontOfSize:15];
    addTxt.autocorrectionType = UITextAutocorrectionTypeNo;
    addTxt.keyboardType = UIKeyboardTypeDefault;
    addTxt.returnKeyType = UIReturnKeyDone;
    addTxt.clearButtonMode = UITextFieldViewModeWhileEditing;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
