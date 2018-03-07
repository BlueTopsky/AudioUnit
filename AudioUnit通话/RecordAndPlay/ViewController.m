//
//  ViewController.m
//  RecordAndPlay
//
//  Created by Topsky on 2017/11/24.
//  Copyright © 2017年 Topsky. All rights reserved.
//

#import "ViewController.h"
#import "SKYAudioUnitManager.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *callBtn;
@property (weak, nonatomic) IBOutlet UIButton *recordBtn;
@property (weak, nonatomic) IBOutlet UIButton *playBtn;
@property (assign, nonatomic) BOOL isRecording;
@property (assign, nonatomic) BOOL isPlaying;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _callBtn.layer.cornerRadius = 5;
    _recordBtn.layer.cornerRadius = 5;
    _playBtn.layer.cornerRadius = 5;
    _recordBtn.hidden = YES;
    _playBtn.hidden = YES;
}
- (IBAction)clickCallBtn:(UIButton *)sender {
    if (sender.tag == 100) {
        sender.tag = 101;
        [[SKYAudioUnitManager sharedInstance] startRecordAndPlay];
        [sender setTitle:@"结束通话" forState:UIControlStateNormal];
        _recordBtn.hidden = NO;
        _playBtn.hidden = NO;
    }else {
        sender.tag = 100;
        [[SKYAudioUnitManager sharedInstance] stopRecordAndPlay];
        [sender setTitle:@"开始通话" forState:UIControlStateNormal];
        _recordBtn.hidden = YES;
        _playBtn.hidden = YES;
    }
    
}

- (IBAction)clickRecordBtn:(UIButton *)sender {
    if (sender.tag == 100) {
        sender.tag = 101;
        [[SKYAudioUnitManager sharedInstance] stopRecord];
        [sender setTitle:@"开始录音" forState:UIControlStateNormal];
    }else {
        sender.tag = 100;
        [[SKYAudioUnitManager sharedInstance] startRecord];
        [sender setTitle:@"暂停录音" forState:UIControlStateNormal];
    }
}

- (IBAction)clickPlayBtn:(UIButton *)sender {
    if (sender.tag == 100) {
        sender.tag = 101;
        [[SKYAudioUnitManager sharedInstance] stopPlay];
        [sender setTitle:@"开始放音" forState:UIControlStateNormal];
    }else {
        sender.tag = 100;
        [[SKYAudioUnitManager sharedInstance] startPlay];
        [sender setTitle:@"暂停放音" forState:UIControlStateNormal];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
