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
    
    NSMutableArray<PostComment*>* comments = [[NSMutableArray alloc]initWithObjects:comment1, nil];
    
    
    Post *post1 = [[Post alloc]
                         initWithContent:@"AAAAAAAAAAAAAAA"
                         date:@"2017/02/17 22:15:46"
                         author:user1
                         attachments:attachments
                         comments:comments];
    
    Post *post2 = [[Post alloc]
                   initWithContent:@"BBBBBBBBBBBBBB"
                   date:@"2017/02/17 22:15:46"
                   author:user1
                   attachments:attachments
                   comments:comments];
    
    NSArray<Post*>* posts = [[NSArray alloc]
                             initWithObjects:post1,post2, nil];
    
    return posts;
}

-(void)showPosts:(NSArray<Post*>*)posts {
    
    for (Post *post in posts) {
        
        NSLog(@"%@\n\n",post.date);
        NSLog(@"%@\n\n",post.author);
        NSLog(@"%@\n\n",post.content);
        NSLog(@"%@\n\n",post.attachments);
        NSLog(@"%@\n\n",post.comments);
        
    }
}

@end
