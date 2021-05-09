//  Created by davichoso@gmail.com

#import "PlayerManager.h"
#import "Video360.h"


@implementation Video360Manager

RCT_EXPORT_MODULE(Video360)


 
- (UIView *)view
{
 
  return [Video360 new] ;
}

RCT_EXPORT_VIEW_PROPERTY(modeVideo, int)
RCT_EXPORT_VIEW_PROPERTY(urlVideo, NSString)
RCT_EXPORT_VIEW_PROPERTY(volume, float);
RCT_EXPORT_VIEW_PROPERTY(play, BOOL);
RCT_EXPORT_VIEW_PROPERTY(pause, BOOL);
RCT_EXPORT_VIEW_PROPERTY(repeat, BOOL);
RCT_EXPORT_VIEW_PROPERTY(seek, float);
RCT_EXPORT_VIEW_PROPERTY(onVideoLoad, RCTDirectEventBlock);


@end
