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
    [user printProfile];
    
    // Show posts
    FeedsManager* feedManager = [[FeedsManager alloc] init];
    NSArray<Post*>* listOfPosts = [feedManager loadsFeedsForUser:loginUser amount:10];
    
    for(int i=0; i<1; i++) {
        
        [feedManager showPosts:listOfPosts];
    }
    
    return NSApplicationMain(argc, argv);
}
