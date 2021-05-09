//  Created by davichoso@gmail.com


#import <UIKit/UIKit.h>
#import <React/RCTView.h>

NS_ASSUME_NONNULL_BEGIN

@interface Video360:UIView

@property (nonatomic) int modeVideo;
@property (nonatomic) NSString* urlVideo;
@property (nonatomic, assign) float volume;
@property (nonatomic, assign) BOOL play;
@property (nonatomic, assign) BOOL pause;
@property (nonatomic, assign) BOOL repeat;
@property (nonatomic, assign) float seek;
@property (nonatomic, copy) RCTDirectEventBlock onVideoLoad;

@end

NS_ASSUME_NONNULL_END

