//
//  Email-AlertViewController.m
//  Demo Objective C
//
//  Created by MT382 on 10/8/19.
//  Copyright © 2019 DongNV. All rights reserved.
//

#import "Email-AlertViewController.h"

@interface Email_AlertViewController ()
- (IBAction)email:(id)sender;
- (IBAction)text:(id)sender;
- (IBAction)alert:(id)sender;
- (IBAction)login:(id)sender;


@end

@implementation Email_AlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    if (error) {
        NSLog(@"the error is %@",error);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result {
}

- (IBAction)email:(id)sender {
    if([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc]init];
        mailController.mailComposeDelegate = self;
        [mailController setSubject:@"Send an email"];
        [mailController setToRecipients:[NSArray arrayWithObject:@"dongvv82@gmail.com"]];
        [mailController setMessageBody:@"hi! this is an email use to test objc" isHTML:NO];
        [self presentViewController: mailController animated: YES completion:nil];
    }
}

- (IBAction)text:(id)sender {
    if ([MFMessageComposeViewController canSendText]) {
        MFMessageComposeViewController *message = [[MFMessageComposeViewController alloc]init];
        message.messageComposeDelegate = self;
        message.body = @"this is text use to test message";
        message.recipients = [NSArray arrayWithObject:@"+84399252253"];
        [self presentViewController:message animated:YES completion:nil];
    }
}

- (IBAction)alert:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Notification" message:@"write alert here!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *actionConfirm = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action) {
        NSLog(@"confirm button is pressed");
    }];
    [alert addAction:actionConfirm];
    UIAlertController *actionCancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
        NSLog(@"cancel button is pressed");
    }];
    [alert addAction:actionCancel];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *_Nonnull textField) {
        textField.placeholder = @"enter text";
        textField.secureTextEntry = YES;
    }];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)login:(id)sender {
    // Title and message aler
    UIAlertController *alerController = [UIAlertController alertControllerWithTitle:@"Login" message:@"input account name and password" preferredStyle:UIAlertControllerStyleAlert];
    // First textfield account name
    [alerController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"UserName or Email";
        textField.borderStyle = UITextBorderStyleRoundedRect;
//        textField.keyboardType = UIKeyboardTypeEmailAddress;
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }];
    // Password textfield
    [alerController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"password";
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.secureTextEntry = YES;
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    }];
    // add button submit
    [alerController addAction:[UIAlertAction actionWithTitle:@"Login" style:UIAlertActionStyleDefault handler:nil]];
    // alertcontroller show
    [self presentViewController:alerController animated:YES completion:nil];
}
@end
