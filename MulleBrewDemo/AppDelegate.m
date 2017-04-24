//
//  AppDelegate.m
//  MulleBrewDemo
//
//  Created by Nat! on 24.04.17.
//  Copyright © 2017 Mulle kybernetiK. All rights reserved.
//

#import "AppDelegate.h"
#import <Python/Python.h>
#include <zlib.h>


@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *zlibVersion;
@property (weak) IBOutlet NSTextField *pythonVersion;

@end


@implementation AppDelegate

- (void) applicationDidFinishLaunching:(NSNotification *) aNotification
{
   [self.zlibVersion setStringValue:[NSString stringWithUTF8String:zlibVersion()]];
   [self.pythonVersion setStringValue:[NSString stringWithUTF8String:Py_GetVersion()]];
}

@end
