//
//  WikiFile.h
//  WikiRepository
//
//  Created by Donald Pavlik on 4/30/13.
//  Copyright (c) 2013 Donald Pavlik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IWikiFile.h"

@interface WikiFile : NSObject<IWikiFile>

-(id)initWithLineArray:(NSArray *)fileLines;

@end
