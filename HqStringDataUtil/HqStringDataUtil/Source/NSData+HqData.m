//
//  NSData+HqData.m
//  HqStringDataUtil
//
//  Created by hehuiqi on 2020/12/23.
//

#import "NSData+HqData.h"

@implementation NSData (HqData)

- (NSString *)dataToHex{
    
    const uint8_t *bytes = self.bytes;
    NSMutableString *hex = [[NSMutableString alloc] initWithCapacity:self.length*2];
    for (NSUInteger i = 0; i < self.length; i++) {
        [hex appendFormat:@"%02x", bytes[i]];
    }
    return  hex;
}
@end
