//
//  Post.m
//  Facebook
//

#import "Post.h"

@implementation Post


-(id)initWithPostId:(NSString*)postId
                content:(NSString*)content
                 date:(NSString*)date
               author:(User*)author
               location:(NSString*)location
            likeCount:(int)likeCount
          attachments:(NSMutableArray<Attachment*>*)attachments
                likes:(NSMutableArray<Like*>*)likes
             comments:(NSMutableArray<PostComment*>*)replies
               privacy:(NSString*)privacy
{
    self = [super initWithPostId:postId replies:replies author:author date:date likeCount:likeCount];

    
    if (self)
    {
        self.location = location;
        self.attachments = attachments;
        self.replies = replies;
        self.privacy = privacy;
    }
    
    return self;
}

-(void) addLike:(Like*) newLike
{
    self.likeCount++;
    [self.likes addObject:newLike];
}

-(void) addComment:(PostComment*) newComment
{
    [self.comments addObject:newComment];
}

-(void) showPost
{
    NSLog(@"\n\nContent:%@\n\n",self.content);
    NSLog(@"Date:%@\n",self.author);
    NSLog(@"Date:%@\n",self.attachments);
    NSLog(@"Date:%@\n",self.date);
    NSLog(@"Date:%@\n",self.comments);
}

@end
