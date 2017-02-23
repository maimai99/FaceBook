//
//  Account.m
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Account.h"

@implementation Account

-(id) initWithUsername:(NSString*)myUsername password:(NSString*)myPassword
{
    self = [super init];  //allocated some memory
    if(self)
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
