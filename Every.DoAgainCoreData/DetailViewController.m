//
//  DetailViewController.m
//  Every.DoAgainCoreData
//
//  Created by Victor Hong on 23/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "DetailViewController.h"
#import "NSDate+HelperFunction.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.titleLabel.text = self.detailItem.title;
        self.todoDescriptionLabel.text = self.detailItem.todoDescription;
        self.deadlineLabel.text = [NSString stringWithFormat:@"Deadline : %@", [NSDate stringFromDate:self.detailItem.deadlineDate]];
        self.priorityLabel.text = [NSString stringWithFormat:@"Priority : %ld", (long)self.detailItem.priorityNumber];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(Todo *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
