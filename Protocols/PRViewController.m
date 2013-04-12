//
//  PRViewController.m
//  Protocols
//
//  Created by Romy on 4/11/13.
//  Copyright (c) 2013 Snowyla. All rights reserved.
//

#import "PRViewController.h"

@interface PRViewController ()

@end

@implementation PRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    PRRequest *request = [[PRRequest alloc] init];
    [request startSomething];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - UITextFieldDelegate
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    // let's check if the string is range is a number
    NSRange characterRange = [string rangeOfCharacterFromSet:[NSCharacterSet letterCharacterSet]];
    
    // if we've detected a character in our string, we're not going to insert that letter character in our text field
    if(characterRange.location != NSNotFound) {
        return NO;
    }
    
    return YES;
}

-(void)requestStarted
{
    NSLog(@"Request started at %@", [NSDate date]);
    
    
}

-(void)requestFinished:(PRRequest *)request {
    NSLog(@"Request %p finished at %@", request, [NSDate date]);
}


@end
