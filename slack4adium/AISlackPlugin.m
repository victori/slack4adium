//
//  slack4adium
//
//  Created by Victor Igumnov on 05-17-18.
//  Copyright © 2018 Victor Igumnov. All rights reserved.
//

#import "AISkypewebPlugin.h"
#import "PurpleSlackService.h"
#import "slack.h"

#import <Adium/ESDebugAILog.h>

extern void purple_init_slack_plugin();

@implementation AISlackPlugin

- (void)installPlugin
{
    purple_init_slack_plugin();
    [PurpleSlackService registerService];
}

- (void)loadLibpurplePlugin
{
    AILog(@"Loading slack4adium");
    //AILog(@"Loading skypeweb4adium plugin %s (skypeweb4pidgin: "SKYPEWEB_PLUGIN_VERSION")",[[self pluginVersion] UTF8String]);
}

- (NSString *)pluginAuthor      { return @"Victor Igumnov"; }
- (NSString *)pluginDescription { return @"Slack"; }
- (NSString *)pluginURL         { return @"https://github.com/victori/slack4adium#readme"; }
- (NSString *)pluginVersion     { return [[[NSBundle bundleForClass:[self class]] infoDictionary] objectForKey:@"CFBundleVersion"]; }

- (void)uninstallPlugin {}
- (void)installLibpurplePlugin {}

@end
