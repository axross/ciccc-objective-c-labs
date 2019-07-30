#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject
@property (assign) float width;
@property (assign) float height;
@property (assign) float length;

-(instancetype) initWithWidth: (float) width andHeight: (float) height andLength: (float) length;
-(float) volume;
-(int) canContainsNTimesOf: (Box *) box;
@end

NS_ASSUME_NONNULL_END

