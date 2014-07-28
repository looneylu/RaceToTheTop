//
//  ViewController.m
//  RaceToTheTop
//
//  Created by Luis Carbuccia on 7/27/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

+ (NSArray *) mountainPathsForRect:(CGRect)rect
{
    NSMutableArray *variousPaths = [@[] mutableCopy];
    
    CGPoint firstPoint = CGPointMake(rect.size.width * (1/6.0), CGRectGetMaxY(rect));
    CGPoint secondPoint = CGPointMake(rect.size.width * (1/3.0), rect.size.height *(5/6.0));
    
    UIBezierPath *labyrinthPath = [UIBezierPath bezierPath];
    labyrinthPath.lineWidth = 4.0;
    [labyrinthPath moveToPoint:firstPoint];
    [labyrinthPath addLineToPoint:secondPoint];
    
    [variousPaths addObject:labyrinthPath];
    
    return variousPaths;    
}

@end
