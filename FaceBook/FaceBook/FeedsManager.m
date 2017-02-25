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
    Attachment *attach1 = [[Attachment alloc]initWithAttachementID:1 type:1 dataURL:@"http://gmail"];
    NSMutableArray<Attachment*>* attachments = [[NSMutableArray alloc] initWithObjects:attach1,nil];
    Post *postContent = [[Post alloc] initWithContent:@"AAAAAAAAAAAAAAA" date:@"2017/02/17 22:15:46" author:@"mai" attachments:attachments comments:@"Are you joking?"];
    NSArray<Post*>* posts = [[NSArray alloc] initWithObjects:postContent,nil];
    
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
