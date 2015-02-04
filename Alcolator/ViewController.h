//
//  ViewController.h
//  Alcolator
//
//  Created by Philip Sopher on 1/25/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UITextField *beerPercentTextField;

@property (weak, nonatomic) UISlider *beerCountSlider;

@property (weak, nonatomic) UILabel *beerLabel;

@property (weak, nonatomic) UILabel *resultLabel;

-(void)buttonPressed:(UIButton *)sender;

@end

