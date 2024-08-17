//
//  ViewController.m
//  Digital Clock Application
//
//  Created by Rently Coimbatore on 17/08/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateTimer];
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector: @selector(updateTimer) userInfo:nil repeats: YES];
    
    self.settingsView.hidden = YES;
    self.settingsButton.alpha = 0.15;
    self.settingsView.layer.cornerRadius = 20;
    self.settingsButton.layer.cornerRadius = 20;
    
    
}

- (void) updateTimer {
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"HH:mm:ss"];
    self.label.text = [timeFormat stringFromDate:[NSDate date]];
    
    
    
}


- (IBAction)backgroundImage:(id)sender {
    self.backgroundImage.hidden = NO;

    if(self.backgroundImageSeg.selectedSegmentIndex == 0 )
    {
        self.backgroundImage.image = [UIImage imageNamed:@"Background1"];
    }
    else if(self.backgroundImageSeg.selectedSegmentIndex == 1 ) {
        self.backgroundImage.image = [UIImage imageNamed:@"Background2"];

    }
    else if(self.backgroundImageSeg.selectedSegmentIndex == 2 ) {
        self.backgroundImage.image = [UIImage imageNamed:@"Background3"];

    }
    else if(self.backgroundImageSeg.selectedSegmentIndex == 3 ) {
        self.backgroundImage.image = [UIImage imageNamed:@"Background4"];

        
    }

}

- (IBAction)backgroundColour:(id)sender {
    self.backgroundImage.hidden = YES;
    if(self.backgroundColourSeg.selectedSegmentIndex == 0 )
    {
        self.view.backgroundColor = [UIColor blackColor];
    }
    else if(self.backgroundColourSeg.selectedSegmentIndex == 1 ) {
        self.view.backgroundColor = [UIColor whiteColor];

    }
    else if(self.backgroundColourSeg.selectedSegmentIndex == 2 ) {
        self.view.backgroundColor = [UIColor yellowColor];

    }
    else if(self.backgroundColourSeg.selectedSegmentIndex == 3 ) {
        self.view.backgroundColor = [UIColor blueColor];

        
    }

}

- (IBAction)clockColour:(id)sender {
    
    if(self.clockColourSeg.selectedSegmentIndex == 0 )
    {
        self.label.textColor = [UIColor whiteColor];
    }
    else if(self.clockColourSeg.selectedSegmentIndex == 1 ) {
        self.label.textColor = [UIColor blackColor];

    }
    else if(self.clockColourSeg.selectedSegmentIndex == 2 ) {
        self.label.textColor = [UIColor greenColor];

    }
    else if(self.clockColourSeg.selectedSegmentIndex == 3 ) {
        self.label.textColor = [UIColor redColor];

        
    }

}

- (IBAction)settings:(id)sender {
    if(self.settingsView.hidden == YES)
    {
        self.settingsView.hidden = NO;
        self.settingsButton.alpha = 1.0;
        [self.settingsButton setTitle:@"Hide Settings" forState:UIControlStateNormal];
    }
    else
    {
        self.settingsView.hidden = YES;
        self.settingsButton.alpha = 0.15;
        [self.settingsButton setTitle:@"Show Settings" forState:UIControlStateNormal];
    }
}
@end
