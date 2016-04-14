//
//  ViewController.m
//  iReview
//
//  Created by Demond Childers on 4/13/16.
//  Copyright © 2016 Demond Childers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

#pragma mark -Properties

@property (nonatomic, weak) IBOutlet UILabel            *restLabel;
@property (nonatomic, weak) IBOutlet UITextField        *nameTextField;
@property (nonatomic, weak) IBOutlet UITextView         *reviewTextView;
@property (nonatomic, weak) IBOutlet UISegmentedControl *foodSegControl;
@property (nonatomic, weak) IBOutlet UIStepper          *foodStepper;
@property (nonatomic, weak) IBOutlet UISlider           *overallSlider;
@property (nonatomic, weak) IBOutlet UISwitch           *recomSwitch;


@end

@implementation ViewController


#pragma mark -Interactivity Methods



- (IBAction)setSubmitButton:(UIButton *)submitButton {
    NSString *recString = @"";
    if (_recomSwitch.isOn) {
        recString = @"Yes";
    } else {
        recString = @"No";
    }
    NSLog(@"%@ Results by %@ review: %@, Food Rating: %@, Service: %i, Overall: %i, Recommended: %@",_restLabel.text, _nameTextField.text, _reviewTextView.text, [_foodSegControl titleForSegmentAtIndex:_foodSegControl.selectedSegmentIndex], (int)_foodStepper.value, (int)_overallSlider.value, recString);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
