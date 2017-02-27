//
//  Account.m
//  Facebook
//

#import "Account.h"

@implementation Account

-(id) initWithEmail:(NSString*)email
           password:(NSString*)password {
    
    self = [super init];
    
    if (self) {
        self.email = email;
        self.password = password;
    }
    
    return self;
}


-(NSMutableArray<User*>*) allUsers {
    
    User *user1 = [[User alloc]
                   initWithUserId:@"542joi"
                   password:@"pass123"
                   firstName:@"Mai"
                   lastName:@"Hoshino"
                   email:@"mai@gmail.com"
                   phoneNumber:@"0804567898"
                   location:@"burnaby"
                   profilePicURL:@"http://gmail.com"
                   age:24
                   timezome:0000
                   birthday:19920604
                   friends:[[NSMutableArray alloc] initWithObjects:@"43q5ru", @"4q23uh", @"9fawhr", nil]];
    
    User *user2 = [[User alloc]
                   initWithUserId:@"43q5ru"
                   password:@"pass123"
                   firstName:@"Maki"
                   lastName:@"Toda"
                   email:@"maki@gmail.com"
                   phoneNumber:@"0804567898"
                   location:@"vancouver"
                   profilePicURL:@"http://gmail.com"
                   age:25
                   timezome:0000
                   birthday:19901104
                   friends:[[NSMutableArray alloc] initWithObjects:@"542joi", @"4q23uh", nil]];
    
    User *user3 = [[User alloc]
                   initWithUserId:@"4q23uh"
                   password:@"pass123"
                   firstName:@"John"
                   lastName:@"Doe"
                   email:@"john@gmail.com"
                   phoneNumber:@"0804567898"
                   location:@"vancouver"
                   profilePicURL:@"http://gmail.com"
                   age:20
                   timezome:0000
                   birthday:19901104
                   friends:[[NSMutableArray alloc] initWithObjects:@"542joi", @"43q5ru", @"9fawhr", nil]];
    
    User *user4 = [[User alloc]
                   initWithUserId:@"9fawhr"
                   password:@"pass123"
                   firstName:@"Michael"
                   lastName:@"Jackson"
                   email:@"michael@gmail.com"
                   phoneNumber:@"0804567898"
                   location:@"New York"
                   profilePicURL:@"http://gmail.com"
                   age:40
                   timezome:0400
                   birthday:19901104
                   friends:[[NSMutableArray alloc] initWithObjects:@"542joi", @"4q23uh", nil]];
    
    NSMutableArray<User*> *allUsers = [[NSMutableArray alloc] initWithObjects:user1, user2, user3, user4, nil];
    
    return allUsers;
}

-(User*) isAccountValid:(NSString*)email password:(NSString*)password {
    
    User *loginUser = [[User alloc] init];
    
    NSMutableArray<User*> *allUsers = [self allUsers];
    
    for (User *user in allUsers) {
        
        if ([email isEqualToString:user.email] && [password isEqualToString:user.password]) {
            
            loginUser = user;
            
            break;
        }
    }
    
    return loginUser;
}

@end
