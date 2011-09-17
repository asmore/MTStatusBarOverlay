//
//  RootViewController.m
//  Demo
//
//  Created by More on 11-9-17.
//  Copyright 2011 More, AM9 Studio. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController


#pragma mark -
#pragma mark View lifecycle

/*
- (void)viewDidLoad {
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
*/

/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


- (IBAction) progress_01
{
    MTStatusBarOverlay *overlay = [MTStatusBarOverlay sharedInstance];
    overlay.animation = MTStatusBarOverlayAnimationFallDown;  // MTStatusBarOverlayAnimationShrink
    overlay.detailViewMode = MTDetailViewModeHistory;         // enable automatic history-tracking and show in detail-view
    overlay.delegate = self;
    overlay.progress = 0.0;
    
    [overlay postMessage:@"Following @myell0w on Twitter…"];
    overlay.progress = 0.1;
    
    // ...
    //[overlay postMessage:@"Following myell0w on Github…" animated:YES];
    //overlay.progress = 0.5;
    // ...
    //[overlay postImmediateFinishMessage:@"Following was a good idea!" duration:2.0 animated:YES];
    //overlay.progress = 1.0;        
}

- (IBAction) progress_05
{
    MTStatusBarOverlay *overlay = [MTStatusBarOverlay sharedInstance];
    overlay.animation = MTStatusBarOverlayAnimationFallDown;  // MTStatusBarOverlayAnimationShrink
    overlay.detailViewMode = MTDetailViewModeHistory;         // enable automatic history-tracking and show in detail-view
    overlay.delegate = self;
    overlay.progress = 0.0;

    [overlay postMessage:@"Following @myell0w on Twitter…"];
    overlay.progress = 0.1;
    
    // ...
    [overlay postMessage:@"Following myell0w on Github…" animated:YES];
    overlay.progress = 0.5;
    
    // ...
    //[overlay postImmediateFinishMessage:@"Following was a good idea!" duration:2.0 animated:YES];
    //overlay.progress = 1.0;        
}

- (IBAction) progress_10
{
    MTStatusBarOverlay *overlay = [MTStatusBarOverlay sharedInstance];
    overlay.animation = MTStatusBarOverlayAnimationShrink;  // MTStatusBarOverlayAnimationShrink
    overlay.detailViewMode = MTDetailViewModeHistory;         // enable automatic history-tracking and show in detail-view
    overlay.delegate = self;
    overlay.progress = 0.0;
    
    //[overlay postMessage:@"Following @myell0w on Twitter…"];
    //overlay.progress = 0.1;
    
    // ...
    //[overlay postMessage:@"Following myell0w on Github…" animated:NO];
    //overlay.progress = 0.5;
    
    // ...
    [overlay postImmediateFinishMessage:@"Following was a good idea!" duration:2.0 animated:YES];
    overlay.progress = 1.0;        
}

- (IBAction) statusBar_StyleDefault
{
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;

}
- (IBAction) statusBar_BlackOpaque
{
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleBlackOpaque;
}
@end

