//
//  WikiFile.m
//  WikiRepository
//
//  Created by Donald Pavlik on 4/30/13.
//  Copyright (c) 2013 Donald Pavlik. All rights reserved.
//

#import "WikiFile.h"

@implementation WikiFile

@synthesize title;
@synthesize metaData;
@synthesize lines;

// Designated Initializer
-(id)initWithLineArray:(NSArray *)fileLines
{
    self = [super init];
    
    if (self)
    {
        lines = [NSMutableArray arrayWithArray:fileLines];
    }
    
    return self;
}

@end
