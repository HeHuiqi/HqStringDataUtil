//
//  NSString+HqString.m
//  HqStringDataUtil
//
//  Created by hehuiqi on 2020/12/23.
//

#import "NSString+HqString.h"

@implementation NSString (HqString)

- (NSData *)strToData{
    return  [self dataUsingEncoding:NSUTF8StringEncoding];
}
- (NSData *)hexToData {
    if (self.length % 2) return nil;
    NSMutableData *d = [[NSMutableData alloc] initWithCapacity:self.length / 2];
    uint8_t b = 0;

    for (NSUInteger i = 0; i < self.length; i++) {
        unichar c = [self characterAtIndex:i];

        switch (c) {
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                b += c - '0';
                break;
            case 'A':
            case 'B':
            case 'C':
            case 'D':
            case 'E':
            case 'F':
                b += c + 10 - 'A';
                break;
            case 'a':
            case 'b':
            case 'c':
            case 'd':
            case 'e':
            case 'f':
                b += c + 10 - 'a';
                break;
            default:
                return d;
        }

        if (i % 2) {
            [d appendBytes:&b length:1];
            b = 0;
        }
        else b *= 16;
    }

    return d;
}

@end
