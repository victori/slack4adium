//
//  slack4adium
//
//  Created by Victor Igumnov on 05-17-18.
//  Copyright © 2018 Victor Igumnov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#import "PurpleSlackAccount.h"
#import "PurpleSlackService.h"

#import <Adium/AISharedAdium.h>
#import <Adium/AIStatusControllerProtocol.h>
#import <AIUtilities/AIStringUtilities.h>
#import <AIUtilities/AIImageAdditions.h>

@implementation PurpleSlackService

- (Class)accountClass {
    return [PurpleSlackAccount class];
}

// Service Description
- (AIServiceImportance)serviceImportance { return AIServicePrimary; }
- (NSString *) serviceCodeUniqueID       { return @"libpurple-slackweb"; }
- (NSString *) serviceID                 { return @"Slack"; }
- (NSString *) serviceClass              { return @"Slack"; }
- (NSString *) shortDescription          { return @"Slack"; }
- (NSString *) longDescription           { return @"Slack API"; }
- (NSUInteger) allowedLength             { return 64; }
- (BOOL) requiresPassword                { return YES; }
- (BOOL) supportsPassword                { return YES; }
- (BOOL) caseSensitive                   { return NO; }
- (BOOL) canRegisterNewAccounts          { return NO; }

- (NSImage *)defaultServiceIconOfType:(AIServiceIconType)iconType
{
    if ((iconType == AIServiceIconSmall) || (iconType == AIServiceIconList)) {
        return [NSImage imageNamed:@"slack_small" forClass:[self class] loadLazily:YES];
    } else {
        return [NSImage imageNamed:@"slack" forClass:[self class] loadLazily:YES];
    }
}

- (NSString *)pathForDefaultServiceIconOfType:(AIServiceIconType)iconType
{
    if ((iconType == AIServiceIconSmall) || (iconType == AIServiceIconList)) {
        return [[NSBundle bundleForClass:[self class]] pathForImageResource:@"slack16_small"];
    }
    return [[NSBundle bundleForClass:[self class]] pathForImageResource:@"slack48"];
}

- (void) registerStatuses {
#define ADDSTATUS(name, type) \
[adium.statusController registerStatus:name \
withDescription:[adium.statusController localizedDescriptionForCoreStatusName:name] \
ofType:type forService:self]
    
    ADDSTATUS(STATUS_NAME_AVAILABLE, AIAvailableStatusType);
    ADDSTATUS(STATUS_NAME_AWAY, AIAwayStatusType);
    ADDSTATUS(STATUS_NAME_OFFLINE, AIOfflineStatusType);
}

@end
