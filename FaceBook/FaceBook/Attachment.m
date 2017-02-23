
//
//  Attachment.m
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "Attachment.h"

@implementation Attachment

-(id) initWithAttachementID:(int)attachmentID type:(int)type dataURL:(NSString*)dataURL
{
    self = [super init];
    if(self)
    {
        self.attachementID = attachmentID;
        self.type = type;
        self.dataURL = dataURL;
    }
    
    return self;
}

@end
