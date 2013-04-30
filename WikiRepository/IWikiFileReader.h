//
//  IWikiFileReader.h
//  WikiRepository
//
//  Created by Donald Pavlik on 4/30/13.
//  Copyright (c) 2013 Donald Pavlik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWikiFile.h"

@protocol IWikiFileReader <NSObject>

/*!
    Gets a wiki file
    @result Returns IWikiFile for the given file
*/
-(id<IWikiFile>) GetWikiFile:(NSString *)file;

@end
