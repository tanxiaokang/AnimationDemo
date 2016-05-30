//
//  ViewController.m
//  LoadingDemo
//
//  Created by 三少 on 16/5/30.
//  Copyright © 2016年 Demo. All rights reserved.
//

#import "ViewController.h"

#import "OneLoadingAnimationView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet OneLoadingAnimationView *animationView;

@end

@implementation ViewController
- (IBAction)start:(id)sender {
    [_animationView startAnimation];
}
#pragma mark - qwe
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
