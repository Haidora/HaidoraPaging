//
//  NSObject+HDPaging.m
//  Pods
//
//  Created by Dailingchi on 15/6/4.
//
//

#import "NSObject+HDPaging.h"
#import <objc/runtime.h>

static char *kHDPagingConfig = "kHDPagingConfig";

@implementation NSObject (HDPaging)

@dynamic hd_PagingConfig;

- (void)setHd_PagingConfig:(HDPaging *)hd_PagingConfig
{
    objc_setAssociatedObject(self, kHDPagingConfig, hd_PagingConfig,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (HDPaging *)hd_PagingConfig
{
    HDPaging *config = objc_getAssociatedObject(self, kHDPagingConfig);
    if (!config)
    {
        config = [[HDPaging alloc] init];
        [self setHd_PagingConfig:config];
    }
    return config;
}

@end