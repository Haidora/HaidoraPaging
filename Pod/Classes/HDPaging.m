//
//  HDPaging.m
//  Pods
//
//  Created by Dailingchi on 15/6/4.
//
//

#import "HDPaging.h"

@interface HDPaging ()

@property (nonatomic, assign, readwrite) NSInteger pageSize;

@end

@implementation HDPaging

- (instancetype)init
{
    return [self initWith:[HDPagingConfig sharedInstance].startPage
                 pageSize:[HDPagingConfig sharedInstance].pageSize];
}

- (instancetype)initWith:(NSInteger)startPage pageSize:(NSInteger)pageSize
{
    self = [super init];
    if (self)
    {
        self.currentPage = startPage;
        self.pageSize = pageSize;
        self.haveNextPage = NO;
    }
    return self;
}

- (void)resetConfig
{
    self.currentPage = [HDPagingConfig sharedInstance].startPage;
    self.pageSize = [HDPagingConfig sharedInstance].pageSize;
    self.haveNextPage = NO;
}

- (void)resetConfigWith:(NSInteger)startPage pageSize:(NSInteger)pageSize
{
    self.currentPage = startPage;
    self.pageSize = pageSize;
    self.haveNextPage = NO;
}

@end

#pragma mark
#pragma mark HDPagingConfig

@implementation HDPagingConfig

static HDPagingConfig *sharedHDPagingConfig = nil;

+ (HDPagingConfig *)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      sharedHDPagingConfig = [[HDPagingConfig alloc] init];
      sharedHDPagingConfig.startPage = 0;
      sharedHDPagingConfig.pageSize = 10;
    });
    return sharedHDPagingConfig;
}

@end