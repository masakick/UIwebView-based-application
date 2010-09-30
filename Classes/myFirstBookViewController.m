//
//  myFirstBookViewController.m
//  myFirstBook
//
//  Created by masaki on 10/09/29.
//  Copyright 2010 CTO, COO at Alliance Port, LLC. All rights reserved.
//

#import "myFirstBookViewController.h"

@implementation myFirstBookViewController




/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	[[UIApplication sharedApplication] setStatusBarHidden:YES];
	[self.navigationController setNavigationBarHidden:YES];
	
	NSString *fileName = @"index"; //読み込みたいファイル名（拡張子は含まない）
	NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:@"html"];
	NSURL *url = [NSURL fileURLWithPath:filePath];
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	[webView loadRequest:request];
	
}



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[webView dealloc];
    [super dealloc];
}

@end
