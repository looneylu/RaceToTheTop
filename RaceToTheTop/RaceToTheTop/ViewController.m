//
//  ViewController.m
//  RaceToTheTop
//
//  Created by Luis Carbuccia on 7/27/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "ViewController.h"
#import "PathView.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet PathView *pathView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected:)];
    tapRecognizer.numberOfTapsRequired = 2;
    [self.pathView addGestureRecognizer:tapRecognizer];
    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panDetected:)];
    [self.pathView addGestureRecognizer:panRecognizer];
    
}

- (void) panDetected:(UIPanGestureRecognizer *)panRecognizer
{
    NSLog(@"Pan detected");
    CGPoint fingerLocation = [panRecognizer locationInView:self.pathView];
    NSLog(@"I'm at (%f,%f)", fingerLocation.x, fingerLocation.y); 
}

- (void) tapDetected:(UITapGestureRecognizer *)tapRecognizer
{
    NSLog(@"Tapped");
    CGPoint tapLocation = [tapRecognizer locationInView:self.pathView];
    NSLog(@"Tap location is at (%f,%f)", tapLocation.x, tapLocation.y);
}

@end
