//
//  Attachment.h
//  Facebook
//

#import <Foundation/Foundation.h>

@interface Attachment : NSObject

// properties

@property (strong, nonatomic) NSString *attachementId,
*dataURL;
@property int type;


// constructors

-(id) initWithAttachementId:(NSString*)attachmentId
                       type:(int)type
                    dataURL:(NSString*)dateURL;


// methods (APIs)

@end
