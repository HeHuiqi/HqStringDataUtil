//
//  NSString+HqString.h
//  HqStringDataUtil
//
//  Created by hehuiqi on 2020/12/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (HqString)

- (NSData *)strToData;
- (NSData *)hexToData;


@end

NS_ASSUME_NONNULL_END
