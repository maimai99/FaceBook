//
//  FeedsManager.m
//  Facebook
//

#import "FeedsManager.h"

@implementation FeedsManager

-(id)initWithPost:(Post*)post{
    
    self = [super init];
    if (self) {
        self.post = post;
    }
    return self;
}
      
-(NSDate *) convertDateFromString:(NSString *)timeStamp
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy/MM/dd HH:mm:ss";
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    NSDate *date = [dateFormatter dateFromString:timeStamp];
    return date;
}

-(NSString *) getCurrentDate
{
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy/MM/dd HH:mm:ss";
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];

    NSString *strDate = [dateFormatter stringFromDate:date];
    return strDate;
}

-(NSArray<Post*>*) loadsFeedsForAccount:(Account*)account amount:(int)numberOfFeeds
{
    User *user1 = [[User alloc]
                   initWithFirstName:@"mai"
                   lastName:@"hoshino"
                   email:@"http://gmail.com"
                   phoneNumber:@"0804567898"
                   location:@"burnaby"
                   profilePicURL:@"http://gmail.com"
                   age:24
                   timezome:0000
                   birthday:19920604];
    
    User *user2 = [[User alloc]
                   initWithFirstName:@"maki"
                   lastName:@"toda"
                   email:@"http://google.com"
                   phoneNumber:@"0804567898"
                   location:@"vancouver"
                   profilePicURL:@"http://gmail.com"
                   age:25
                   timezome:0000
                   birthday:19901104];
    
    Attachment *attach1 = [[Attachment alloc]
                           initWithAttachementId:@"abc123"
                           type:1
                           dataURL:@"http://gmail.com"];
    
    Attachment *attach2 = [[Attachment alloc]
                           initWithAttachementId:@"abc123"
                           type:2
                           dataURL:@"http://yahoo.co.jp"];
    
    NSMutableArray<Attachment*>* attachments = [[NSMutableArray alloc]
                                                initWithObjects:attach1,attach2,nil];
    
    
    PostComment *comment1 = [[PostComment alloc]
                             initWithCommentId:@"hjk678"
                             comment:@"Hi"
                             commentAuthor:user2
                             date:@"2017/02/17 22:15:46"
                             likeCount:1];
    
    NSMutableArray<PostComment*>* comments = [[NSMutableArray alloc]
                                              initWithObjects:comment1, nil];
    
    Like *like1 = [[Like alloc]
                   initWithLikeID:@"nmk245"
                   likeOwner:user1
                   date:@"2017/02/17 22:15:46"];
    
    NSMutableArray<Like*>* likes = [[NSMutableArray alloc]
                                    initWithObjects:like1, nil];
    
    
    Post *post1 = [[Post alloc]
                   initWithContent:@"AAAAAAAAAAAAAAA"
                   postId:@"uhs357"
                   date:@"2017/02/17 22:15:46"
                   author:user1
                   location:@"south vancouver"
                   likeCount:1
                   attachments:attachments
                   likes:likes
                   comments:comments
                   privacy:@"ALL_FRIENDS"];
    
    Post *post2 = [[Post alloc]
                   initWithContent:@"BBBBBBBBBBBBBBBB"
                   postId:@"poj879"
                   date:@"2017/02/17 22:15:46"
                   author:user2
                   location:@"west vancouver"
                   likeCount:2
                   attachments:attachments
                   likes:likes
                   comments:comments
                   privacy:@"ALL_FRIENDS"];
    
    NSArray<Post*>* posts = [[NSArray alloc]
                             initWithObjects:post1, post2, nil];
    
    return posts;
}

-(void)showPosts:(NSArray<Post*>*)posts {
    
    for (Post *post in posts) {
        
        NSLog(@"%@\n\n　%@\n　%@\n　%@\n",post.date,post.author.firstName,post.author.lastName,post.content);
        
        for(Attachment *attachment in attachments){

            NSLog(@"%@\n",post.attachment.dataURL);
        }
        
        for(PostComment *comment1 in posts){
            
            NSLog(@"%@\n",post.comments.comment);
        }
        
        //↓これだとobject自体が対象になるのでもう少し絞る
        //NSLog(@"%@\n\n",post.author);

    }
}

@end
