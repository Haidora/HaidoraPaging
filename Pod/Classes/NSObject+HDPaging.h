//
//  NSObject+HDPaging.h
//  Pods
//
//  Created by Dailingchi on 15/6/4.
//
//

#import <Foundation/Foundation.h>
#import "HDPaging.h"

/**
 *  在需要分页的模块中引入该头文件
 */
@interface NSObject (HDPaging)

/**
 *  懒加载
 */
@property (nonatomic, strong, readonly) HDPaging *hd_PagingConfig;

@end
