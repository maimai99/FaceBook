//
//  Attachment.m
//  Facebook
//

#import "Attachment.h"

@implementation Attachment

-(id) initWithAttachementId:(NSString*)attachmentId
                       type:(int)type
                    dataURL:(NSString*)dataURL
{
    self = [super init];
    
    if(self)
    {
        self.attachementId = attachmentId;
        self.type = type;
        self.dataURL = dataURL;
    }
    
    return self;
}

@end
