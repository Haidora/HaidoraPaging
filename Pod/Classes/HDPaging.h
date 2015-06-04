//
//  HDPaging.h
//  Pods
//
//  Created by Dailingchi on 15/6/4.
//
//

#import <Foundation/Foundation.h>

#pragma mark
#pragma mark HDPaging
/**
 *  分页配置信息
 */
@interface HDPaging : NSObject

/**
 *  当前页,默认加载HDPagingConfig中startPage.
 */
@property (nonatomic, assign) NSInteger currentPage;

/**
 *  分页大小,默认加载HDPagingConfig中pageSize.
 */
@property (nonatomic, assign, readonly) NSInteger pageSize;

/**
 *  分页标志,默认为NO
 */
@property (nonatomic, assign, getter=isHaveNextPage) BOOL haveNextPage;

/**
 *  分页配置
 *
 *  @param startPage 起始页
 *  @param pageSize  每页大小
 *
 *  @return
 */
- (instancetype)initWith:(NSInteger)startPage pageSize:(NSInteger)pageSize;

/**
 *  重置配置
 */
- (void)resetConfig;
- (void)resetConfigWith:(NSInteger)startPage pageSize:(NSInteger)pageSize;

@end

#pragma mark
#pragma mark HDPagingConfig
/**
 *  分页全局配置信息,可以在app初始化好后配置
 */
@interface HDPagingConfig : NSObject

/**
 *  起始页,默认为0.
 */
@property (nonatomic, assign) NSInteger startPage;

/**
 *  分页大小,默认为10.
 */
@property (nonatomic, assign) NSInteger pageSize;

+ (HDPagingConfig *)sharedInstance;

@end
