//
//  LogingViewController.m
//  CameraTest
//
//  Created by SDT-1 on 2014. 1. 15..
//  Copyright (c) 2014년 iamdreamer. All rights reserved.
//

#import "LogingViewController.h"

@interface LogingViewController ()
@property (weak, nonatomic) IBOutlet
UITextField *emailAddress;

@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation LogingViewController

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [self.emailAddress resignFirstResponder];
    [self.password resignFirstResponder];
    
    return YES;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
