//
//  Post.m
//  Facebook
//

#import "Post.h"

@implementation Post


-(id)
//               postId:(NSString*)postId
      initWithContent:(NSString*)content
                 date:(NSDate*)date
               author:(User*)author
//               location:(NSString*)location
//        likeCount:(int)likeCount
          attachments:(NSMutableArray<Attachment*>*)attachments
//                likes:(NSMutableArray<Like*>*)likes
             comments:(NSMutableArray<PostComment*>*)comments
//               privacy:(NSString*)privacy
{
    self = [super init];
    
    if (self)
    {
//        self.postId = postId;
        self.content = content;
        self.date = date;
        self.author = author;
//        self.location = location;
//        self.likeCount = likeCount;
        self.attachments = attachments;
//        self.likes = likes;
        self.comments = comments;
//        self.privacy = privacy;
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
