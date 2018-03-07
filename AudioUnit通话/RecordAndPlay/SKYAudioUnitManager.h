//
//  SKYAudioUnitManager.h
//  RecordAndPlay
//
//  Created by Topsky on 2017/11/24.
//  Copyright © 2017年 Topsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKYAudioUnitManager : NSObject

+ (instancetype)sharedInstance;
- (void)startRecord; //开始录音
- (void)stopRecord;  //结束录音
- (void)startPlay;   //开始放音
- (void)stopPlay;    //结束放音

- (void)startRecordAndPlay;  //开始通话
- (void)stopRecordAndPlay;   //结束通话

@end
