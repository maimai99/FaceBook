//
//  FeedsManager.h
//  Facebook
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "Attachment.h"
#import "Post.h"

@interface FeedsManager : NSObject

// properties

@property Post* post;


// constructors

-(id)initWithPost:(Post*)post;


// methods (APIs)

-(NSArray<Post*>*) loadsFeedsForUser:(User*)loginUser amount:(int)numberOfFeeds;

-(void)showPosts:(NSArray*)posts;

@end
