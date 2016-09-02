//
//  WHNetwork.m
//  localIP
//
//  Created by 王浩 on 16/9/2.
//  Copyright © 2016年 王浩. All rights reserved.
//

#import "WHNetwork.h"
//为了ip地址导入的头文件
#include <arpa/inet.h>
#include <net/if.h>
#include <ifaddrs.h>

@implementation WHNetwork


+ (NSString *)localIPAddress
{
    NSString *localIP = nil;
    struct ifaddrs *addrs;
    if (getifaddrs(&addrs)==0) {
        const struct ifaddrs *cursor = addrs;
        while (cursor != NULL) {
            if (cursor->ifa_addr->sa_family == AF_INET && (cursor->ifa_flags & IFF_LOOPBACK) == 0)
            {
                {
                    localIP = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)cursor->ifa_addr)->sin_addr)];
                    break;
                }
            }
            cursor = cursor->ifa_next;
        }
        freeifaddrs(addrs);
    }
    return localIP;
}

@end
