//
//  CardViewController.h
//  colorfulMemoryForIOS
//
//  Created by pc on 13-10-11.
//  Copyright (c) 2013年 pc. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^OnAnimationCompleted) (id arg);
@interface CardViewController : UIViewController
@property (nonatomic,strong) OnAnimationCompleted EventHandler;
@property (nonatomic,strong) UIColor *color;
@property (nonatomic,strong) UIImageView *imageView;
- (void) breakCard;
- (void) startAnimation;
@end
