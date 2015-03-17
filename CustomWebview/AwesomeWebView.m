//
//  AwesomeWebView.m
//  CustomWebview
//
//  Created by Yannick Heinrich on 17/03/15.
//  Copyright (c) 2015 yageek. All rights reserved.
//

#import "AwesomeWebView.h"

@implementation AwesomeWebView

- (id) initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder])
    {
        [self setupScrollView:TOP_SPACE_HEIGHT];
    }
    return self;
}

- (id) initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        [self setupScrollView:TOP_SPACE_HEIGHT]; // Setting the contentInset
    }
    return self;
}

- (void) setupScrollView:(CGFloat)headerHeight
{
    // Set the contentInset to create space for the top View
    self.scrollView.contentInset = UIEdgeInsetsMake(headerHeight, 0, 0, 0);
    
    // Set the contentSize
    self.scrollView.contentSize = (CGSize){CGRectGetWidth(self.frame), CGRectGetHeight(self.frame) + headerHeight};
    
    //Make the scroll indicator insets starts at the bottom of the top view
    self.scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(headerHeight, 0, 0, 0);
    
    //Initialize the redTopView
    //-> Keep in mind that the zone up to the scroll view is negative.
    UIView * redView = [[UIView alloc] initWithFrame:CGRectMake(0, -headerHeight, CGRectGetWidth(self.frame), headerHeight)];
    redView.backgroundColor = [UIColor redColor];
    
    //Finally add it to the view;
    [self.scrollView addSubview:redView];
}

@end
