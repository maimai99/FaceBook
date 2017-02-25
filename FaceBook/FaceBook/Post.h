//
//  Post.h
//  Facebook
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Attachment.h"
#import "Like.h"
#import "PostComment.h"

@interface Post : NSObject


//properties

@property (strong, nonatomic) NSString* date;
@property (strong, nonatomic) User* author;
@property (strong, nonatomic) NSString* content;

@property (strong, nonatomic) NSMutableArray<Attachment*>* attachments;
@property int numberOfLikes;
@property int numberOfComments;

@property (strong, nonatomic) NSString *postId,
*content,
*location,
*privacy;
@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) User *author;
@property int likeCount;
@property (strong, nonatomic) NSMutableArray<Attachment*> *attachments;
@property (strong, nonatomic) NSMutableArray<Like*> *likes;
@property (strong, nonatomic) NSMutableArray<PostComment*> *comments;


// constructors

-(id)
//               postId:(NSString*)postId
      initWithContent:(NSString*)content
                 date:(NSDate*)date
               author:(User*)author
//               location:(NSString*)location
//        likeCount:(int)likeCount
          attachments:(NSMutableArray<Attachment*>*)attachments
//                likes:(NSMutableArray<Like*>*)likes
             comments:(NSMutableArray<PostComment*>*)comments;
//               privacy:(NSString*)privacy


-(id) initWithContent:(NSString*)content date:(NSString*)date author:(User*)author attachments:(NSMutableArray<Attachment*>*)attachments comments:(NSMutableArray<PostComment*>*)comments;


// methods (APIs)

-(void) addLike:(Like*) newLike;

-(void) addComment:(PostComment*) newComment;

-(void) showPost;

@end
