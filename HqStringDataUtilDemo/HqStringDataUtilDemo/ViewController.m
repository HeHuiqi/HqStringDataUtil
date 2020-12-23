//
//  ViewController.m
//  HqStringDataUtilDemo
//
//  Created by hehuiqi on 2020/12/23.
//

#import "ViewController.h"
#import <HqStringDataUtil/HqStringDataUtil.h>

/**
 在静态库封装过程中，如果静态库.a 或者.framework文件包含类别，在主工程将无法使用。

 解决方法为：找到主工程的 target －－Build Setting－－Linking－－更改其 Other Linker Flags 为： -all_load 或 -force_load 即可。
 
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSData *data = @"1234".hexToData;
    NSLog(@"data==%@",data);
    NSString *hexStr = data.dataToHex;
    NSLog(@"hexStr==%@",hexStr);
    
}


@end
