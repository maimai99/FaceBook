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


-(NSArray<Post*>*) loadsFeedsForUser:(User*)loginUser amount:(int)numberOfFeeds

{
    
    // Get all users
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
    
    for (Post *post in posts) {
        
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
    
//    NSLog(@"\nPost anything you like:\n");
//    scanf("%s",&content);
    
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
}


// login userの friends list を用意する
// NSMutableArray<User*>* friendList = user1, user2 ....


// user1のpostがあるかをチェックする。。。どこに？どうやって？

// どこに？ ... postデータがまとまってる配列 ... つまり 今あるpostsが使えるじゃん？！

// posts の 1コずつのpost の author をひろって、friendListのuser達と イコールになるかをチェックすればいいんでない？

// イコールになったら showする

// それだけじゃなくって、privacy設定もチェックして、self以外だったらshowする










// Add post method

// TODO: post3 の各attributs にvalueを埋めていく

    // author = 今loginしてるUser
    // date = scanfを読み取った時間 ( getCurrentDate をcallすると、returnで現時刻が取得できるはず)
    // content = scanfしたやつ
    // attachments, likes, comments は 中身がnilのArrayだけを代入してあげる


// TODO: array posts に addObjectで post3を追加する

// TODO: show post をcallする


@end
