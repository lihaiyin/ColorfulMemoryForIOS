//
//  ViewController.m
//  ColorfulMemory
//
//  Created by pc on 13-10-10.
//  Copyright (c) 2013年 pc. All rights reserved.
//

#import "ViewController.h"
#import "GameViewController.h"

#import "ScoreViewController.h"
@interface StartPageViewController ()

@end
const CGFloat BUTTON_MARGIN = 100;
@implementation StartPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImageView *backImage = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    UIImage *image = [UIImage imageNamed:@"background2.jpg"];
    [backImage setContentMode:UIViewContentModeScaleAspectFill];
    [backImage setImage:image];
    
    UIButton *play = [UIButton buttonWithType:UIButtonTypeCustom];
    play.bounds = CGRectMake(0, 0, 200 , 50.0f);
    [play setCenter:CGPointMake(backImage.center.x, backImage.center.y - 50)];
    [play setTitle:@"Start" forState:UIControlStateNormal];
    [play setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
    [play setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [play setBackgroundColor:[UIColor purpleColor]] ;
    [play addTarget:self action:@selector(playClick) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *score = [UIButton buttonWithType:UIButtonTypeCustom];
    score.bounds= CGRectMake(0, 50, 200, 50);
    [score setCenter:CGPointMake(backImage.center.x, backImage.center.y+50)];
    [score setTitle:@"Score" forState:UIControlStateNormal];
    [score setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
    [score setTitleShadowColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [score setBackgroundColor:[UIColor purpleColor]];
    [score addTarget:self action:@selector(scoreClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backImage];
    [self.view addSubview:play];
    [self.view addSubview:score];
    
}

-(void)scoreClick
{
    [self.navigationController pushViewController:[[ScoreViewController alloc]initWithNibName:nil bundle:nil] animated:false];
}

-(void)playClick
{
    [self.navigationController pushViewController:[[GameViewController alloc] init] animated:false];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
