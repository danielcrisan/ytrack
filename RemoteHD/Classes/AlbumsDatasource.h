//
//  AlbumsDatasource.h
//  RemoteHD
//
//  Created by Fabrice Dewasmes on 19/06/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DAAPResponseagal.h"
#import "DAAPRequestReply.h"
#import "AsyncImageLoader.h"
#import "DAAPDatasource.h"

@interface AlbumsDatasource : DAAPDatasource <UITableViewDataSource, UITableViewDelegate, DAAPRequestDelegate, AsyncImageLoaderDelegate>
{
	NSArray *list;
	NSArray *indexList;
	UINavigationController *navigationController;
	@private
		NSMutableDictionary *artworks;
		NSMutableDictionary *cellId;
		NSMutableDictionary *loaders;
}

@property (nonatomic, retain) NSArray *list;
@property (nonatomic, retain) NSArray *indexList;
@property (nonatomic, assign) UINavigationController *navigationController;

@end
