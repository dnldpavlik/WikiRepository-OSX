//
//  IWikiFileWriter.h
//  WikiRepository
//
//  Created by Donald Pavlik on 4/30/13.
//  Copyright (c) 2013 Donald Pavlik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWikiFile.h"

@protocol IWikiFileWriter <NSObject>

/*!
    Writes the Wiki file to the file system
    @result Supplied Wiki File will be written to the files system at 
        file location located in the Meta Data
*/
-(void)WriteWikiFile:(id<IWikiFile>)wikiFile;

@end
