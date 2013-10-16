//
//  GameViewController.m
//  colorfulMemoryForIOS
//
//  Created by pc on 13-10-10.
//  Copyright (c) 2013年 pc. All rights reserved.
//

#import "GameViewController.h"

const static int ROWS_COUNT = 6;
const static int COLUMNS_COUNT = 4;
const static NSTimeInterval TIMERINTERVAL = 0.2;
const static int CARD_TRANSFORM_ANIMATION_INTERVAL = 0.4;
@interface GameViewController ()
{
    UILabel * timeTextLabel;
    double timeOfGameInSecond;
}-(void) initColors;
-(void) initCard;
-(void) initCardsLayout;
-(void) onCardClicked;
-(void) onSuccess;

@end

@implementation GameViewController

-(void) initColors
{

}
-(void)initCard
{

}
-(void)initCardsLayout
{

}

-(void)onCardClicked
{

}
-(void)onSuccess
{

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    
    UIImageView *backImage = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    UIImage *image = [UIImage imageNamed:@"background2.jpg"];
    [backImage setContentMode:UIViewContentModeScaleAspectFill];
    [backImage setImage:image];
    [self.view addSubview:backImage];
    
    timeTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 50, 30)];
    timeTextLabel.text = @"Time:";
    UIFont * tempFont= [UIFont boldSystemFontOfSize:18];
    timeTextLabel.font = tempFont;

    //CGRect labelSize = [@"Time:" boundingRectWithSize:CGSizeMake(320, 2000) options:NSStringDrawingTruncatesLastVisibleLine attributes:tempFont.fontDescriptor.fontAttributes context:nil];
    //timeTextLabel.bounds = labelSize;
    timeTextLabel.textColor = [UIColor whiteColor];
    [timeTextLabel setNumberOfLines:0];    timeTextLabel.shadowColor = [UIColor redColor];
    timeTextLabel.shadowOffset = CGSizeMake(0, 1);
    timeTextLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    timeTextLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines;
    [self.view addSubview:timeTextLabel];
    
    
    
    self.timerLabel = [[UILabel alloc]initWithFrame:CGRectMake(
        timeTextLabel.frame.origin.x + timeTextLabel.frame.size.width + 10,
                                                              20, 50, 30)];
    [self.view addSubview:self.timerLabel];
    
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(220, 20, 50, 30)];
    [backBtn setBackgroundColor:[UIColor purpleColor]];
    [backBtn addTarget:self action:@selector(BackAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:TIMERINTERVAL target:self selector:@selector(timerTick) userInfo:nil repeats:YES];
    
    
    
    //back button
	// Do any additional setup after loading the view.
}
-(void) BackAction
{
    [self.navigationController popViewControllerAnimated:false];
    
}
-(void) timerTick
{
    NSLog(@"timer tick");
    timeOfGameInSecond+=TIMERINTERVAL;
    int min = timeOfGameInSecond / 60;
    int sec = fmod(timeOfGameInSecond, 60);
    NSString *minString =[[NSString alloc]initWithFormat:@"%d",min];
    NSString *secString =[[NSString alloc]initWithFormat:@"%d",sec];
    NSString *zeroString = @"0";
    if (minString.length == 1)
    {
        minString = [zeroString stringByAppendingString:minString];
    }
    if (secString.length == 1)
        secString = [zeroString stringByAppendingString:secString];
    self.timerLabel.text = [[NSString alloc]initWithFormat:@"%@:%@", minString,secString ];
}
-(void) viewDidDisappear:(BOOL)animated
{
    [self.timer invalidate];
    NSLog(@"timer invalidate");
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
