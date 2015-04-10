//
//  ViewController.m
//  DynamicFontLoading
//
//  Created by Dario on 4/10/15.
//  Copyright (c) 2015 Cactus. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loadFont:(id)sender {
    UIButton *button = (UIButton*)sender;
    NSString *fontFile = [[NSBundle mainBundle] pathForResource:@"KOZGOPRO-BOLD" ofType:@"otf"];
    [UIFont registerDynamicallyFontWithFileURL:fontFile];
    [self.label setFont:[UIFont fontWithName:@"KOZGOPRO-BOLD" size:15.0]];
}

@end
