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

-(NSMutableArray<Post*>*)allPosts{
    
    Account *account = [[Account alloc] init];
    NSMutableArray<User*> *users = [account allUsers];
    
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
                             commentAuthor:users[0]
                             date:@"2017/02/17 22:15:46"
                             likeCount:1];
    
    NSMutableArray<PostComment*>* comments = [[NSMutableArray alloc]
                                              initWithObjects:comment1, nil];
    
    Like *like1 = [[Like alloc]
                   initWithLikeID:@"nmk245"
                   likeOwner:users[0]
                   date:@"2017/02/17 22:15:46"];
    
    NSMutableArray<Like*>* likes = [[NSMutableArray alloc]
                                    initWithObjects:like1, nil];
    
    
    Post *post1 = [[Post alloc]
                   initWithContent:@"Hello, this is post1."
                   postId:@"uhs357"
                   date:@"2017/02/15 22:15:46"
                   author:users[0]
                   location:@"south vancouver"
                   likeCount:1
                   attachments:attachments
                   likes:likes
                   comments:comments
                   privacy:@"ALL_FRIENDS"];
    
    Post *post2 = [[Post alloc]
                   initWithContent:@"Hello, this is post2."
                   postId:@"poj879"
                   date:@"2017/02/17 22:15:46"
                   author:users[1]
                   location:@"west vancouver"
                   likeCount:2
                   attachments:attachments
                   likes:likes
                   comments:comments
                   privacy:@"ALL_FRIENDS"];
    
    Post *post3 = [[Post alloc]
                   initWithContent:@"Hello, this is post3."
                   postId:@"5ertjt"
                   date:@"2017/02/18 22:15:46"
                   author:users[2]
                   location:@"west vancouver"
                   likeCount:2
                   attachments:attachments
                   likes:likes
                   comments:comments
                   privacy:@"SELF"];
    
    Post *post4 = [[Post alloc]
                   initWithContent:@"Hello, this is post4."
                   postId:@"eait43"
                   date:@"2017/02/20 10:10:00"
                   author:users[2]
                   location:@"East Vancouver"
                   likeCount:0
                   attachments:attachments
                   likes:likes
                   comments:comments
                   privacy:@"EVERYONE"];
    
    Post *post5 = [[Post alloc]
                   initWithContent:@"Hello, this is post5."
                   postId:@"4rji3q"
                   date:@"2017/02/20 10:00:00"
                   author:users[3]
                   location:@"New York"
                   likeCount:0
                   attachments:attachments
                   likes:likes
                   comments:comments
                   privacy:@"ALL_FRIENDS"];
    
    
    NSMutableArray<Post*> *posts = [[NSMutableArray alloc] initWithObjects:post1, post2, post3, post4, post5, nil];
    
    return posts;
}



-(NSArray<Post*>*) loadsFeedsForUser:(User*)loginUser allPosts:(NSMutableArray<Post*>*)allPosts amount:(int)numberOfFeeds {
    
    // Get all users
    Account *account = [[Account alloc] init];
    NSMutableArray<User*> *users = [account allUsers];
    

    // -------------------------------------------------------
    // Define friends list for the account user
    // -------------------------------------------------------
    
    NSMutableArray<User*> *friendList;
    
    if ([loginUser.userId isEqual:users[0].userId]) { // Mai
        
        friendList = [@[users[1], users[2], users[3]] mutableCopy];
        
    } else if ([loginUser.userId isEqual:users[1].userId]) { // Maki
        
        friendList = [@[users[0], users[2]] mutableCopy];
        
    } else {
        
        friendList = [@[] mutableCopy];
    }
    
    
    // -------------------------------------------------------
    // Narrow posts down to the friend's posts of account user
    // -------------------------------------------------------
    
    NSMutableArray<Post*>* feeds = [@[] mutableCopy];
    
    for (Post *post in allPosts) {
        
        for (User *friend in friendList) {
            
            // Only yours or frinds' posts, and the privacy setting is not "SELF"
            
            if (([post.author.userId isEqual:loginUser.userId] || [post.author.userId isEqual:friend.userId]) && ![post.privacy isEqualToString:@"SELF"]) {
                
                [feeds addObject:post];
                
                break;
            }
        }
    }
    
    return feeds;
}



-(void)showPosts:(NSArray<Post*>*)posts {
    
    for (Post *post in posts) {
        
        NSLog(@"\n\n%@\n%@ %@\n%@\n",
              post.date,
              post.author.firstName, post.author.lastName,
              post.content);
        
        for(Attachment *attachment in post.attachments){

            NSLog(@"%@\n", attachment.dataURL);
        }
        
        for(PostComment *comment in post.comments){
            
            NSLog(@"%@\n", comment.comment);
        }
    }
    
    NSLog(@"\n\n");
}

-(Post*) addPost:(User *)loginUser {
    
    char charContent[500] = {0};
    NSLog(@"[Creat new post]\nEnter comment:");
    scanf("%s", charContent);
    
    //casting時のoriginal method
    NSString *content = [NSString stringWithCString:charContent encoding:NSUTF8StringEncoding];
    
    NSString *postID = @"ajd768";
    
    Post *newPost = [[Post alloc]
                     initWithContent:content
                     postId:postID
                     date:[self getCurrentDate]
                     author:loginUser
                     location:@"Vancouver"
                     likeCount:0
                     attachments:[[NSMutableArray alloc]init]
                     likes:[[NSMutableArray alloc]init]
                     comments:[[NSMutableArray alloc]init]
                     privacy:@"ALL_FRIENDS"];
    
    return newPost;
}

@end
