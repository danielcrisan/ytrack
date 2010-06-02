//
//  DAAPResponsemlcl.m
//  BonjourWeb
//
//  Created by Fabrice Dewasmes on 19/05/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DAAPResponsemlcl.h"
#import "HexDumpUtility.h"
#import "DAAPResponsemlit.h"


@implementation DAAPResponsemlcl

@synthesize list;
@synthesize indexedList;

- (void) setMlit:(DAAPResponsemlit *)mlit{
	if (list == nil) {
		self.list = [[NSMutableArray alloc] init];
	}
	[self.list addObject:mlit];
	int position = [self.list count] - 1;
	mlit.index = position;
	NSString * firstLetter = [[mlit.minm substringToIndex:1] uppercaseString];
	if (indexedList == nil) {
		self.indexedList = [[NSMutableDictionary alloc] init];
	}
	if ([firstLetter intValue] != 0) {
		firstLetter = @"#";
	}
	NSMutableArray *charTable = [indexedList objectForKey:firstLetter];
	if (charTable == nil) {
		charTable = [[NSMutableArray alloc] init];
		[indexedList setObject:charTable forKey:firstLetter];
	} 
	
	[charTable addObject:mlit];
}

- (void) parse{
	NSLog(@"PARSING MLCL");
	[self parse:self.data];
	NSLog(@"END PARSING MLCL");
}

@end
