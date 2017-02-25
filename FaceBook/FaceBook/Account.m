//
//  Account.m
//  Facebook
//

#import "Account.h"

@implementation Account

-(id) initWithUsername:(NSString*)myUsername
              password:(NSString*)myPassword;
{
    self = [super init];
    
    if (self)
    {
        self.username = myUsername;
        self.password = myPassword;
    }
    
    return self;
}


-(BOOL) isAccountValid
{
    return true;
}

@end
