#import "Box.h"

@implementation Box
-(instancetype) initWithWidth: (float) width andHeight: (float) height andLength: (float) length {
    if (self = [super init]) {
        _width = width;
        _height = height;
        _length = length;
    }

    return self;
}
-(float) volume {
    return _width * _height * _length;
}
-(int) canContainsNTimesOf: (Box*) box {
    return (int) (self.volume / box.volume);
}
@end
