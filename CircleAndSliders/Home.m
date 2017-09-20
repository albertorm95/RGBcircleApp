//
//  ViewController.m
//  CircleAndSliders
//
//  Created by econfig on 9/13/17.
//  Copyright © 2017 amrojas. All rights reserved.
//

#import "Home.h"
#import "stdlib.h"

int red = 0;
int green = 0;
int blue = 0;

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Declaring the circle.
    self.circleLayer = [CAShapeLayer layer];
    [self.circleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(156.5, 50, 100, 100)] CGPath]];
    [[self.view layer] addSublayer:self.circleLayer];
    
}

- (IBAction)alertButtm:(id)sender {
    
}

// Switch, hide and unhide circle.
- (IBAction)hideCircle:(id)sender {
    if (self.hideCircle.isOn) {
        self.circleLayer.hidden = true;
    }
    else self.circleLayer.hidden = false;
}

// fuction that set the color red of the circle.
- (void)setColorRed:(int)red {
    self.redLabel.text = [self intostring:red];
    [self.circleLayer setFillColor:[[UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1] CGColor]];
}

// Red Slider.
- (IBAction)redSlider:(id)sender {
    red = self.redSlider.value;
    [self setColorRed:red];
}

// fuction that set the color green of the circle.
- (void)setColorGreen:(int)green {
    self.greenLabel.text = [self intostring:green];
    [self.circleLayer setFillColor:[[UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1] CGColor]];
}

// Green Slider.
- (IBAction)greenSlider:(id)sender {
    green = self.greenSlider.value;
    [self setColorGreen:green];
}

// fuction that set the color blue of the circle.
- (void)setColorBlue:(int)blue {
    self.blueLabel.text = [self intostring:blue];
    [self.circleLayer setFillColor:[[UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1] CGColor]];
}

// Blue Slider.
- (IBAction)blueSlider:(id)sender {
    blue = self.blueSlider.value;
    [self setColorBlue:blue];
}

// LuckyButtom that change the circle color to a random one.
- (IBAction)LuckyButtom:(id)sender {
    red = arc4random_uniform(255);
    green = arc4random_uniform(255);
    blue = arc4random_uniform(255);
    self.redSlider.value = red;
    self.greenSlider.value = green;
    self.blueSlider.value = blue;
    [self setColorRed:red];
    [self setColorGreen:green];
    [self setColorBlue:blue];
}

// Util int to String.
- (NSString *)intostring:(int)value {
    NSString *string = [NSString stringWithFormat:@"#%02X", value];
    return string;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
