//
//  Post.h
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
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

@property (strong, nonatomic) NSMutableArray<Like*>* likes;
@property (strong, nonatomic) NSMutableArray<PostComment*>* comments;

@property BOOL isReported;

@property int type;

//constructors

-(id) initWithContent:(NSString*)content date:(NSString*)date author:(User*)author attachments:(NSMutableArray<Attachment*>*)attachments comments:(NSMutableArray<PostComment*>*)comments;


//-(id) initWithDate:(NSDate*)date author:(User*)author attachments:(NSMutableArray<Attachment*>*)attachments numberOflikes:(int)nofLikes numberOfComments:(int)nofComments likes:(NSMutableArray<Like*>*)likes comments:(NSMutableArray<PostComment*>*)comments type:(int)type;

//methods (APIs)

//-(void) addLike:(Like*) newLike;
//-(void) addComment:(PostComment*) newComment;
//
//-(void) EditPostWithNewAttachments:(NSArray<Attachment*>*) newAttachments newType:(int) newType;
//
//-(void) reportThePost;
//
-(void) showPost;

@end
