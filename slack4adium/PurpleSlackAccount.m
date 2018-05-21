//
//  slack4adium
//
//  Created by Victor Igumnov on 05-17-18.
//  Copyright © 2018 Victor Igumnov. All rights reserved.
//

#import "PurpleSlackAccount.h"
#import <Adium/AIStatus.h>

@implementation PurpleSlackAccount

- (const char*)protocolPlugin
{
    return "prpl-slackweb";
}

- (NSString *)host
{
    return @"slack.com";
}

/*
- (const char *)purpleStatusIDForStatus:(AIStatus *)statusState
                              arguments:(NSMutableDictionary *)arguments
{
    char *statusID = NULL;
    
    switch (statusState.statusType) {
        case AIAvailableStatusType:
            statusID = "Online";
            break;
        case AIAwayStatusType:
            statusID = "Away";
            break;
            
        case AIInvisibleStatusType:
            statusID = "Hidden";
            break;
            
        case AIOfflineStatusType:
            statusID = "Offline";
            break;
    }
    
    return statusID;
}*/

@end
