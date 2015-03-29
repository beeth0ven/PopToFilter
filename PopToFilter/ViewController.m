//
//  ViewController.m
//  PopToFilter
//
//  Created by luojie on 3/29/15.
//  Copyright (c) 2015 luojie. All rights reserved.
//

#import "ViewController.h"
#import "FilterTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"filter"]) {
        if ([segue.destinationViewController isKindOfClass:[FilterTableViewController class]]) {
            FilterTableViewController *ftvc = (FilterTableViewController *)segue.destinationViewController;
            UIPopoverPresentationController *ppc = ftvc.popoverPresentationController;
            ppc.backgroundColor = ftvc.tableView.backgroundColor;
            ppc.delegate = self;
        }
    }
}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    return UIModalPresentationNone;
}



@end
