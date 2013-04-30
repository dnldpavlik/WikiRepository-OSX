//
//  WikiFileReader.m
//  WikiRepository
//
//  Created by Donald Pavlik on 4/30/13.
//  Copyright (c) 2013 Donald Pavlik. All rights reserved.
//

#import "WikiFileReader.h"
#import "WikiFile.h"

@implementation WikiFileReader

-(id<IWikiFile>)GetWikiFile:(NSString *)file
{
    NSString *fileContents = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:nil];
    
    NSArray *lines = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    WikiFile *wikiFile = [[WikiFile alloc] initWithLineArray:lines];
    
    return (id<IWikiFile>)wikiFile;
}

@end
