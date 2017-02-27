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
    
    User *loginUser;
    User *user = [[User alloc] init];
    Account *account = [[Account alloc] init];
    
    // Checking whether the account is valid or not
    
    char chrArrEmail[50] = {0},
         chrArrPassword[50] = {0};
    
    NSString *email,
             *password;
    
    while (loginUser.userId == nil) {
        
        NSLog(@"Enter your email:");
        scanf("%s", chrArrEmail);
        NSLog(@"Enter your password:");
        scanf("%s", chrArrPassword);
        
        email = [NSString stringWithCString:chrArrEmail encoding:NSUTF8StringEncoding];
        password = [NSString stringWithCString:chrArrPassword encoding:NSUTF8StringEncoding];
        
        loginUser = [account isAccountValid:email password:password];
        
        if (loginUser.userId == nil) {
            NSLog(@"\n\nThe account is Not valid. Try again.\n\n");
        }
    }
    
    NSLog(@"\n\nThe account is valid\n\n");
    
    // Show profile
    [user printProfileWithUser:loginUser];
    
    // Show posts
    FeedsManager* feedManager = [[FeedsManager alloc] init];
    NSArray<Post*>* listOfPosts = [feedManager loadsFeedsForUser:loginUser allPosts:[feedManager allPosts] amount:10];
    
    [feedManager showPosts:listOfPosts];
    
    //step1:get all post array
    //convert return data type from void to Post
    NSMutableArray<Post*>*allPosts = [feedManager allPosts];
    
    
    //it can be also written with 2 line.(make new value and set)
    
    //step2:add "addPost" in the end of "allPosts" array
    [allPosts addObject:[feedManager addPost:loginUser]];
    
    //step3:show
    [feedManager showPosts:[feedManager loadsFeedsForUser:loginUser allPosts:allPosts amount:10]];
    
    return NSApplicationMain(argc, argv);
}
