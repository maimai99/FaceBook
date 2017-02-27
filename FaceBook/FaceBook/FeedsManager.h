//
//  FeedsManager.h
//  Facebook
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "Attachment.h"
#import "Post.h"
#import "User.h"

@interface FeedsManager : NSObject

// properties

@property Post* post;


// constructors

-(id)initWithPost:(Post*)post;


// methods (APIs)

-(NSArray<Post*>*) loadsFeedsForUser:(User*)loginUser allPosts:(NSMutableArray<Post*>*)allPosts amount:(int)numberOfFeeds;

-(NSMutableArray<Post*>*)allPosts;

-(void)showPosts:(NSArray*)posts;
-(Post*)addPost:(User *)loginUser ;
@end
