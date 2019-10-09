//
//  StorybroadViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/8/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "StorybroadViewController.h"

@interface StorybroadViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityInd;
- (IBAction)action:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIStepper *stepperVar;
@property (weak, nonatomic) IBOutlet UIProgressView *progressVar;
@property (weak, nonatomic) IBOutlet UISwitch *switchVar;
- (IBAction)stepperAction:(id)sender;
@end

@implementation StorybroadViewController
@synthesize textField;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_activityInd stopAnimating];
    _activityInd.hidesWhenStopped = YES;
    textField.delegate = self;
    textField.placeholder = @"enter text";
    textField.borderStyle = UITextBorderStyleLine;
    [textField.layer setCornerRadius:15];
    textField.backgroundColor = [UIColor colorWithRed:0/256.0 green:84/256.0 blue:129/256.0 alpha:1];
    textField.textColor = [UIColor whiteColor];
    textField.textAlignment = NSTextAlignmentLeft;
    textField.font = [UIFont fontWithName:@"optima" size:18];
    textField.keyboardType=UIKeyboardTypeEmailAddress;
    _textField2.secureTextEntry = YES;
    _textField2.placeholder = @"Enter text";
    _textField2.borderStyle = UITextBorderStyleNone;
    _switchVar.onTintColor = [UIColor blueColor];
}

- (IBAction)action:(id)sender {
    if ([sender tag] == 1) {
        NSLog(@"start is pressed");
        [_activityInd startAnimating];
        textField.text = @"indicator has started";
        
    }else if ([sender tag] == 2) {
        NSLog(@"stop is pressed");
        [_activityInd stopAnimating];
        textField.text = @"indicator has stopped";
    }
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"the editing has begin");
    [textField becomeFirstResponder];
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"the editing has stopped");
    [textField resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"khi return textField 1 thì chuyển sang nhập textField 2");
    [_textField2 becomeFirstResponder];
    return YES;
}
- (IBAction)stepperAction:(id)sender {
    [_progressVar setProgress:_progressVar.progress+0.1 animated:YES];
    if (_switchVar.on == NO)
        [_switchVar setOn:YES animated:YES];
    else
        [_switchVar setOn:NO animated:YES];
}
@end
