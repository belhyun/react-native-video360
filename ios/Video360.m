//  Created by davichoso@gmail.com

#import "Video360.h"
#import "PlayerViewController.h"


@implementation Video360 {
  PlayerViewController *_playerView;
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    _playerView = [[PlayerViewController alloc] init];
    //_playerView.onVideoLoad = self.onVideoLoad;
    // NSString* urlVideo = @"https://player.vimeo.com/external/338903511.sd.mp4?s=9c6ee2a2bf4cce2e45d386cee1c52193e0bb1312&profile_id=164&oauth2_token_id=1207395751";
    // _playerView.demoType = DemoType_AVPlayer_VR;
  }
  return self;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  _playerView.view.frame = self.bounds;
  [self addSubview:_playerView.view];
  
}
- (void)setUrlVideo:(NSString *)urlVideo
{
  if(![    urlVideo isEqual: _urlVideo     ])
  {
    _urlVideo = urlVideo;
    NSLog(@"%@", urlVideo);
    _playerView.urlVideo = urlVideo;
  }
}

- (void)setModeVideo:(int)modeVideo
{
  if( modeVideo != _modeVideo  )
  {
    _modeVideo= modeVideo;
    if(modeVideo == 1)
      _playerView.demoType = DemoType_AVPlayer_VR;
    if(modeVideo == 2)
      _playerView.demoType = DemoType_AVPlayer_VR_Box;
    if(modeVideo == 3)
      _playerView.demoType = DemoType_AVPlayer_Normal;
  }
}

-(void)setPlay:(BOOL)play
{
  if (play) {
    [_playerView play];
  } else {
    [_playerView pause];
  }
  //_isPaused = !play;
}

-(void)setPause:(BOOL)pause
{
  if (pause) {
    [_playerView setPause:true];
  } else {
    [_playerView setPause:false];
  }
  //_isPaused = pause;
}

-(void)setRepeat:(BOOL)repeat
{
    _playerView.repeat = repeat;
}

-(void)setSeek:(float)seek
{
    [_playerView setSeek:seek];
}

-(void)setVolume:(float)volume
{
    [_playerView setVolume:volume];
}

-(void)setOnVideoLoad:(RCTDirectEventBlock)onVideoLoad
{
  _playerView.onVideoLoad = onVideoLoad;
}







@end
