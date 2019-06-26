//
//  ViewController.m
//  Tipster
//
//  Created by amandahar on 6/25/19.
//  Copyright © 2019 amandahar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// definitions go here
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"Hello");
    
    // java implementation:
    // self.view.endEditing(YES);
    // Objective-C uses YES and NO as opposed to true and false
    // square brackets is how you invoke the endEditing method on self.view object
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    
    double bill = [self.billField.text doubleValue];
    // * means that it's a pointer value aka this lives on the heap
    // only objects can be in an NSArray so we put the number values inside () and add @ in front as a shortcut to make the value an object
    NSArray *percentages = @[@(0.15), @(0.2), @(0.22)];
    
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    
    double tip = tipPercentage * bill;
    double total = bill + tip;

    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

@end
