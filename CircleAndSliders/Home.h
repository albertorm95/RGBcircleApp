//
//  ViewController.h
//  CircleAndSliders
//
//  Created by econfig on 9/13/17.
//  Copyright © 2017 amrojas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController

@property (strong, nonatomic) CAShapeLayer *circleLayer;
@property (strong, nonatomic) IBOutlet UISwitch *hideCircle;
@property (strong, nonatomic) IBOutlet UISlider *redSlider;
@property (strong, nonatomic) IBOutlet UISlider *greenSlider;
@property (strong, nonatomic) IBOutlet UISlider *blueSlider;
@property (strong, nonatomic) IBOutlet UILabel *redLabel;
@property (strong, nonatomic) IBOutlet UILabel *greenLabel;
@property (strong, nonatomic) IBOutlet UILabel *blueLabel;
@property (strong, nonatomic) IBOutlet UITextField *nameField;
@property (strong, nonatomic) IBOutlet UITextField *phoneField;

@property (strong, nonatomic) UIAlertController *alertView;
@property (strong, nonatomic) UIAlertAction *alertViewOk;

@end

