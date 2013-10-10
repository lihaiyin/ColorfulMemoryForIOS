//
//  ViewController.m
//  ColorfulMemory
//
//  Created by pc on 13-10-10.
//  Copyright (c) 2013年 pc. All rights reserved.
//

#import "ViewController.h"

@interface StartPageViewController ()

@end

@implementation StartPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImageView *backImage = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [backImage setImage:[UIImage imageNamed:@"background2.jpg"]];
    
    UIButton *play = [UIButton buttonWithType:UIButtonTypeCustom];
    play.frame = CGRectMake(200.0f, 200.0f, (CGFloat)(self.view.frame.size.width - 200) , 50.0f);
    [play setTitle:@"Start" forState:UIControlStateNormal];
    [play setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    [play setBackgroundColor:[UIColor purpleColor]];
    [play addTarget:self action:@selector(playClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *score = [UIButton buttonWithType: UIButtonTypeCustom];
    score.frame = CGRectMake(200, 300, self.view.frame.size.width - 200 , 50);
    [score setTitle:@"Score" forState:UIControlStateNormal];
    [score setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    [score setBackgroundColor:[UIColor purpleColor]];
    [score addTarget:self action:@selector(scoreClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:play];
    [self.view addSubview:score];
    [self.view addSubview:backImage];
}

-(void)scoreClick
{
    
}

-(void)playClick
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
