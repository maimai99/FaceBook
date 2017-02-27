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
    
    printf("-------------------------------\nWelcome to Facebook!\n-------------------------------\n");
    printf("\nTo login, enter your email and password.\n\n");
    
    while (loginUser.userId == nil) {
        printf("Email:");
        scanf("%s", chrArrEmail);
        printf("Password:");
        scanf("%s", chrArrPassword);
        printf("\n\n");
        
        email = [NSString stringWithCString:chrArrEmail encoding:NSUTF8StringEncoding];
        password = [NSString stringWithCString:chrArrPassword encoding:NSUTF8StringEncoding];
        
        loginUser = [account isAccountValid:email password:password];
        
        if (loginUser.userId == nil) {
            printf("The account is Not valid. Try again.\n\n");
        }
    }
    
    printf("The account is valid.\n\n");
    
    // Show profile
    [user printProfileWithUser:loginUser];
    
    // Show all posts
    FeedsManager* feedManager = [[FeedsManager alloc] init];
    NSMutableArray<Post*>* allPosts = [feedManager loadsFeedsForUser:loginUser allPosts:[feedManager allPosts] amount:10];
    [feedManager showPosts:allPosts];
        
    // Add new post to "allPosts" array
    [allPosts addObject:[feedManager addPost:loginUser]];
    
    // Show all posts again
    [feedManager showPosts:[feedManager loadsFeedsForUser:loginUser allPosts:allPosts amount:10]];
    
    return NSApplicationMain(argc, argv);
}
