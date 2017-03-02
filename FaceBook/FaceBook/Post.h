//
//  Post.h
//  Facebook
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Attachment.h"
#import "Like.h"
#import "PostComment.h"
#import "PostAndPostComment.h"

@interface Post : PostAndPostComment


//properties

@property (strong, nonatomic) NSString *content, *location, *privacy;
@property (strong, nonatomic) NSMutableArray<Attachment*> *attachments;
@property (strong, nonatomic) NSMutableArray<Like*> *likes;
@property (strong, nonatomic) NSMutableArray<PostComment*> *comments;


// constructors

-(id)

      initWithPostId:(NSString*)postId
                content:(NSString*)content
                 date:(NSString*)date
               author:(User*)author
               location:(NSString*)location
        likeCount:(int)likeCount
          attachments:(NSMutableArray<Attachment*>*)attachments
                likes:(NSMutableArray<Like*>*)likes
             comments:(NSMutableArray<PostComment*>*)comments
              privacy:(NSString*)privacy;


// methods (APIs)

-(void) addLike:(Like*) newLike;

-(void) addComment:(PostComment*) newComment;

-(void) showPost;

@end
