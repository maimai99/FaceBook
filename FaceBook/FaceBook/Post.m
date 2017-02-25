//
//  Post.m
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Post.h"

@implementation Post

-(id) initWithContent:(NSString*)content date:(NSDate*)date author:(User*)author attachments:(NSMutableArray<Attachment*>*)attachments comments:(NSMutableArray<PostComment*>*)comments{
    self = [super init];
    if (self) {
        self.content = content;
        self.date = date;
        self.author = author;
        self.attachments = attachments;
        self.comments = comments;
        
    }
    return self;
}


//-(id) initWithDate:(NSDate*)date author:(User*)author attachments:(NSMutableArray<Attachment*>*)attachments numberOflikes:(int)nofLikes numberOfComments:(int)nofComments likes:(NSMutableArray<Like*>*)likes comments:(NSMutableArray<PostComment*>*)comments type:(int)type
//{
//    self = [super init];
//    
//    if(self)
//    {
//        self.date = date;
//        self.author = author;
//        self.attachments = attachments;
//        self.numberOfLikes = nofLikes;
//        
//        self.numberOfComments = nofComments;
//        
//        self.likes = likes;
//        self.comments = comments;
//        
//        self.type = type;
//        
//        self.isReported = false;
//    }
//    
//    return self;
//}

//-(void) addLike:(Like*) newLike
//{
//    self.numberOfLikes++;
//    [self.likes addObject:newLike];
//}
//
//-(void) addComment:(PostComment*) newComment
//{
//    self.numberOfComments++;
//    [self.comments addObject:newComment];
//    
//
//}
//
//-(void) EditPostWithNewAttachments:(NSArray<Attachment*>*) newAttachments newType:(int) newType
//{
//    //To-Do
//}
//
//-(void) reportThePost
//{
//    self.isReported = true;
//}

-(void) showPost
{
    NSLog(@"\n\nContent:%@\n\n",self.content);
    NSLog(@"Date:%@\n",self.author);
    NSLog(@"Date:%@\n",self.attachments);
    NSLog(@"Date:%@\n",self.date);
    NSLog(@"Date:%@\n",self.comments);
}

@end
