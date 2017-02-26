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
                   FirstName:@"Mai"
                   lastName:@"Hoshino"
                   email:@"mai@gmail.com"
                   phoneNumber:@"0804567898"
                   location:@"burnaby"
                   profilePicURL:@"http://gmail.com"
                   age:24
                   timezome:0000
                   birthday:19920604];
    
    User *user2 = [[User alloc]
                   initWithUserId:@"43q5ru"
                   FirstName:@"Maki"
                   lastName:@"Toda"
                   email:@"maki@gmail.com"
                   phoneNumber:@"0804567898"
                   location:@"vancouver"
                   profilePicURL:@"http://gmail.com"
                   age:25
                   timezome:0000
                   birthday:19901104];
    
    User *user3 = [[User alloc]
                   initWithUserId:@"4q23uh"
                   FirstName:@"John"
                   lastName:@"Doe"
                   email:@"john@gmail.com"
                   phoneNumber:@"0804567898"
                   location:@"vancouver"
                   profilePicURL:@"http://gmail.com"
                   age:20
                   timezome:0000
                   birthday:19901104];
    
    User *user4 = [[User alloc]
                   initWithUserId:@"9fawhr"
                   FirstName:@"Michael"
                   lastName:@"Jackson"
                   email:@"michael@gmail.com"
                   phoneNumber:@"0804567898"
                   location:@"New York"
                   profilePicURL:@"http://gmail.com"
                   age:40
                   timezome:0400
                   birthday:19901104];
    
    NSMutableArray<User*> *allUsers = [[NSMutableArray alloc] initWithObjects:user1, user2, user3, user4, nil];
    
    return allUsers;
}

-(BOOL) isAccountValid {
    
    // TODO: check data
    
    return true;
}

@end
