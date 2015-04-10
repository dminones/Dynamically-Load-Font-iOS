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
    NSString *fontName, *fontFile;
    
    switch (button.tag) {
        case 0:
            fontName = @"KOZGOPRO-BOLD";
            break;
        case 1:
            fontName = @"Boku2-Regular";
            break;
        default:
            break;
    }
    fontFile = [[NSBundle mainBundle] pathForResource:fontName ofType:@"otf"];
    [UIFont registerDynamicallyFontWithFileURL:fontFile];
    [self.label setFont:[UIFont fontWithName:fontName size:15.0]];
}

@end
