//
//  main.m
//  Facebook
//

#import <Cocoa/Cocoa.h>
#import "Account.h"
#import "User.h"
#import "FeedsManager.h"
#import "Post.h"

int main(int argc, const char * argv[]) {
    
    Account* myAccount = [[Account alloc] initWithEmail:@"mai@gmail" password:@"pass123"];
    
    // TODO: 正しいID/PWを入力するまで、while loopでscanfを繰り返す
    
    Account *account = [[Account alloc] init];
    
    NSMutableArray<User*> *users = [account allUsers];
    
    // Checking whether the account is valid or not
    BOOL isValid = [myAccount isAccountValid];
    
    User *loginUser;
    
    if (isValid == true) {
        NSLog(@"\n\nThe account is valid\n\n");
        
        
    } else {
        NSLog(@"\n\nThe account is Not valid\n\n");
    }
    
    
    // 正しければ loginUserにそのuserを代入する
    
    loginUser = users[1]; // loginUser: Mai
    
    //create a profile object
    //Step1:
    //User* myProfile = [[User alloc] initWithFirstname:@"Ali" lastname:@"Reza" address:@"Vancouver, Canada" age:82 phoneNumber:@"12345457" profilePicURL:@"https://gmail.com"];
    
    //[myProfile printProfile];
    
    
//    Post* post = [[Post alloc] initWithContent:@"hello"];
//    
//    //showing the post
//    [post showPost];
    
    
    
    //Ask Linkedin to show us 10 most recent posts
    
    FeedsManager* feedManager = [[FeedsManager alloc] init];
    NSArray<Post*>* listOfPosts = [feedManager loadsFeedsForUser:loginUser amount:10];
    
    for(int i=0; i<1; i++) {
        
        //showing the post
        [feedManager showPosts:listOfPosts];
    
        //reporting the post
       // [post reportThePost];
        
        
//        //adding a like to the post
//        User* user = [[User alloc] init];
//        NSDate* date = [NSDate date];
//        Like* like = [[Like alloc] initWithLikeID:1 likeOwner:user date:date];
//        [post addLike:like];
//        
//        
//        //adding a comment to the post
//        NSMutableArray<Attachment*>* attachments = [[NSMutableArray<Attachment*> alloc] init];
//        Attachment* att1 = [[Attachment alloc] initWithAttachementID:1 type:1 dataURL:@"https://www.google.com"];
//        
//        [attachments addObject:att1];
//        
//        Attachment* att2 = [[Attachment alloc] initWithAttachementID:2 type:3 dataURL:@"https://www.internet.org"];
//        [attachments addObject:att2];
//        
//        PostComment* comment = [[PostComment alloc] initWithCommentID:1 commentAuthor:user date:date attachments:attachments];
//        
//        [post addComment:comment];
        
    }
    
    
    
    return NSApplicationMain(argc, argv);
}
