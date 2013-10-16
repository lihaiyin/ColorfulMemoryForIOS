//
//  GameViewController.h
//  colorfulMemoryForIOS
//
//  Created by pc on 13-10-10.
//  Copyright (c) 2013年 pc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController
@property UILabel *timerLabel;
@property UIImageView *backImageView;
@property UIView *group;
@property NSArray *colorArray;
@property NSTimer *timer;
@end
