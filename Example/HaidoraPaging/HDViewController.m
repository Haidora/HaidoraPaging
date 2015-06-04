//
//  HDViewController.m
//  HaidoraPaging
//
//  Created by mrdaios on 06/04/2015.
//  Copyright (c) 2014 mrdaios. All rights reserved.
//

#import "HDViewController.h"
#import <HaidoraPaging/NSObject+HDPaging.h>

@interface HDViewController ()

@end

@implementation HDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [HDPagingConfig sharedInstance].startPage = 10;
    [HDPagingConfig sharedInstance].pageSize = 100;
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@", @(self.hd_PagingConfig.currentPage));
    NSLog(@"%@", @(self.hd_PagingConfig.pageSize));
    NSLog(@"%@", @(self.hd_PagingConfig.haveNextPage));

    self.hd_PagingConfig.currentPage = 40;
    NSLog(@"%@", @(self.hd_PagingConfig.currentPage));
    NSLog(@"%@", @(self.hd_PagingConfig.pageSize));
    NSLog(@"%@", @(self.hd_PagingConfig.haveNextPage));

    [self.hd_PagingConfig resetConfig];
    NSLog(@"%@", @(self.hd_PagingConfig.currentPage));
    NSLog(@"%@", @(self.hd_PagingConfig.pageSize));
    NSLog(@"%@", @(self.hd_PagingConfig.haveNextPage));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
