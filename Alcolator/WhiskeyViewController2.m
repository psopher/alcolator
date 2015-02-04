//
//  WhiskeyViewController2.m
//  Alcolator
//
//  Created by Philip Sopher on 1/28/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "WhiskeyViewController2.h"

@interface WhiskeyViewController2 ()

@end

@implementation WhiskeyViewController2

//For Tabbed View Controller

//- (instancetype) init {
//    self = [super init];
//    if (self) {
//        self.title = NSLocalizedString(@"Whiskey", nil);
//    }
//    return self;
//}

//End of Tabbed View Controller Specific Code

- (void) viewDidLoad {
    [super viewDidLoad];
    
//    Code Specific to Navigation Controller
//    self.title = NSLocalizedString((@"Whiskey", @"whiskey %d"), numberOfBeers);
    //End of Code Specific to Navigation Controller
    
    //The Following For tabbed view controller only
    self.view.backgroundColor = [UIColor colorWithRed:0.992 green:0.992 blue:0.588 alpha:1];
}

- (void)buttonPressed:(UIButton *)sender;
{
    [self.beerPercentTextField resignFirstResponder];
    
    int numberOfBeers = self.beerCountSlider.value;
    int ouncesInOneBeerGlass = 12;
    
    float alcoholPercentageOfBeer = [self.beerPercentTextField.text floatValue] / 100;
    float ouncesOfAlcoholPerBeer = ouncesInOneBeerGlass * alcoholPercentageOfBeer;
    float ouncesOfAlcoholTotal = ouncesOfAlcoholPerBeer * numberOfBeers;
    
    float ouncesInOneWhiskeyGlass = 1;
    float alcoholPercentageOfWhiskey = 0.4;
    
    float ouncesOfAlcoholPerWhiskeyGlass = ouncesInOneWhiskeyGlass * alcoholPercentageOfWhiskey;
    float numberOfWhiskeyGlassesForEquivalentAlcoholAmount = ouncesOfAlcoholTotal / ouncesOfAlcoholPerWhiskeyGlass;
    
    NSString *beerText;
    
    if (numberOfBeers == 1) {
        beerText = NSLocalizedString(@"beer", @"singular beer");
    } else {
        beerText = NSLocalizedString(@"beers", @"plural of beer");
    }
    
    NSString *whiskeyText;
    
    if (numberOfWhiskeyGlassesForEquivalentAlcoholAmount == 1) {
        whiskeyText = NSLocalizedString(@"shots", @"plural of shot");
    }
    
    NSString *resultText = [NSString stringWithFormat:NSLocalizedString(@"%d %@ contains as much alcohol as %.lf %@ of whiskey.", nil), numberOfBeers, beerText, numberOfWhiskeyGlassesForEquivalentAlcoholAmount, whiskeyText];
    self.resultLabel.text = resultText;
}

@end
