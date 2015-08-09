//
//  ViewController.m
//  NSDateRelativeTimeDemo
//
//  Created by Ajith Kumar on 09/08/15.
//  Copyright (c) 2015 Ajith Kumar. All rights reserved.
//

#import "ViewController.h"
#import "NSDate+RelativeTime.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"===> %@",[[[NSDate date] dateByAddingTimeInterval:-1] findRelativeTimeString]);
    NSLog(@"===> %@",[[[NSDate date] dateByAddingTimeInterval:-5] findRelativeTimeString]);
    NSLog(@"===> %@",[[[NSDate date] dateByAddingTimeInterval:-60] findRelativeTimeString]);
    NSLog(@"===> %@",[[[NSDate date] dateByAddingTimeInterval:-60*5] findRelativeTimeString]);
    NSLog(@"===> %@",[[[NSDate date] dateByAddingTimeInterval:-60*60*24] findRelativeTimeString]);
    NSLog(@"===> %@",[[[NSDate date] dateByAddingTimeInterval:-60*60*24*5] findRelativeTimeString]);
    NSLog(@"===> %@",[[[NSDate date] dateByAddingTimeInterval:-60*60*24*7] findRelativeTimeString]);
    NSLog(@"===> %@",[[[NSDate date] dateByAddingTimeInterval:-60*60*24*7*10] findRelativeTimeString]);
}



@end
