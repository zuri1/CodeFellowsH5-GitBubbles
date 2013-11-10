//
//  FSViewController.m
//  CodeFellowsH5-GitBubbles
//
//  Created by Jake Chapman on 11/7/13.
//  Copyright (c) 2013 Fake Org. All rights reserved.
//

#import "FSViewController.h"

@interface FSViewController () <UIGestureRecognizerDelegate>

@property (nonatomic, strong) UIDynamicAnimator *animator;

@end

@implementation FSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _bubbleView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 60, 60)];
    _bubbleView2 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 60, 60)];
    _bubbleView3 = [[UIView alloc] initWithFrame:CGRectMake(200, 200, 60, 60)];
    _bubbleView4 = [[UIView alloc] initWithFrame:CGRectMake(30, 200, 60, 60)];
    _bubbleView5 = [[UIView alloc] initWithFrame:CGRectMake(180, 300, 60, 60)];
    
    _bubbleViews = [NSArray arrayWithObjects:_bubbleView, _bubbleView2, _bubbleView3, _bubbleView4, _bubbleView5, nil];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    for (UIView *bubbleView in _bubbleViews)
    {
        UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
        
        bubbleView.backgroundColor = [UIColor purpleColor];
        [self.view addSubview:bubbleView];
        bubbleView.layer.cornerRadius = 30.f;
        bubbleView.clipsToBounds = YES;
        [bubbleView addGestureRecognizer:tapGestureRecognizer];
    }
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:self.bubbleViews];
}

- (void)handleTap:(UITapGestureRecognizer *)sender
{
    // code here
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end