.class public Lorg/telegram/messenger/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;,
        Lorg/telegram/messenger/MediaController$VideoConvertorListener;,
        Lorg/telegram/messenger/MediaController$VideoConvertRunnable;,
        Lorg/telegram/messenger/MediaController$MediaLoader;,
        Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;,
        Lorg/telegram/messenger/MediaController$GalleryObserverExternal;,
        Lorg/telegram/messenger/MediaController$GalleryObserverInternal;,
        Lorg/telegram/messenger/MediaController$ExternalObserver;,
        Lorg/telegram/messenger/MediaController$InternalObserver;,
        Lorg/telegram/messenger/MediaController$VideoConvertMessage;,
        Lorg/telegram/messenger/MediaController$SearchImage;,
        Lorg/telegram/messenger/MediaController$PhotoEntry;,
        Lorg/telegram/messenger/MediaController$MediaEditState;,
        Lorg/telegram/messenger/MediaController$CropState;,
        Lorg/telegram/messenger/MediaController$SavedFilterState;,
        Lorg/telegram/messenger/MediaController$AlbumEntry;,
        Lorg/telegram/messenger/MediaController$AudioEntry;,
        Lorg/telegram/messenger/MediaController$AudioBuffer;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field public static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field private static volatile Instance:Lorg/telegram/messenger/MediaController; = null

.field public static final VIDEO_BITRATE_1080:I = 0x67c280

.field public static final VIDEO_BITRATE_360:I = 0xb71b0

.field public static final VIDEO_BITRATE_480:I = 0xf4240

.field public static final VIDEO_BITRATE_720:I = 0x280000

.field public static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final VOLUME_DUCK:F = 0.2f

.field private static final VOLUME_NORMAL:F = 1.0f

.field public static allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field public static allMediaAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static allPhotoAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field public static allVideosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private static broadcastPhotosRunnable:Ljava/lang/Runnable;

.field private static final cachedEncoderBitrates:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static forceBroadcastNewPhotos:Z

.field private static final projectionPhotos:[Ljava/lang/String;

.field private static final projectionVideo:[Ljava/lang/String;

.field private static refreshGalleryRunnable:Ljava/lang/Runnable;

.field private static volumeBarLastTimeShown:J


# instance fields
.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accelerometerVertical:Z

.field private allowStartRecord:Z

.field private audioFocus:I

.field private audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

.field private audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field audioRecordFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioRecorderPaused:Z

.field private audioVolume:F

.field private audioVolumeAnimator:Landroid/animation/ValueAnimator;

.field private final audioVolumeUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private baseActivity:Landroid/app/Activity;

.field private callInProgress:Z

.field private countLess:I

.field private currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private currentAspectRatioFrameLayoutRatio:F

.field private currentAspectRatioFrameLayoutReady:Z

.field private currentAspectRatioFrameLayoutRotation:I

.field private currentForegroundConvertingVideo:Lorg/telegram/messenger/MediaController$VideoConvertMessage;

.field private currentMusicPlaybackSpeed:F

.field private currentPlaybackSpeed:F

.field private currentPlaylistNum:I

.field private currentTextureView:Landroid/view/TextureView;

.field private currentTextureViewContainer:Landroid/widget/FrameLayout;

.field private downloadingCurrentMessage:Z

.field private emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private emojiSoundPlayerNum:I

.field private externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

.field private fastMusicPlaybackSpeed:F

.field private fastPlaybackSpeed:F

.field private feedbackView:Landroid/view/View;

.field private fileBuffer:Ljava/nio/ByteBuffer;

.field private fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private flagSecureFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private forceLoopCurrentPlaylist:Z

.field private foregroundConvertingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$VideoConvertMessage;",
            ">;"
        }
    .end annotation
.end field

.field private generatingWaveform:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private goingToShowMessageObject:Lorg/telegram/messenger/MessageObject;

.field private gravity:[F

.field private gravityFast:[F

.field private gravitySensor:Landroid/hardware/Sensor;

.field private hasAudioFocus:I

.field private hasRecordAudioFocus:Z

.field private ignoreOnPause:Z

.field private ignoreProximity:Z

.field private inputFieldHasText:Z

.field private internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

.field private isDrawingWasReady:Z

.field private isFromMusicPlaylist:Z

.field private isPaused:Z

.field public isSilent:Z

.field private isStreamingCurrentAudio:Z

.field private lastAccelerometerDetected:J

.field private lastChatAccount:I

.field private lastChatEnterTime:J

.field private lastChatLeaveTime:J

.field private lastChatVisibleMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastMediaCheckTime:J

.field private lastMessageId:I

.field private lastProgress:J

.field private lastProximityValue:F

.field private lastSaveTime:J

.field private lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private lastTimestamp:J

.field private lastUser:Lorg/telegram/tgnet/TLRPC$User;

.field private linearAcceleration:[F

.field private linearSensor:Landroid/hardware/Sensor;

.field private loadingPlaylist:Z

.field private manualRecording:Z

.field private mediaProjections:[Ljava/lang/String;

.field private needHiddenPlay:Z

.field private pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

.field private pipSwitchingState:I

.field private playMusicAgain:Z

.field private playerNum:I

.field private playerWasReady:Z

.field private playingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private playlistClassGuid:I

.field private playlistEndReached:[Z

.field private playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

.field private playlistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private playlistMaxId:[I

.field private playlistMergeDialogId:J

.field private previousAccValue:F

.field private progressTimer:Ljava/util/Timer;

.field private final progressTimerSync:Ljava/lang/Object;

.field private proximityHasDifferentValues:Z

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximityTouched:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private raiseChat:Lorg/telegram/ui/ChatActivity;

.field private raiseToEarRecord:Z

.field private raisedToBack:I

.field private raisedToTop:I

.field private raisedToTopSign:I

.field public recordBufferSize:I

.field private recordBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private recordDialogId:J

.field private recordQueue:Lorg/telegram/messenger/DispatchQueue;

.field private recordReplyingMsg:Lorg/telegram/messenger/MessageObject;

.field private recordReplyingStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field private recordReplyingTopMsg:Lorg/telegram/messenger/MessageObject;

.field private recordRunnable:Ljava/lang/Runnable;

.field private recordSamples:[S

.field private recordStartRunnable:Ljava/lang/Runnable;

.field private recordStartTime:J

.field private recordTimeCount:J

.field private recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

.field private recordingAudioFile:Ljava/io/File;

.field private recordingCurrentAccount:I

.field private recordingGuid:I

.field private resumeAudioOnFocusGain:Z

.field public sampleRate:I

.field private samplesCount:J

.field private seekToProgressPending:F

.field private sendAfterDone:I

.field private sendAfterDoneNotify:Z

.field private sendAfterDoneOnce:Z

.field private sendAfterDoneScheduleDate:I

.field private sendAfterDoneTemplateName:Ljava/lang/String;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorsStarted:Z

.field private setLoadingRunnable:Ljava/lang/Runnable;

.field private shouldSavePositionForCurrentAudio:Ljava/lang/String;

.field private shuffledPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private startObserverToken:I

.field private stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

.field private final sync:Ljava/lang/Object;

.field private timeSinceRaise:J

.field private useFrontSpeaker:Z

.field private videoConvertQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$VideoConvertMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final videoConvertSync:Ljava/lang/Object;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private final videoQueueSync:Ljava/lang/Object;

.field private voiceMessagesPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistUnread:Z

.field private wasPlayingAudioBeforePause:Z

.field private writedFileLenght:J

.field private writedFrame:I


# direct methods
.method public static synthetic $r8$lambda$-_8EGKwb9iF1VDeBHHPYBwVyQTI(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$startRaiseToEarSensors$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$0TtQQHsYXrqCM16cXzq8F3osGa4(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$setTextureView$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$1X5GHjIiNoExHepmETSp3o-e82Q(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$1uBEHP0sAsaVh9_a1qyn_bCb5FQ(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->lambda$generateWaveform$32(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6n54V3F7VLwRw6fcyF316bEp1QY(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$sortPlaylist$13(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AYThFpEB5vymBiwCJfiKA5jTkJ4(Lorg/telegram/messenger/MediaController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BCDmEFKxmTB1oIfEsfgsobVxyCk(Lorg/telegram/messenger/MediaController;Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;IZIZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/MediaController;->lambda$stopRecordingInternal$33(Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;IZIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GobIp2hs8CfQWhWYt0IE2yJHk1Y(ILjava/io/File;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;[ZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;[Z)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$43(ILjava/io/File;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;[ZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$IG5yo95mAUFkD7RnQlDIeOROHko(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->lambda$loadGalleryPhotosAlbums$45(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IMZvzRm_ru1nHcKx3DTtYBfGmzM(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$toggleRecordingPause$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$JDMxO15dTslz5Qo2msMUVAAoT58(Lorg/telegram/messenger/MediaController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$startRecording$26(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$K_lBdEMy49gTF8T91AT4-g1h7js(Lorg/telegram/messenger/Utilities$Callback;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$41(Lorg/telegram/messenger/Utilities$Callback;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MK19ArvmljxMT9DBUA17HKNLSqU(Lorg/telegram/messenger/MediaController;IZIZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MediaController;->lambda$stopRecording$36(IZIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Py_HQNUVHFA9_vDfaw8g9gz8Iyk(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/MediaController;->lambda$broadcastNewPhotos$46(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RCSTmAF9nLuC-x6m0Nfs1wTLM30(Lorg/telegram/messenger/MediaController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$onAudioFocusChange$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RGalrIK6jDjsMPgJuz7oOyhYuMc(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$playMessage$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$RVuoBKzPQ3I7pN_rS3J9MG7KpVc(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$playMessage$21(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V8Kyxjc1-focy3yscmj3hy5fccY(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$setCurrentVideoVisible$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vxd8-gUH3EgCK4S9wKCfIBviMdA([ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$38([ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WU5wwWPGj5Bm6yfTSDlRWqjrcEc([ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$37([ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WwgL4Rn7rKp6w_h6qk2pwpKP51M(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y0rgYbSSdhGK2vjr-BFeVABwcUk(Lorg/telegram/messenger/MediaController;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$playEmojiSound$17(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YOREnSZRaAeWyMgLRGbelzXPstI(Lorg/telegram/messenger/MediaController;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MediaController;->lambda$loadMoreMusic$11(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aS9FnM-szzjo3O9eg4KtRpLagCE(Lorg/telegram/messenger/MediaController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$startRecording$28(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$aeMNeTjz1_6dC888c8jjb-89GHA(Lorg/telegram/messenger/MediaController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$stopRecording$35(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJPSdSvQpMK498ZmDL9Bp_QOEXY(Lorg/telegram/messenger/MediaController;Ljava/lang/String;[BLorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->lambda$generateWaveform$31(Ljava/lang/String;[BLorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cLa42rf1-bgy4aWA8eLtn1hl_Q8(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/VideoPlayer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$cleanupPlayer$10(Lorg/telegram/ui/Components/VideoPlayer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$elnqyr-KaUer9Em3MOxMa3EoThE(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$playEmojiSound$18(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eyD-pWFmgAHpItVfYWB26G0Alb8(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$playMessage$22(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fEJT7Lx7hY6ZK9h7zK8v7jUsCmU(Lorg/telegram/messenger/MediaController;Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;IZIZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/MediaController;->lambda$stopRecordingInternal$34(Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;IZIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gTN-389IUM4SmbdY-4m3TLXT8m4(Lorg/telegram/messenger/MediaController;IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/MediaController;->lambda$startRecording$30(IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hMB_mPSU-BBz3FJVU6_ZGYvG034(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$toggleRecordingPause$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$i3eL4EzmOfRtpHlDYIIymjVY0zY(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$processMediaObserver$6(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iNDiTHKsdLy6oT7C6JQUuX_l3zY(Lorg/telegram/ui/ActionBar/AlertDialog;[Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$42(Lorg/telegram/ui/ActionBar/AlertDialog;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jgkfpaA9Wk-aVX27lR-lcgG4jv4(Lorg/telegram/messenger/MediaController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$startRecording$27(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ji_-DHT0kSgw04rHq1K6S2026GA(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$40(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$k7_9uBYOQoi8jIAPWZWCt5Dodpw(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$setPlaybackSpeed$16(Lorg/telegram/messenger/MessageObject;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$nRGNEP40JWfANhUrMvmAGbD1YoY(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->lambda$checkGallery$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ntZO9jlLMRmkTDlp5OxLgJjzUf0(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$owzg6l-b2A4NcfBPEEb4fL1Ddw0(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$39(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pniXHUwox-sXJ_hEU5c1_A7iAoY(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/MediaController$PhotoEntry;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$loadGalleryPhotosAlbums$44(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/MediaController$PhotoEntry;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q1NhRqGxcdJPNIjSuEtDsyo8WSo(Lorg/telegram/messenger/MediaController;ZZLorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;FJZJ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/MediaController;->lambda$didWriteData$47(ZZLorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;FJZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$q2wLpZlkRQKhkp05axTufBrNsCE(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessagesController$EmojiSound;Lorg/telegram/messenger/AccountInstance;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->lambda$playEmojiSound$19(Lorg/telegram/messenger/MessagesController$EmojiSound;Lorg/telegram/messenger/AccountInstance;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$t1mUDHv_k1JWQE7xQsKqFfRmea0(Lorg/telegram/messenger/MediaController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$startRecording$29(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$tG6YqE5f_tkXdwEtFnTmspAf0XY(Lorg/telegram/messenger/MediaController;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MediaController;->lambda$loadMoreMusic$12(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wOcb_adtU1mNYJNaUHSNKAtvZyk(Lorg/telegram/messenger/MediaController;Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$toggleRecordingPause$23(Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y6lguix7Ab7iCAZiEj0xewzKrqU(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$startAudioAgain$7(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNkT83jvRgxYdqSgSScqL9orfCQ(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$stopRaiseToEarSensors$9()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 22

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "bucket_id"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "bucket_display_name"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "_data"

    aput-object v9, v1, v8

    .line 199
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v11, "date_modified"

    const-string v12, "datetaken"

    const/16 v13, 0x1c

    if-le v10, v13, :cond_0

    move-object v14, v11

    goto :goto_0

    :cond_0
    move-object v14, v12

    :goto_0
    const/4 v15, 0x4

    aput-object v14, v1, v15

    const-string/jumbo v14, "orientation"

    const/16 v16, 0x5

    aput-object v14, v1, v16

    const/4 v14, 0x6

    const-string/jumbo v17, "width"

    aput-object v17, v1, v14

    const/16 v18, 0x7

    const-string v19, "height"

    aput-object v19, v1, v18

    const/16 v20, 0x8

    const-string v21, "_size"

    aput-object v21, v1, v20

    sput-object v1, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object v5, v0, v4

    aput-object v7, v0, v6

    aput-object v9, v0, v8

    if-le v10, v13, :cond_1

    goto :goto_1

    :cond_1
    move-object v11, v12

    :goto_1
    aput-object v11, v0, v15

    const-string v1, "duration"

    aput-object v1, v0, v16

    aput-object v17, v0, v14

    aput-object v19, v0, v18

    aput-object v21, v0, v20

    .line 211
    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    .line 705
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaController;->cachedEncoderBitrates:Lj$/util/concurrent/ConcurrentHashMap;

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaController;->allPhotoAlbums:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecordFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 662
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 680
    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const/high16 v2, -0x3d380000    # -100.0f

    .line 683
    iput v2, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    const/4 v2, 0x3

    new-array v3, v2, [F

    .line 690
    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    new-array v3, v2, [F

    .line 691
    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    new-array v3, v2, [F

    .line 692
    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v3, 0x0

    .line 697
    iput v3, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 707
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->foregroundConvertingMessages:Ljava/util/ArrayList;

    .line 724
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    .line 725
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->videoQueueSync:Ljava/lang/Object;

    .line 726
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    .line 740
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isSilent:Z

    .line 741
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 742
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->wasPlayingAudioBeforePause:Z

    const/4 v4, 0x0

    .line 743
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 744
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 745
    iput v3, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayerNum:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 750
    iput v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    .line 751
    iput v5, p0, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    .line 752
    iput v5, p0, Lorg/telegram/messenger/MediaController;->fastPlaybackSpeed:F

    .line 753
    iput v5, p0, Lorg/telegram/messenger/MediaController;->fastMusicPlaybackSpeed:F

    .line 755
    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 759
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 760
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    .line 780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    .line 781
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v1, v0, [Z

    .line 785
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistEndReached:[Z

    new-array v1, v0, [I

    .line 789
    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistMaxId:[I

    .line 791
    new-instance v1, Lorg/telegram/messenger/MediaController$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$1;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 804
    iput v1, p0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    const/16 v1, 0x400

    new-array v1, v1, [S

    .line 815
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    .line 818
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    .line 820
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    const/16 v1, 0x500

    .line 822
    iput v1, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    const v1, 0xbb80

    .line 823
    iput v1, p0, Lorg/telegram/messenger/MediaController;->sampleRate:I

    .line 832
    new-instance v1, Lorg/telegram/messenger/MediaController$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$2;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    .line 926
    new-instance v1, Lorg/telegram/messenger/MediaController$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$3;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1126
    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v4, "recordQueue"

    invoke-direct {v1, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v4, 0xa

    .line 1127
    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 1128
    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    const-string v5, "fileEncodingQueue"

    invoke-direct {v1, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1129
    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 1131
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1149
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/16 v1, 0x780

    .line 1210
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    .line 1212
    new-instance v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v1, v3

    const-string v3, "_display_name"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "bucket_display_name"

    aput-object v3, v1, v0

    .line 1229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v0, v3, :cond_0

    const-string v0, "date_modified"

    goto :goto_0

    :cond_0
    const-string v0, "datetaken"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string/jumbo v2, "title"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string/jumbo v2, "width"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "height"

    aput-object v2, v1, v0

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    .line 1235
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1237
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;

    invoke-direct {v2}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;-><init>()V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1239
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1242
    :goto_1
    :try_start_1
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    invoke-direct {v2}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;-><init>()V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 1244
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1247
    :goto_2
    :try_start_2
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;

    invoke-direct {v2}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;-><init>()V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 1249
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1252
    :goto_3
    :try_start_3
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    invoke-direct {v2}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;-><init>()V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 1254
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneScheduleDate:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MediaController;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneOnce:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MediaController;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneTemplateName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MediaController;IZIZLjava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(IZIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->writeFrame(Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1814(Lorg/telegram/messenger/MediaController;J)J
    .locals 2

    .line 116
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method static synthetic access$1908(Lorg/telegram/messenger/MediaController;)I
    .locals 2

    .line 116
    iget v0, p0, Lorg/telegram/messenger/MediaController;->writedFrame:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->writedFrame:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/MediaController;F)F
    .locals 0

    .line 116
    iput p1, p0, Lorg/telegram/messenger/MediaController;->audioVolume:F

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MediaController;Landroid/net/Uri;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->processMediaObserver(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2300()Ljava/lang/Runnable;
    .locals 1

    .line 116
    sget-object v0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2302(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 116
    sput-object p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$InternalObserver;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object p0
.end method

.method static synthetic access$2602(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$ExternalObserver;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    .line 116
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/MediaController;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MediaController;J)J
    .locals 0

    .line 116
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MediaController;)F
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/messenger/MediaController;F)F
    .locals 0

    .line 116
    iput p1, p0, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    .line 116
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    return-wide v0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/MediaController;J)J
    .locals 0

    .line 116
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    return-wide p1
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MediaController;)Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->shouldSavePositionForCurrentAudio:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    .line 116
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastSaveTime:J

    return-wide v0
.end method

.method static synthetic access$3402(Lorg/telegram/messenger/MediaController;J)J
    .locals 0

    .line 116
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastSaveTime:J

    return-wide p1
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->playerNum:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;[IZZI)V
    .locals 0

    .line 116
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MediaController;->updateVideoState(Lorg/telegram/messenger/MessageObject;[IZZI)V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRotation:I

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/messenger/MediaController;I)I
    .locals 0

    .line 116
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRotation:I

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/MediaController;)F
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRatio:F

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/messenger/MediaController;F)F
    .locals 0

    .line 116
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRatio:F

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MediaController;)[S
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MediaController;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    return p0
.end method

.method static synthetic access$4102(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    return p0
.end method

.method static synthetic access$4302(Lorg/telegram/messenger/MediaController;I)I
    .locals 0

    .line 116
    iput p1, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MediaController;)Landroid/view/TextureView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/MediaController;)Landroid/app/Activity;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/PipRoundVideoView;)Lorg/telegram/ui/Components/PipRoundVideoView;
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MediaController;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->playNextMessageWithoutOrder(Z)V

    return-void
.end method

.method static synthetic access$4900(ILjava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 116
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->saveFileInternal(ILjava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$VideoConvertMessage;)Z
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->convertVideo(Lorg/telegram/messenger/MediaController$VideoConvertMessage;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;ZJJZF)V
    .locals 0

    .line 116
    invoke-direct/range {p0 .. p9}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;ZJJZF)V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayerNum:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$5302(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p1
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object p0
.end method

.method static synthetic access$5602(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 116
    iget p0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MediaController;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneNotify:Z

    return p0
.end method

.method private static broadcastNewPhotos(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "I)V"
        }
    .end annotation

    .line 5149
    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5150
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 5152
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda6;

    move-object v1, v0

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda6;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    sput-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    move/from16 v1, p7

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private buildShuffledPlayList()V
    .locals 7

    .line 2333
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2336
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2337
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2339
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2340
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2342
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 2344
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    .line 2345
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2346
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2348
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2349
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    return-void
.end method

.method private checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 2750
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    .line 2751
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v1

    .line 2759
    :goto_1
    iget v0, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-eq v0, p1, :cond_5

    .line 2760
    iput p1, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-ne p1, v3, :cond_3

    .line 2763
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    goto :goto_3

    .line 2765
    :cond_3
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    if-ne p1, v1, :cond_4

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    if-nez p1, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v2

    :goto_2
    invoke-virtual {v0, p0, v3, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    :goto_3
    if-ne p1, v2, :cond_5

    .line 2768
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    :cond_5
    return-void
.end method

.method private checkForegroundConvertMessage(Z)V
    .locals 2

    .line 5216
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->foregroundConvertingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5217
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->foregroundConvertingMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->currentForegroundConvertingVideo:Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5219
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->currentForegroundConvertingVideo:Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    .line 5221
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentForegroundConvertingVideo:Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 5222
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/VideoEncodingService;->start(Z)V

    :cond_2
    return-void
.end method

.method public static checkGallery()V
    .locals 5

    .line 1003
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1006
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1007
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda4;-><init>(I)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private checkIsNextMusicFileDownloaded(I)V
    .locals 6

    .line 2698
    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->canDownloadNextTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2701
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    :goto_0
    if-eqz v0, :cond_a

    .line 2702
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    goto/16 :goto_5

    .line 2706
    :cond_2
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 2707
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v1, v1, 0x1

    .line 2708
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_4

    move v1, v3

    goto :goto_1

    .line 2712
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4

    .line 2714
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_4
    :goto_1
    if-ltz v1, :cond_a

    .line 2717
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_5

    goto :goto_5

    .line 2721
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 2723
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_7

    .line 2724
    new-instance v1, Ljava/io/File;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    move-object v4, v1

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    move-object v1, v4

    goto :goto_3

    .line 2729
    :cond_8
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 2730
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    if-eq v1, v4, :cond_a

    .line 2731
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2732
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    move v2, v3

    :goto_4
    invoke-virtual {p1, v1, v0, v3, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    :cond_a
    :goto_5
    return-void
.end method

.method private checkIsNextVoiceFileDownloaded(I)V
    .locals 5

    .line 2679
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_3

    .line 2682
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 2684
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2685
    new-instance v2, Ljava/io/File;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2686
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    move-object v2, v3

    goto :goto_1

    .line 2690
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    .line 2691
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    if-eq v2, v3, :cond_5

    .line 2692
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2693
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    invoke-virtual {p1, v2, v0, v4, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    :cond_5
    :goto_3
    return-void
.end method

.method private checkScreenshots(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1507
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastChatEnterTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v0, 0x7d0

    const/4 v4, 0x0

    move v5, v4

    .line 1512
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 1513
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 1514
    iget-wide v7, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v7, v7, v2

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    goto :goto_1

    .line 1518
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/messenger/MediaController;->lastChatEnterTime:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    .line 1519
    iget-wide v7, p0, Lorg/telegram/messenger/MediaController;->lastChatLeaveTime:J

    cmp-long v7, v7, v2

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/messenger/MediaController;->lastChatLeaveTime:J

    add-long/2addr v9, v0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_3

    .line 1520
    :cond_2
    iget-wide v7, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    const/4 v5, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_6

    .line 1526
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1527
    iget p1, p0, Lorg/telegram/messenger/MediaController;->lastChatAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SecretChatHelper;->getInstance(I)Lorg/telegram/messenger/SecretChatHelper;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->lastChatVisibleMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_2

    .line 1529
    :cond_5
    iget p1, p0, Lorg/telegram/messenger/MediaController;->lastChatAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, p0, Lorg/telegram/messenger/MediaController;->lastMessageId:I

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/SendMessagesHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$Message;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private clearPlaylist()V
    .locals 5

    const/4 v0, 0x0

    .line 1409
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isFromMusicPlaylist:Z

    .line 1410
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1411
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1412
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1413
    iput v0, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    .line 1414
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistEndReached:[Z

    const/4 v2, 0x1

    aput-boolean v0, v1, v2

    aput-boolean v0, v1, v0

    const-wide/16 v3, 0x0

    .line 1415
    iput-wide v3, p0, Lorg/telegram/messenger/MediaController;->playlistMergeDialogId:J

    .line 1416
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistMaxId:[I

    const v3, 0x7fffffff

    aput v3, v1, v2

    aput v3, v1, v0

    .line 1417
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    const/4 v0, 0x0

    .line 1418
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    return-void
.end method

.method private convertVideo(Lorg/telegram/messenger/MediaController$VideoConvertMessage;)Z
    .locals 38

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 5416
    iget-object v1, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 5417
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v1, :cond_15

    if-nez v2, :cond_0

    goto/16 :goto_10

    .line 5421
    :cond_0
    iget-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 5422
    iget-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 5423
    iget-wide v7, v2, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    .line 5424
    iget-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 5425
    iget v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 5426
    iget v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 5427
    iget v14, v2, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 5428
    iget v15, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 5429
    iget v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 5430
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 5431
    iget v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    move/from16 v16, v11

    .line 5432
    iget v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    .line 5433
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v17

    move/from16 v22, v11

    if-nez v17, :cond_2

    iget-boolean v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->forceFragmenting:Z

    if-eqz v11, :cond_1

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v17, 0x1

    .line 5434
    :goto_1
    new-instance v11, Ljava/io/File;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5435
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5436
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 5438
    :cond_3
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_4

    .line 5439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v11

    const-string v11, "begin convert "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " startTime = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " avatarStartTime = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " endTime "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " rWidth = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rHeight = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rotation = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " oWidth = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " oHeight = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " framerate = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " bitrate = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v16

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " originalBitrate = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, v22

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object/from16 v35, v11

    move/from16 v11, v22

    :goto_2
    if-nez v4, :cond_5

    const-string v1, ""

    goto :goto_3

    :cond_5
    move-object v1, v4

    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v4, v5, v18

    if-lez v4, :cond_6

    cmp-long v20, v9, v18

    if-lez v20, :cond_6

    sub-long v18, v9, v5

    move v4, v12

    move-wide/from16 v30, v18

    goto :goto_4

    :cond_6
    cmp-long v18, v9, v18

    if-lez v18, :cond_7

    move-wide/from16 v30, v9

    move v4, v12

    :goto_4
    move/from16 v18, v13

    goto :goto_6

    :cond_7
    if-lez v4, :cond_8

    move v4, v12

    move/from16 v18, v13

    .line 5452
    iget-wide v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    sub-long/2addr v12, v5

    goto :goto_5

    :cond_8
    move v4, v12

    move/from16 v18, v13

    .line 5454
    iget-wide v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    :goto_5
    move-wide/from16 v30, v12

    :goto_6
    const/16 v12, 0x3b

    if-nez v0, :cond_9

    const/16 v0, 0x19

    goto :goto_7

    :cond_9
    if-le v0, v12, :cond_a

    move v0, v12

    :cond_a
    :goto_7
    const/16 v12, 0x5a

    if-eq v14, v12, :cond_c

    const/16 v12, 0x10e

    if-ne v14, v12, :cond_b

    goto :goto_8

    :cond_b
    move/from16 v13, v18

    goto :goto_9

    :cond_c
    :goto_8
    move v13, v4

    move/from16 v4, v18

    .line 5469
    :goto_9
    iget-boolean v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->shouldLimitFps:Z

    if-nez v12, :cond_d

    const/16 v12, 0x28

    if-le v0, v12, :cond_d

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    move/from16 v18, v0

    const/16 v0, 0x1e0

    if-gt v12, v0, :cond_e

    const/16 v0, 0x1e

    move/from16 v20, v0

    goto :goto_a

    :cond_d
    move/from16 v18, v0

    :cond_e
    move/from16 v20, v18

    :goto_a
    const-wide/16 v18, -0x1

    cmp-long v0, v7, v18

    if-nez v0, :cond_10

    .line 5473
    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v0, :cond_10

    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v0, :cond_10

    if-ne v4, v15, :cond_10

    if-ne v13, v3, :cond_10

    if-nez v14, :cond_10

    iget-boolean v0, v2, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    if-nez v0, :cond_10

    cmp-long v0, v5, v18

    if-nez v0, :cond_10

    iget-object v0, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    .line 5474
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_b

    :cond_f
    const/16 v29, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    const/16 v29, 0x1

    .line 5477
    :goto_c
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v12, "videoconvert"

    move/from16 v18, v13

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 5481
    new-instance v12, Lorg/telegram/messenger/MediaController$14;

    move-object/from16 v32, v12

    move-object/from16 v13, p0

    move-wide/from16 v27, v7

    move/from16 v21, v16

    move-object/from16 v7, v35

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v2, v7, v0}, Lorg/telegram/messenger/MediaController$14;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/VideoEditedInfo;Ljava/io/File;Lorg/telegram/messenger/MediaController$VideoConvertMessage;)V

    const/4 v8, 0x1

    .line 5508
    iput-boolean v8, v2, Lorg/telegram/messenger/VideoEditedInfo;->videoConvertFirstWrite:Z

    .line 5510
    new-instance v8, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;

    invoke-direct {v8}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;-><init>()V

    move-object v12, v1

    move-object v1, v13

    move/from16 v19, v18

    move-object v13, v7

    move/from16 v16, v15

    move/from16 v15, v17

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v22, v11

    move-wide/from16 v23, v5

    move-wide/from16 v25, v9

    move-object/from16 v33, v2

    .line 5511
    invoke-static/range {v12 .. v33}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->of(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJZJLorg/telegram/messenger/MediaController$VideoConvertorListener;Lorg/telegram/messenger/VideoEditedInfo;)Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;

    move-result-object v3

    .line 5520
    iget-object v4, v3, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    iget-object v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->mixedSoundInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5521
    invoke-virtual {v8, v3}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideo(Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;)Z

    move-result v3

    .line 5524
    iget-boolean v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    if-nez v4, :cond_11

    .line 5526
    iget-object v5, v1, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v5

    .line 5527
    :try_start_0
    iget-boolean v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    .line 5528
    monitor-exit v5

    goto :goto_d

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5531
    :cond_11
    :goto_d
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_12

    .line 5532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v36

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " canceled="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5535
    :cond_12
    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v5, "isPreviousOk"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v5, 0x1

    .line 5536
    invoke-virtual {v8}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->getLastFrameTimestamp()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    if-nez v3, :cond_14

    if-eqz v4, :cond_13

    goto :goto_e

    :cond_13
    const/16 v34, 0x0

    goto :goto_f

    :cond_14
    :goto_e
    const/16 v34, 0x1

    :goto_f
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move v4, v5

    move-wide v5, v8

    move-wide v7, v10

    move/from16 v9, v34

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;ZJJZF)V

    const/4 v0, 0x1

    return v0

    :cond_15
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public static copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, -0x1

    .line 4850
    invoke-static {p0, p1, v0, v1}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copyFileToCache(Landroid/net/Uri;Ljava/lang/String;J)Ljava/lang/String;
    .locals 13

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4860
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->fixFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4862
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v0

    .line 4863
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 4864
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d.%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const/4 v0, 0x1

    aput-object p1, v7, v0

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4866
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 4867
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 4868
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v6, :cond_2

    cmp-long v0, p2, v1

    if-lez v0, :cond_1

    int-to-long v0, v3

    cmp-long v0, v0, p2

    if-lez v0, :cond_1

    .line 4928
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    return-object v4

    :cond_2
    move v6, v3

    .line 4873
    :goto_0
    :try_start_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v5

    if-nez v6, :cond_3

    .line 4875
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    move-object v5, v7

    goto :goto_2

    :cond_3
    const-string v7, "."

    .line 4877
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v8, ")"

    const-string v9, " ("

    if-lez v7, :cond_4

    .line 4879
    :try_start_3
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v10

    goto :goto_2

    .line 4881
    :cond_4
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 4885
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_c

    .line 4886
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v7, p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 4887
    :try_start_4
    instance-of v0, v6, Ljava/io/FileInputStream;

    if-eqz v0, :cond_7

    .line 4888
    move-object v0, v6

    check-cast v0, Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4890
    :try_start_5
    const-class v7, Ljava/io/FileDescriptor;

    const-string v8, "getInt$"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 4891
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4892
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(I)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_7

    if-eqz v6, :cond_5

    .line 4915
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 4918
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    cmp-long v0, p2, v1

    if-lez v0, :cond_6

    int-to-long v0, v3

    cmp-long v0, v0, p2

    if-lez v0, :cond_6

    .line 4928
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_6
    return-object v4

    :catchall_0
    move-exception v0

    .line 4896
    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4899
    :cond_7
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v0, 0x5000

    :try_start_8
    new-array v0, v0, [B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move v8, v3

    .line 4902
    :cond_8
    :try_start_9
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 4903
    invoke-virtual {v7, v0, v3, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/2addr v8, v9

    cmp-long v9, p2, v1

    if-lez v9, :cond_8

    int-to-long v10, v8

    cmp-long v10, v10, p2

    if-lez v10, :cond_8

    .line 4915
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 4918
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4922
    :goto_4
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 4925
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    if-lez v9, :cond_9

    if-lez v10, :cond_9

    .line 4928
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_9
    return-object v4

    .line 4909
    :cond_a
    :try_start_c
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 4915
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 4918
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4922
    :goto_6
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v4, v0

    .line 4925
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    cmp-long v0, p2, v1

    if-lez v0, :cond_b

    int-to-long v0, v8

    cmp-long v0, v0, p2

    if-lez v0, :cond_b

    .line 4928
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_b
    return-object v3

    :catchall_1
    move-exception v0

    move-object v4, v6

    move v3, v8

    goto/16 :goto_d

    :catch_5
    move-exception v0

    move v3, v8

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v7, v4

    goto :goto_c

    :catch_7
    move-exception v0

    move-object v7, v4

    goto :goto_9

    :cond_c
    move-object v7, p0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move-object v6, v0

    move-object v7, v4

    goto :goto_e

    :catch_8
    move-exception v0

    move-object v6, v4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v6, v0

    move-object v5, v4

    move-object v7, v5

    goto :goto_e

    :catch_9
    move-exception v0

    move-object v5, v4

    move-object v6, v5

    :goto_8
    move-object v7, v6

    .line 4911
    :goto_9
    :try_start_f
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v6, :cond_d

    .line 4915
    :try_start_10
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v6, v0

    .line 4918
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_d
    :goto_a
    if-eqz v7, :cond_e

    .line 4922
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v6, v0

    .line 4925
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_e
    :goto_b
    cmp-long v0, p2, v1

    if-lez v0, :cond_f

    int-to-long v0, v3

    cmp-long v0, v0, p2

    if-lez v0, :cond_f

    .line 4928
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_f
    return-object v4

    :catchall_5
    move-exception v0

    :goto_c
    move-object v4, v6

    :goto_d
    move-object v6, v0

    :goto_e
    if-eqz v4, :cond_10

    .line 4915
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_f

    :catch_c
    move-exception v0

    move-object v4, v0

    .line 4918
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_10
    :goto_f
    if-eqz v7, :cond_11

    .line 4922
    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v4, v0

    .line 4925
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_11
    :goto_10
    cmp-long v0, p2, v1

    if-lez v0, :cond_12

    int-to-long v0, v3

    cmp-long v0, v0, p2

    if-lez v0, :cond_12

    .line 4928
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 4930
    :cond_12
    throw v6
.end method

.method private didWriteData(Lorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;ZJJZF)V
    .locals 13

    move-object v4, p1

    .line 5330
    iget-object v0, v4, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v9, v0, Lorg/telegram/messenger/VideoEditedInfo;->videoConvertFirstWrite:Z

    if-eqz v9, :cond_0

    const/4 v1, 0x0

    .line 5332
    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->videoConvertFirstWrite:Z

    .line 5334
    :cond_0
    new-instance v12, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda37;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p8

    move/from16 v3, p3

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p9

    move-wide/from16 v7, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/messenger/MediaController;ZZLorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;FJZJ)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static extractRealEncoderBitrate(IIIZ)I
    .locals 4

    const-string v0, "bitrate"

    .line 5596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5597
    sget-object v2, Lorg/telegram/messenger/MediaController;->cachedEncoderBitrates:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 5598
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    const-string/jumbo p3, "video/hevc"

    .line 5603
    invoke-static {p3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object p3, v2

    :goto_0
    const-string/jumbo v3, "video/avc"

    if-nez p3, :cond_2

    .line 5607
    :try_start_1
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p3

    .line 5609
    :cond_2
    invoke-static {v3, p0, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    const-string p1, "color-format"

    const v3, 0x7f000789

    .line 5610
    invoke-virtual {p0, p1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo p1, "max-bitrate"

    .line 5611
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5612
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "frame-rate"

    const/16 v3, 0x1e

    .line 5613
    invoke-virtual {p0, p1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "i-frame-interval"

    const/4 v3, 0x1

    .line 5614
    invoke-virtual {p0, p1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5615
    invoke-virtual {p3, p0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 5616
    invoke-virtual {p3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    .line 5617
    sget-object p1, Lorg/telegram/messenger/MediaController;->cachedEncoderBitrates:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5618
    invoke-virtual {p3}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    return p2
.end method

.method public static findTrack(Landroid/media/MediaExtractor;Z)I
    .locals 4

    .line 5298
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5300
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string/jumbo v3, "mime"

    .line 5301
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v3, "audio/"

    .line 5303
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_0
    const-string/jumbo v3, "video/"

    .line 5307
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x5

    return p0
.end method

.method private forbidRaiseToListen()Z
    .locals 8

    const/4 v0, 0x0

    .line 1702
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    .line 1703
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 1704
    array-length v2, v1

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1705
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    const/4 v7, 0x7

    if-eq v6, v7, :cond_0

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_0

    const/16 v7, 0x1b

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1713
    :cond_0
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 1719
    :cond_3
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    return v0

    :catch_0
    move-exception v1

    .line 1722
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10

    const-string v0, "_display_name"

    const-string v1, ""

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 4826
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    .line 4827
    :try_start_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4828
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4829
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    .line 4831
    :cond_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    .line 4827
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 4832
    :try_start_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 4836
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 p0, 0x2f

    .line 4837
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    add-int/lit8 p0, p0, 0x1

    .line 4839
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    return-object v2

    :catch_1
    move-exception p0

    .line 4844
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getInstance()Lorg/telegram/messenger/MediaController;
    .locals 2

    .line 1113
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    if-nez v0, :cond_1

    .line 1115
    const-class v1, Lorg/telegram/messenger/MediaController;

    monitor-enter v1

    .line 1116
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    if-nez v0, :cond_0

    .line 1118
    new-instance v0, Lorg/telegram/messenger/MediaController;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    .line 1120
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getStickerExt(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "webp"

    const/4 v1, 0x0

    .line 4728
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    .line 4733
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4734
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4735
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, p0

    :cond_0
    const/16 p0, 0xc

    new-array v3, p0, [B

    const/4 v4, 0x0

    .line 4740
    invoke-virtual {v2, v3, v4, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, p0, :cond_3

    .line 4741
    aget-byte p0, v3, v4

    const/16 v5, -0x77

    const/4 v6, 0x1

    if-ne p0, v5, :cond_1

    aget-byte p0, v3, v6

    const/16 v5, 0x50

    if-ne p0, v5, :cond_1

    const/4 p0, 0x2

    aget-byte p0, v3, p0

    const/16 v5, 0x4e

    if-ne p0, v5, :cond_1

    const/4 p0, 0x3

    aget-byte p0, v3, p0

    const/16 v5, 0x47

    if-ne p0, v5, :cond_1

    const/4 p0, 0x4

    aget-byte p0, v3, p0

    const/16 v5, 0xd

    if-ne p0, v5, :cond_1

    const/4 p0, 0x5

    aget-byte p0, v3, p0

    const/16 v5, 0xa

    if-ne p0, v5, :cond_1

    const/4 p0, 0x6

    aget-byte p0, v3, p0

    const/16 v7, 0x1a

    if-ne p0, v7, :cond_1

    const/4 p0, 0x7

    aget-byte p0, v3, p0

    if-ne p0, v5, :cond_1

    const-string/jumbo p0, "png"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4760
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 4763
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-object p0

    .line 4744
    :cond_1
    :try_start_3
    aget-byte p0, v3, v4

    const/16 v4, 0x1f

    if-ne p0, v4, :cond_2

    aget-byte p0, v3, v6

    const/16 v4, -0x75

    if-ne p0, v4, :cond_2

    const-string/jumbo p0, "tgs"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4760
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 4763
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-object p0

    .line 4747
    :cond_2
    :try_start_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    .line 4749
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "riff"

    .line 4750
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_3

    .line 4760
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 4763
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-object v0

    .line 4760
    :cond_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, v2

    goto :goto_5

    :catch_4
    move-exception p0

    .line 4756
    :try_start_8
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_4

    .line 4760
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    :catch_5
    move-exception p0

    .line 4763
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-object v1

    :goto_5
    if-eqz v1, :cond_5

    .line 4760
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 4763
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4765
    :cond_5
    :goto_6
    throw p0
.end method

.method public static getVideoBitrate(Ljava/lang/String;)I
    .locals 1

    .line 5542
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5545
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x14

    .line 5546
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5548
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 5552
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5554
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return p0
.end method

.method private static getVideoBitrateWithFactor(F)I
    .locals 1

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v0

    const v0, 0x3f90a3d7    # 1.13f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static native getWaveform(Ljava/lang/String;)[B
.end method

.method public static isGif(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4798
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 p0, 0x3

    new-array v2, p0, [B

    .line 4800
    invoke-virtual {v1, v2, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 4801
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "gif"

    .line 4802
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 4811
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4814
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return p0

    .line 4811
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 4807
    :try_start_3
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 4811
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 4814
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_2

    .line 4811
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 4814
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4816
    :cond_2
    :goto_3
    throw p0
.end method

.method public static isH264Video(Ljava/lang/String;)Z
    .locals 3

    .line 5316
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v1, 0x0

    .line 5318
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 5319
    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result p0

    if-ltz p0, :cond_0

    .line 5320
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p0

    const-string/jumbo v2, "mime"

    invoke-virtual {p0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "video/avc"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 5324
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5322
    :try_start_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5324
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return v1

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 5325
    throw p0
.end method

.method private isNearToSensor(F)Z
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1693
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static native isOpusFile(Ljava/lang/String;)I
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const v0, 0x7f000100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 7

    .line 2287
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-wide v3, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-wide v3, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isWebp(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4772
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/16 p0, 0xc

    new-array v2, p0, [B

    .line 4774
    invoke-virtual {v1, v2, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 4775
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    .line 4776
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "riff"

    .line 4777
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "webp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 4786
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4789
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return p0

    .line 4786
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 4782
    :try_start_3
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 4786
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 4789
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_2

    .line 4786
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 4789
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4791
    :cond_2
    :goto_3
    throw p0
.end method

.method private static synthetic lambda$broadcastNewPhotos$46(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)V
    .locals 9

    .line 5153
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/MediaController;->forceBroadcastNewPhotos:Z

    if-nez v0, :cond_0

    const/16 v8, 0x3e8

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 5154
    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void

    .line 5157
    :cond_0
    sput-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    .line 5158
    sput-object p2, Lorg/telegram/messenger/MediaController;->allPhotoAlbums:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5159
    sput-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    .line 5160
    sput-object p5, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 5161
    sput-object p4, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 5162
    sput-object p6, Lorg/telegram/messenger/MediaController;->allVideosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 5163
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p4

    sget p5, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    const/4 p6, 0x4

    new-array p6, p6, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p6, v0

    const/4 p0, 0x1

    aput-object p1, p6, p0

    const/4 p0, 0x2

    aput-object p2, p6, p0

    const/4 p0, 0x3

    aput-object p3, p6, p0

    invoke-virtual {p4, p5, p6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$checkGallery$1(I)V
    .locals 17

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    const-string v2, "COUNT(_id)"

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v6, 0x21

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1011
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 1012
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v6, :cond_0

    .line 1014
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 1015
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 1016
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 1018
    :cond_0
    invoke-virtual {v0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2

    .line 1020
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_3

    .line 1022
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1023
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v9, v7

    :cond_3
    move v0, v8

    :goto_0
    if-eqz v9, :cond_4

    .line 1031
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v9

    move v9, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v9, v7

    .line 1028
    :goto_1
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v9, :cond_5

    .line 1031
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v10, v9

    move v9, v8

    .line 1035
    :goto_2
    :try_start_3
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 1036
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v6, :cond_6

    .line 1038
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 1039
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_7

    .line 1040
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1042
    :cond_6
    invoke-virtual {v0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 1044
    :cond_7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 1046
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1047
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/2addr v9, v0

    :cond_8
    if-eqz v10, :cond_9

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 1052
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v10, :cond_9

    .line 1055
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    move/from16 v1, p0

    if-eq v1, v9, :cond_b

    .line 1059
    sget-object v0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 1060
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1061
    sput-object v7, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    .line 1063
    :cond_a
    invoke-static {v8}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    :cond_b
    return-void

    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_c

    .line 1055
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1057
    :cond_c
    throw v1

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v9, :cond_d

    .line 1031
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1033
    :cond_d
    throw v1
.end method

.method private synthetic lambda$cleanupPlayer$10(Lorg/telegram/ui/Components/VideoPlayer;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2156
    iget v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    .line 2161
    :goto_0
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    return-void
.end method

.method private synthetic lambda$didWriteData$47(ZZLorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;FJZJ)V
    .locals 11

    move-object v1, p0

    move-object v0, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    .line 5336
    :cond_0
    iget-object v4, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    .line 5337
    iget-object v5, v1, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v5

    .line 5338
    :try_start_0
    iget-object v6, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-boolean v3, v6, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    .line 5339
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5340
    iget-object v5, v1, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5341
    iget-object v5, v1, Lorg/telegram/messenger/MediaController;->foregroundConvertingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez v4, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v2

    .line 5342
    :goto_1
    invoke-direct {p0, v4}, Lorg/telegram/messenger/MediaController;->checkForegroundConvertMessage(Z)V

    .line 5343
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    .line 5346
    :cond_3
    iget-object v4, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    instance-of v4, v4, Lcom/iMe/fork/utils/AnimatedStickerEditedInfo;

    const/4 v5, 0x2

    if-eqz v4, :cond_6

    if-eqz p1, :cond_4

    .line 5348
    iget v0, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingFailed:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 5350
    iget v0, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPrepared:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v5, v2

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 v4, 0x3

    const/4 v6, 0x4

    if-eqz p1, :cond_7

    .line 5356
    iget v7, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v0, v6, v3

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-virtual {v7, v8, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    if-eqz p8, :cond_8

    .line 5359
    iget v7, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v10, v9, v3

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5361
    :cond_8
    iget v7, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v0, v9, v3

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v5

    if-eqz p2, :cond_9

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_3

    :cond_9
    const-wide/16 v2, 0x0

    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v0, 0x5

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :goto_4
    return-void

    :catchall_0
    move-exception v0

    .line 5339
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$generateWaveform$31(Ljava/lang/String;[BLorg/telegram/messenger/MessageObject;)V
    .locals 12

    .line 4050
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 4054
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 4055
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4056
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 4057
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_1

    .line 4058
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 4059
    iget p2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4063
    :cond_2
    :goto_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 4064
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4065
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v9, p3, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    const-wide/16 v10, 0x0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZIJ)V

    .line 4066
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4067
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4068
    iget p3, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {p3, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$generateWaveform$32(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 4044
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/MediaController;->getWaveform(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4049
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;[BLorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception p1

    .line 4046
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$loadGalleryPhotosAlbums$44(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/MediaController$PhotoEntry;)I
    .locals 3

    .line 5133
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    iget-wide p0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$loadGalleryPhotosAlbums$45(I)V
    .locals 54

    const-string v1, "AllMedia"

    const-string v2, "_size"

    const-string v3, "height"

    const-string/jumbo v4, "width"

    const-string v5, "_data"

    const-string v6, "bucket_display_name"

    const-string v7, "bucket_id"

    const-string v8, "_id"

    const-string v9, "android.permission.READ_MEDIA_AUDIO"

    const-string v10, " DESC"

    const-string v11, "android.permission.READ_MEDIA_VIDEO"

    const-string v12, "android.permission.READ_MEDIA_IMAGES"

    const-string v13, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v14, "date_modified"

    const-string v15, "datetaken"

    move-object/from16 v16, v14

    .line 4936
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v15

    .line 4937
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v14

    .line 4938
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v19, v14

    .line 4939
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    const/16 v20, 0x0

    .line 4945
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v21, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v22, v14

    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/Camera/"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v22, v14

    .line 4947
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object/from16 v14, v20

    :goto_1
    move-object/from16 v21, v14

    .line 4954
    :try_start_2
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 4955
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_15

    move-object/from16 v26, v1

    const/16 v1, 0x17

    if-lt v14, v1, :cond_2

    const/16 v1, 0x21

    if-ge v14, v1, :cond_0

    .line 4957
    :try_start_3
    invoke-virtual {v0, v13}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v28, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v10

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v1, v20

    move-object/from16 v34, v1

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    :goto_2
    move-object/from16 v4, v21

    move-object/from16 v7, v26

    goto/16 :goto_19

    :cond_0
    :goto_3
    const/16 v1, 0x21

    if-lt v14, v1, :cond_1

    .line 4959
    invoke-virtual {v0, v12}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 4960
    invoke-virtual {v0, v11}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 4961
    invoke-virtual {v0, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_1

    goto :goto_5

    :cond_1
    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v28, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v10

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v1, v20

    move-object/from16 v34, v1

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    :goto_4
    move-object/from16 v4, v21

    move-object/from16 v7, v26

    goto/16 :goto_16

    .line 4964
    :cond_2
    :goto_5
    :try_start_4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    sget-object v28, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v29, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    const/16 v30, 0x0

    const/16 v31, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1c

    if-le v14, v1, :cond_3

    move-object/from16 v1, v16

    goto :goto_6

    :cond_3
    move-object/from16 v1, v17

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v27 .. v32}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_14

    if-eqz v1, :cond_e

    .line 4966
    :try_start_5
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_13

    move-object/from16 v27, v8

    .line 4967
    :try_start_6
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    move-object/from16 v28, v7

    .line 4968
    :try_start_7
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_11

    move-object/from16 v29, v6

    .line 4969
    :try_start_8
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    move-object/from16 v30, v5

    const/16 v5, 0x1c

    if-le v14, v5, :cond_4

    move-object/from16 v5, v16

    goto :goto_7

    :cond_4
    move-object/from16 v5, v17

    .line 4970
    :goto_7
    :try_start_9
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v14, "orientation"

    .line 4971
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    move-object/from16 v31, v10

    .line 4972
    :try_start_a
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    move-object/from16 v32, v4

    .line 4973
    :try_start_b
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    move-object/from16 v33, v3

    .line 4974
    :try_start_c
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    move-object/from16 v34, v20

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    .line 4976
    :goto_8
    :try_start_d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v38
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    if-eqz v38, :cond_d

    move-object/from16 v38, v2

    .line 4977
    :try_start_e
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4978
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_5

    move-object/from16 v2, v38

    goto :goto_8

    .line 4982
    :cond_5
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    move/from16 v51, v0

    .line 4983
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v52, v6

    .line 4984
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4985
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 4986
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 4987
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 4988
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 4989
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    move-object/from16 v53, v1

    .line 4991
    :try_start_f
    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/16 v46, 0x0

    move-object/from16 v39, v1

    move/from16 v40, v0

    move-object/from16 v44, v2

    invoke-direct/range {v39 .. v50}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    if-nez v34, :cond_6

    move/from16 v39, v3

    .line 4994
    new-instance v3, Lorg/telegram/messenger/MediaController$AlbumEntry;

    move/from16 v40, v4

    const-string v4, "AllPhotos"

    move/from16 v41, v5

    sget v5, Lorg/telegram/messenger/R$string;->AllPhotos:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 4995
    :try_start_10
    invoke-virtual {v15, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v34, v3

    goto/16 :goto_11

    :cond_6
    move/from16 v39, v3

    move/from16 v40, v4

    move/from16 v41, v5

    move-object/from16 v3, v34

    :goto_9
    if-nez v35, :cond_7

    .line 4998
    :try_start_11
    new-instance v4, Lorg/telegram/messenger/MediaController$AlbumEntry;

    sget v5, Lorg/telegram/messenger/R$string;->AllMedia:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move/from16 v42, v7

    move-object/from16 v7, v26

    :try_start_12
    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v26, v8

    const/4 v8, 0x0

    invoke-direct {v4, v8, v5, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v5, v18

    .line 4999
    :try_start_13
    invoke-virtual {v5, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v5, v18

    move-object/from16 v7, v26

    :goto_a
    move-object/from16 v34, v3

    :goto_b
    move-object/from16 v8, v19

    move-object/from16 v4, v21

    goto/16 :goto_12

    :cond_7
    move/from16 v42, v7

    move-object/from16 v5, v18

    move-object/from16 v7, v26

    move/from16 v26, v8

    move-object/from16 v4, v35

    .line 5001
    :goto_c
    :try_start_14
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 5002
    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-object/from16 v8, v19

    .line 5004
    :try_start_15
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/MediaController$AlbumEntry;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-nez v18, :cond_a

    move-object/from16 v19, v3

    .line 5006
    :try_start_16
    new-instance v3, Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {v3, v0, v6, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 5007
    invoke-virtual {v8, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-nez v36, :cond_8

    if-eqz v21, :cond_8

    if-eqz v2, :cond_8

    move-object/from16 v34, v4

    move-object/from16 v4, v21

    .line 5008
    :try_start_17
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v21, v10

    const/4 v10, 0x0

    .line 5009
    invoke-virtual {v5, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5010
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v36, v10

    goto :goto_d

    :cond_8
    move-object/from16 v34, v4

    move-object/from16 v4, v21

    :cond_9
    move/from16 v21, v10

    .line 5012
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catchall_5
    move-exception v0

    goto/16 :goto_f

    :cond_a
    move-object/from16 v19, v3

    move-object/from16 v34, v4

    move-object/from16 v4, v21

    move/from16 v21, v10

    move-object/from16 v3, v18

    .line 5015
    :goto_d
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    move-object/from16 v3, v22

    .line 5017
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v10, :cond_c

    .line 5019
    new-instance v10, Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {v10, v0, v6, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 5020
    invoke-virtual {v3, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v37, :cond_b

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    .line 5021
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    .line 5022
    invoke-virtual {v15, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5023
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v37, v0

    goto :goto_e

    .line 5025
    :cond_b
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5028
    :cond_c
    :goto_e
    invoke-virtual {v10, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    move-object/from16 v22, v3

    move-object/from16 v18, v5

    move/from16 v10, v21

    move-object/from16 v35, v34

    move-object/from16 v2, v38

    move/from16 v3, v39

    move/from16 v5, v41

    move/from16 v0, v51

    move/from16 v6, v52

    move-object/from16 v1, v53

    move-object/from16 v21, v4

    move-object/from16 v34, v19

    move/from16 v4, v40

    move-object/from16 v19, v8

    move/from16 v8, v26

    move-object/from16 v26, v7

    move/from16 v7, v42

    goto/16 :goto_8

    :catchall_6
    move-exception v0

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object/from16 v19, v3

    :goto_f
    move-object/from16 v34, v4

    move-object/from16 v4, v21

    goto :goto_10

    :catchall_8
    move-exception v0

    move-object/from16 v34, v4

    move-object/from16 v8, v19

    move-object/from16 v4, v21

    move-object/from16 v19, v3

    :goto_10
    move-object/from16 v35, v34

    move-object/from16 v1, v53

    move-object/from16 v34, v19

    goto/16 :goto_19

    :catchall_9
    move-exception v0

    :goto_11
    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v4, v21

    move-object/from16 v7, v26

    :goto_12
    move-object/from16 v1, v53

    goto/16 :goto_19

    :catchall_a
    move-exception v0

    move-object/from16 v53, v1

    goto :goto_13

    :cond_d
    move-object/from16 v53, v1

    move-object/from16 v38, v2

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    goto/16 :goto_4

    :catchall_b
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v38, v2

    :goto_13
    move-object/from16 v5, v18

    move-object/from16 v8, v19

    goto/16 :goto_2

    :catchall_c
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v38, v2

    goto/16 :goto_15

    :catchall_d
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    goto/16 :goto_15

    :catchall_e
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    goto :goto_15

    :catchall_f
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    goto :goto_14

    :catchall_10
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v30, v5

    goto :goto_14

    :catchall_11
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    goto :goto_14

    :catchall_12
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v28, v7

    goto :goto_14

    :catchall_13
    move-exception v0

    move-object/from16 v53, v1

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v28, v7

    move-object/from16 v27, v8

    :goto_14
    move-object/from16 v31, v10

    :goto_15
    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v4, v21

    move-object/from16 v7, v26

    move-object/from16 v34, v20

    goto/16 :goto_18

    :cond_e
    move-object/from16 v53, v1

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v28, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v10

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v4, v21

    move-object/from16 v7, v26

    move-object/from16 v34, v20

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    :goto_16
    if-eqz v1, :cond_f

    .line 5037
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    goto :goto_1b

    :catch_2
    move-exception v0

    move-object v2, v0

    goto :goto_1a

    :catchall_14
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v28, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v10

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v4, v21

    move-object/from16 v7, v26

    goto :goto_17

    :catchall_15
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v30, v5

    move-object/from16 v29, v6

    move-object/from16 v28, v7

    move-object/from16 v27, v8

    move-object/from16 v31, v10

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v4, v21

    move-object v7, v1

    :goto_17
    move-object/from16 v1, v20

    move-object/from16 v34, v1

    :goto_18
    move-object/from16 v35, v34

    move-object/from16 v36, v35

    .line 5033
    :goto_19
    :try_start_19
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_21

    if-eqz v1, :cond_f

    .line 5037
    :try_start_1a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    goto :goto_1b

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 5039
    :goto_1a
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_f
    :goto_1b
    move-object/from16 v21, v34

    .line 5046
    :try_start_1b
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 5047
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_12

    const/16 v3, 0x21

    if-ge v2, v3, :cond_10

    .line 5049
    invoke-virtual {v0, v13}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    :cond_10
    const/16 v3, 0x21

    if-lt v2, v3, :cond_11

    .line 5051
    invoke-virtual {v0, v12}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    .line 5052
    invoke-virtual {v0, v11}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    .line 5053
    invoke-virtual {v0, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1d

    :cond_11
    :goto_1c
    const/4 v3, 0x0

    goto/16 :goto_2a

    .line 5056
    :cond_12
    :goto_1d
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1c

    if-le v2, v3, :cond_13

    move-object/from16 v3, v16

    goto :goto_1e

    :cond_13
    move-object/from16 v3, v17

    :goto_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1f

    if-eqz v1, :cond_1c

    move-object/from16 v3, v27

    .line 5058
    :try_start_1c
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v3, v28

    .line 5059
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v6, v29

    .line 5060
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v9, v30

    .line 5061
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x1c

    if-le v2, v10, :cond_14

    move-object/from16 v14, v16

    goto :goto_1f

    :cond_14
    move-object/from16 v14, v17

    .line 5062
    :goto_1f
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v10, "duration"

    .line 5063
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v11, v32

    .line 5064
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v12, v33

    .line 5065
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v13, v38

    .line 5066
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 5068
    :goto_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 5069
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5070
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_15

    goto :goto_20

    .line 5074
    :cond_15
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    move/from16 v16, v0

    .line 5075
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v17, v3

    .line 5076
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5077
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 5078
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 5079
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 5080
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 5081
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1e

    move-object/from16 v22, v1

    .line 5083
    :try_start_1d
    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const-wide/16 v23, 0x3e8

    move/from16 v25, v9

    move/from16 v26, v10

    div-long v9, v18, v23

    long-to-int v9, v9

    const/16 v44, 0x1

    move-object/from16 v37, v1

    move/from16 v38, v0

    move-object/from16 v42, v14

    move/from16 v43, v9

    invoke-direct/range {v37 .. v48}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    if-nez v20, :cond_18

    .line 5086
    :try_start_1e
    new-instance v9, Lorg/telegram/messenger/MediaController$AlbumEntry;

    const-string v10, "AllVideos"

    move/from16 v18, v2

    sget v2, Lorg/telegram/messenger/R$string;->AllVideos:I

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_17

    const/4 v10, 0x0

    :try_start_1f
    invoke-direct {v9, v10, v2, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_16

    const/4 v2, 0x1

    .line 5087
    :try_start_20
    iput-boolean v2, v9, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    if-eqz v35, :cond_16

    goto :goto_21

    :cond_16
    const/4 v2, 0x0

    :goto_21
    if-eqz v21, :cond_17

    add-int/lit8 v2, v2, 0x1

    .line 5095
    :cond_17
    invoke-virtual {v5, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_23

    :catchall_16
    move-exception v0

    move v3, v10

    goto/16 :goto_29

    :catchall_17
    move-exception v0

    :goto_22
    move-object/from16 v1, v22

    goto/16 :goto_2b

    :cond_18
    move/from16 v18, v2

    move-object/from16 v9, v20

    :goto_23
    if-nez v35, :cond_19

    .line 5098
    new-instance v2, Lorg/telegram/messenger/MediaController$AlbumEntry;

    sget v10, Lorg/telegram/messenger/R$string;->AllMedia:I

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1a

    move/from16 v19, v6

    const/4 v6, 0x0

    :try_start_21
    invoke-direct {v2, v6, v10, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_19

    .line 5099
    :try_start_22
    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_18

    goto :goto_25

    :catchall_18
    move-exception v0

    move-object/from16 v35, v2

    goto :goto_24

    :catchall_19
    move-exception v0

    :goto_24
    move v3, v6

    goto :goto_28

    :catchall_1a
    move-exception v0

    move-object/from16 v20, v9

    goto :goto_22

    :cond_19
    move/from16 v19, v6

    move-object/from16 v2, v35

    .line 5101
    :goto_25
    :try_start_23
    invoke-virtual {v9, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 5102
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 5104
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v6, :cond_1b

    .line 5106
    new-instance v6, Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {v6, v0, v3, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 5107
    invoke-virtual {v8, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v36, :cond_1a

    if-eqz v4, :cond_1a

    if-eqz v14, :cond_1a

    .line 5108
    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1c

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    .line 5109
    :try_start_24
    invoke-virtual {v5, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v36, v0

    goto :goto_26

    :cond_1a
    const/4 v3, 0x0

    .line 5112
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_1b
    const/4 v3, 0x0

    .line 5116
    :goto_26
    invoke-virtual {v6, v1}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1b

    move-object/from16 v35, v2

    move-object/from16 v20, v9

    move/from16 v0, v16

    move/from16 v3, v17

    move/from16 v2, v18

    move/from16 v6, v19

    move-object/from16 v1, v22

    move/from16 v9, v25

    move/from16 v10, v26

    goto/16 :goto_20

    :catchall_1b
    move-exception v0

    goto :goto_27

    :catchall_1c
    move-exception v0

    const/4 v3, 0x0

    :goto_27
    move-object/from16 v35, v2

    :goto_28
    move-object/from16 v20, v9

    goto :goto_29

    :catchall_1d
    move-exception v0

    const/4 v3, 0x0

    :goto_29
    move-object/from16 v1, v22

    goto :goto_2c

    :catchall_1e
    move-exception v0

    move-object/from16 v22, v1

    goto :goto_2b

    :cond_1c
    move-object/from16 v22, v1

    goto/16 :goto_1c

    :goto_2a
    if-eqz v1, :cond_1d

    .line 5125
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_4

    goto :goto_2e

    :catch_4
    move-exception v0

    move-object v1, v0

    goto :goto_2d

    :catchall_1f
    move-exception v0

    :goto_2b
    const/4 v3, 0x0

    .line 5121
    :goto_2c
    :try_start_26
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_20

    if-eqz v1, :cond_1d

    .line 5125
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_5

    goto :goto_2e

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 5127
    :goto_2d
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_2e
    move-object/from16 v22, v20

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move v14, v3

    .line 5131
    :goto_2f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_1e

    .line 5132
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda45;->INSTANCE:Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda45;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2f

    :cond_1e
    const/16 v23, 0x0

    move/from16 v16, p0

    move-object/from16 v17, v5

    move-object/from16 v18, v15

    .line 5141
    invoke-static/range {v16 .. v23}, Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void

    :catchall_20
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_1f

    .line 5125
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_6

    goto :goto_30

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 5127
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5130
    :cond_1f
    :goto_30
    throw v2

    :catchall_21
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_20

    .line 5037
    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_7

    goto :goto_31

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 5039
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5042
    :cond_20
    :goto_31
    throw v2
.end method

.method private synthetic lambda$loadMoreMusic$11(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 6

    .line 2405
    iget v0, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    if-ne v0, p1, :cond_7

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 2411
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 2413
    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 2414
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput v0, p1, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->nextSearchRate:I

    .line 2415
    invoke-static {p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 2416
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2417
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2418
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, p2

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_4

    .line 2421
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v3, p4, v4, p2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 2422
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 2423
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 2426
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2427
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2430
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->sortPlaylist()V

    .line 2431
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 2432
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget p4, p4, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->totalCount:I

    if-ne p3, p4, :cond_5

    move p3, v2

    goto :goto_2

    :cond_5
    move p3, p2

    :goto_2
    iput-boolean p3, p1, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->endReached:Z

    .line 2433
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz p1, :cond_6

    .line 2434
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    :cond_6
    if-eqz v1, :cond_7

    .line 2437
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p2

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$loadMoreMusic$12(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 2404
    new-instance v6, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda25;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/MediaController;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 650
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->hasRecordAudioFocus:Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    const v0, 0xbb80

    .line 1133
    :try_start_0
    iput v0, p0, Lorg/telegram/messenger/MediaController;->sampleRate:I

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 1134
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x500

    .line 1138
    :cond_0
    iput v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1141
    iget v1, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1142
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1143
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1146
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 4

    const/16 v0, 0x20

    .line 1151
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "playbackSpeed"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    .line 1152
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "musicPlaybackSpeed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    .line 1153
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fastPlaybackSpeed"

    const v3, 0x3fe66666    # 1.8f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->fastPlaybackSpeed:F

    .line 1154
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fastMusicPlaybackSpeed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->fastMusicPlaybackSpeed:F

    .line 1155
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xa

    .line 1156
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 1157
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 1158
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 1159
    :cond_0
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_1

    const-string v1, "gravity or linear sensor not found"

    .line 1160
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1162
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x0

    .line 1163
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 1164
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 1166
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    .line 1167
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "telegram:proximity_lock"

    .line 1168
    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1170
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1174
    :goto_0
    :try_start_1
    new-instance v1, Lorg/telegram/messenger/MediaController$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$4;-><init>(Lorg/telegram/messenger/MediaController;)V

    .line 1201
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    .line 1203
    invoke-virtual {v2, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1206
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1214
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1215
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1216
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1217
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1218
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1219
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1220
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1221
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAudioFocusChange$5(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1262
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1263
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 1265
    :cond_0
    iput v0, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 1266
    iput v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    .line 1268
    iput p1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 1269
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    if-eqz p1, :cond_4

    .line 1270
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    .line 1271
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1272
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    :cond_2
    const/4 v2, -0x3

    if-ne p1, v2, :cond_3

    .line 1276
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    if-ne p1, v2, :cond_4

    .line 1278
    iput v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 1279
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1280
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 1281
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    .line 1284
    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    return-void
.end method

.method private synthetic lambda$playEmojiSound$17(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x1

    .line 3120
    :try_start_0
    iget v1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayerNum:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayerNum:I

    .line 3121
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_0

    .line 3122
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 3124
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lorg/telegram/ui/Components/VideoPlayer;-><init>(ZZ)V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 3125
    new-instance v3, Lorg/telegram/messenger/MediaController$8;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MediaController$8;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 3170
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v2, "other"

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 3171
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    .line 3172
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3174
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3175
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_1

    .line 3176
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 p1, 0x0

    .line 3177
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$playEmojiSound$18(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    .line 3182
    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    return-void
.end method

.method private synthetic lambda$playEmojiSound$19(Lorg/telegram/messenger/MessagesController$EmojiSound;Lorg/telegram/messenger/AccountInstance;Z)V
    .locals 3

    .line 3107
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 3108
    iget-wide v1, p1, Lorg/telegram/messenger/MessagesController$EmojiSound;->accessHash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 3109
    iget-wide v1, p1, Lorg/telegram/messenger/MessagesController$EmojiSound;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-string/jumbo v1, "sound/ogg"

    .line 3110
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 3111
    iget-object p1, p1, Lorg/telegram/messenger/MessagesController$EmojiSound;->fileReference:[B

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 3112
    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentDatacenterId()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 3113
    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    .line 3114
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    return-void

    .line 3118
    :cond_0
    new-instance p2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/MediaController;Ljava/io/File;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3182
    :cond_1
    new-instance p1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2, v0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$playMessage$20()V
    .locals 1

    const/4 v0, 0x1

    .line 3418
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    return-void
.end method

.method private static synthetic lambda$playMessage$21(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V
    .locals 4

    .line 3432
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$playMessage$22(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V
    .locals 4

    .line 3535
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processMediaObserver$6(Ljava/util/ArrayList;)V
    .locals 3

    .line 1489
    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastChatAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->screenshotTook:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1490
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkScreenshots(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$saveFile$37([ZLandroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4514
    aput-boolean v0, p0, p1

    return-void
.end method

.method private static synthetic lambda$saveFile$38([ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    .line 4516
    aget-boolean p0, p0, v0

    if-nez p0, :cond_0

    .line 4517
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$saveFile$39(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 4584
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4586
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$saveFile$40(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 4606
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4608
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$saveFile$41(Lorg/telegram/messenger/Utilities$Callback;Landroid/net/Uri;)V
    .locals 0

    .line 4633
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$saveFile$42(Lorg/telegram/ui/ActionBar/AlertDialog;[Z)V
    .locals 1

    .line 4641
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4642
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 4644
    aput-boolean v0, p1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4647
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$saveFile$43(ILjava/io/File;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;[ZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;[Z)V
    .locals 21

    move/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    .line 4532
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v5, v6, :cond_0

    const/4 v2, 0x0

    .line 4533
    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/MediaController;->saveFileInternal(ILjava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_15

    goto/16 :goto_14

    :cond_0
    const/4 v5, 0x2

    const-string v6, "Telegram"

    if-nez v1, :cond_1

    .line 4538
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v2, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4539
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 4540
    new-instance v6, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    if-ne v1, v7, :cond_2

    .line 4542
    new-instance v2, Ljava/io/File;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v2, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4543
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 4544
    new-instance v6, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    if-ne v1, v5, :cond_3

    .line 4548
    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    goto :goto_0

    .line 4550
    :cond_3
    sget-object v9, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 4552
    :goto_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4553
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 4554
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4555
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x2e

    .line 4556
    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v11, v8

    :goto_1
    const/16 v12, 0xa

    if-ge v11, v12, :cond_6

    const/4 v6, -0x1

    const-string v12, ")"

    const-string v13, "("

    if-eq v9, v6, :cond_4

    .line 4560
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 4562
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4564
    :goto_2
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4565
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    move-object v6, v12

    goto :goto_3

    :cond_5
    add-int/lit8 v11, v11, 0x1

    move-object v6, v12

    goto :goto_1

    .line 4571
    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 4572
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 4574
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v11, 0x1f4

    sub-long/2addr v9, v11

    .line 4575
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 4576
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 4578
    :try_start_7
    const-class v0, Ljava/io/FileDescriptor;

    const-string v13, "getInt$"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v13, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4579
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    new-array v13, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4580
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(I)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v3, :cond_8

    .line 4582
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda41;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_8
    if-eqz v20, :cond_9

    .line 4614
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object/from16 p2, v6

    goto/16 :goto_b

    :cond_9
    :goto_4
    :try_start_9
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    return-void

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object/from16 p2, v6

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    .line 4593
    :try_start_b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_a
    const-wide/16 v16, 0x0

    move-object/from16 p2, v6

    move-wide/from16 v5, v16

    :goto_5
    cmp-long v0, v5, v14

    if-gez v0, :cond_e

    .line 4596
    :try_start_c
    aget-boolean v0, p4, v8

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    sub-long v7, v14, v5

    const-wide/16 v11, 0x1000

    .line 4599
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    move-object/from16 v13, v20

    move-wide v7, v14

    move-object/from16 v14, v19

    move-wide v15, v5

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    if-eqz v3, :cond_c

    .line 4601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x1f4

    sub-long/2addr v13, v15

    cmp-long v0, v9, v13

    if-gtz v0, :cond_d

    .line 4602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-float v0, v5

    long-to-float v13, v7

    div-float/2addr v0, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v0, v13

    float-to-int v0, v0

    .line 4604
    new-instance v13, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda42;

    invoke-direct {v13, v3, v0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_6

    :cond_c
    const-wide/16 v15, 0x1f4

    :cond_d
    :goto_6
    add-long/2addr v5, v11

    move-wide v11, v15

    move-wide v14, v7

    const/4 v8, 0x0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_8

    :cond_e
    :goto_7
    if-eqz v20, :cond_f

    .line 4614
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :cond_f
    :try_start_e
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object/from16 p2, v6

    :goto_8
    move-object v5, v0

    if-eqz v20, :cond_10

    .line 4575
    :try_start_10
    invoke-virtual/range {v20 .. v20}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v6, v0

    :try_start_11
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_9
    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object/from16 p2, v6

    :goto_a
    move-object v5, v0

    :goto_b
    if-eqz v19, :cond_11

    :try_start_12
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object v6, v0

    :try_start_13
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_c
    throw v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object/from16 p2, v6

    :goto_d
    move-object v5, v0

    :goto_e
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception v0

    move-object v2, v0

    :try_start_15
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v5
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    :catch_0
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    move-object/from16 p2, v6

    .line 4615
    :goto_10
    :try_start_16
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 4618
    :goto_11
    aget-boolean v0, p4, v2

    if-eqz v0, :cond_12

    .line 4619
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move v8, v2

    goto :goto_12

    :cond_12
    move v8, v7

    :goto_12
    if-eqz v8, :cond_14

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 4624
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/DownloadManager;

    .line 4625
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v15

    const/16 v17, 0x1

    move-object/from16 v13, p5

    invoke-virtual/range {v9 .. v17}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    goto :goto_13

    .line 4627
    :cond_13
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/io/File;)V

    .line 4630
    :cond_14
    :goto_13
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :cond_15
    move v7, v8

    :goto_14
    if-eqz v7, :cond_16

    if-eqz v4, :cond_16

    .line 4633
    new-instance v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda40;

    invoke-direct {v1, v4, v0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/messenger/Utilities$Callback;Landroid/net/Uri;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    goto :goto_15

    :catch_2
    move-exception v0

    .line 4636
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_16
    :goto_15
    if-eqz v3, :cond_17

    .line 4639
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda43;

    move-object/from16 v1, p7

    invoke-direct {v0, v3, v1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;[Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$setCurrentVideoVisible$14()V
    .locals 1

    const/4 v0, 0x1

    .line 2800
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    return-void
.end method

.method private synthetic lambda$setPlaybackSpeed$16(Lorg/telegram/messenger/MessageObject;F)V
    .locals 1

    .line 2880
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_1

    .line 2881
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2882
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 2884
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setTextureView$15()V
    .locals 1

    const/4 v0, 0x1

    .line 2835
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    return-void
.end method

.method private static synthetic lambda$sortPlaylist$13(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I
    .locals 6

    .line 2515
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    .line 2516
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    .line 2517
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    .line 2518
    iget-object p0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    const-wide/16 v4, 0x0

    if-gez v0, :cond_1

    if-gez v1, :cond_1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    .line 2521
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    :goto_0
    neg-int p0, p0

    return p0

    .line 2523
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_1
    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    .line 2526
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_0

    .line 2528
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$startAudioAgain$7(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 2051
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method

.method private synthetic lambda$startRaiseToEarSensors$8()V
    .locals 3

    .line 2091
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    const/16 v1, 0x7530

    if-eqz v0, :cond_0

    .line 2092
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2094
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 2095
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2097
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 2098
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2100
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private synthetic lambda$startRecording$26(II)V
    .locals 3

    const/4 v0, 0x0

    .line 3944
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 3945
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startRecording$27(II)V
    .locals 3

    const/4 v0, 0x0

    .line 3981
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 3982
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startRecording$28(II)V
    .locals 3

    const/4 v0, 0x0

    .line 4020
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 4021
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->recordStartError:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startRecording$29(II)V
    .locals 3

    const/4 v0, 0x0

    .line 4028
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 4029
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->recordStarted:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startRecording$30(IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 8

    .line 3942
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 3943
    new-instance p3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda20;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/MediaController;II)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3950
    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->setBluetoothScoOn(Z)V

    const/4 v1, 0x0

    .line 3953
    iput v1, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    .line 3954
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3955
    iput p2, p0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    new-array v3, v1, [B

    .line 3956
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    const/high16 v3, -0x80000000

    .line 3957
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 3958
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 3959
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->user_id:J

    .line 3960
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    const-string v3, "audio/ogg"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    new-array v3, v1, [B

    .line 3961
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 3962
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 3964
    new-instance v2, Lorg/telegram/messenger/MediaController$13;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lorg/telegram/messenger/MediaController$13;-><init>(Lorg/telegram/messenger/MediaController;Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    const/4 v0, 0x4

    .line 3973
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3974
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 3975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start recording internal "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3977
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/AutoDeleteMediaTask;->lockFile(Ljava/io/File;)V

    .line 3979
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/telegram/messenger/MediaController;->sampleRate:I

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/MediaController;->startRecord(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 3980
    new-instance p3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/MediaController;II)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3984
    sget-boolean p3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p3, :cond_2

    const-string p3, "cant init encoder"

    .line 3985
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 3990
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->audioRecorderPaused:Z

    .line 3991
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/messenger/MediaController;->sampleRate:I

    const/16 v5, 0x10

    const/4 v6, 0x2

    iget v7, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    .line 3992
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    const-wide/16 v2, 0x0

    .line 3993
    iput-wide v2, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    .line 3994
    iput v1, p0, Lorg/telegram/messenger/MediaController;->writedFrame:I

    .line 3995
    iput-wide v2, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    .line 3996
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    .line 3997
    iput p1, p0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    .line 3998
    iput-object p5, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMsg:Lorg/telegram/messenger/MessageObject;

    .line 3999
    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->recordReplyingTopMsg:Lorg/telegram/messenger/MessageObject;

    .line 4000
    iput-object p7, p0, Lorg/telegram/messenger/MediaController;->recordReplyingStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 4001
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4003
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p3}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4026
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4027
    new-instance p3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda23;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/MediaController;II)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception p3

    .line 4005
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p3, 0x0

    .line 4006
    iput-object p3, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 4007
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopRecord()V

    .line 4008
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-static {p4}, Lorg/telegram/messenger/AutoDeleteMediaTask;->unlockFile(Ljava/io/File;)V

    .line 4009
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 4010
    iput-object p3, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 4012
    :try_start_1
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p4}, Landroid/media/AudioRecord;->release()V

    .line 4013
    iput-object p3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p3

    .line 4015
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4017
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/messenger/MediaController;->setBluetoothScoOn(Z)V

    .line 4019
    new-instance p3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda21;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/MediaController;II)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$stopRaiseToEarSensors$9()V
    .locals 2

    .line 2124
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 2125
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 2127
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 2128
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 2130
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 2131
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 2133
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method private synthetic lambda$stopRecording$35(I)V
    .locals 6

    .line 4186
    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordStopped:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    move v5, v4

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$stopRecording$36(IZIZLjava/lang/String;)V
    .locals 8

    .line 4149
    iget v0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4150
    iput v2, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    .line 4151
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(IZIZLjava/lang/String;)V

    return-void

    .line 4154
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 4155
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 4156
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->manualRecording:Z

    .line 4157
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 4158
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    return-void

    .line 4162
    :cond_1
    :try_start_0
    iput p1, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    .line 4163
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneNotify:Z

    .line 4164
    iput p3, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneScheduleDate:I

    .line 4165
    iput-boolean p4, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneOnce:Z

    .line 4166
    iput-object p5, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneTemplateName:Ljava/lang/String;

    .line 4167
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 4168
    invoke-direct {p0, v2}, Lorg/telegram/messenger/MediaController;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4170
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4171
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    if-eqz p2, :cond_3

    .line 4172
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_2

    const-string p2, "delete voice file"

    .line 4173
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4175
    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 4179
    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(IZIZLjava/lang/String;)V

    .line 4182
    :cond_4
    :try_start_1
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->feedbackView:Landroid/view/View;

    const/4 p3, 0x2

    invoke-virtual {p2, v1, p3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4186
    :catch_1
    new-instance p2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$stopRecordingInternal$33(Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;IZIZLjava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move/from16 v13, p3

    .line 4087
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    const-string v2, " writedFrames"

    if-eqz v1, :cond_0

    .line 4088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop recording internal "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  recordTimeCount "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/telegram/messenger/MediaController;->writedFrame:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4090
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4091
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_1

    .line 4092
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file not found :( recordTimeCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/telegram/messenger/MediaController;->writedFrame:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4094
    :cond_1
    iget v1, v0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 4095
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-long v1, v1

    iput-wide v1, v14, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 4096
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/4 v12, 0x1

    .line 4097
    iput-boolean v12, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 4098
    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    array-length v3, v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MediaController;->getWaveform2([SI)[B

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    if-eqz v2, :cond_2

    .line 4100
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 4102
    :cond_2
    iget-wide v2, v0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    long-to-double v4, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 4103
    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 4104
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4105
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x2bc

    cmp-long v1, v2, v4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    if-lez v1, :cond_7

    if-ne v13, v12, :cond_4

    const/4 v2, 0x0

    .line 4108
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->recordReplyingMsg:Lorg/telegram/messenger/MessageObject;

    iget-object v7, v0, Lorg/telegram/messenger/MediaController;->recordReplyingTopMsg:Lorg/telegram/messenger/MessageObject;

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-eqz p6, :cond_3

    const v1, 0x7fffffff

    move/from16 v21, v1

    goto :goto_0

    :cond_3
    move/from16 v21, v9

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p2

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v19, v12

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, v21

    move-object/from16 v18, p7

    invoke-static/range {v1 .. v18}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 4109
    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->recordReplyingStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 4110
    iget v2, v0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_1

    :cond_4
    move/from16 v19, v12

    .line 4112
    :goto_1
    iget v1, v0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, v0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    move/from16 v6, p3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move-object/from16 v8, p2

    goto :goto_2

    :cond_5
    move-object v8, v4

    :goto_2
    aput-object v8, v3, v19

    if-ne v6, v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :cond_6
    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    move v5, v9

    move v7, v10

    move v4, v11

    move/from16 v19, v12

    .line 4114
    iget v1, v0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v6, Lorg/telegram/messenger/NotificationCenter;->audioRecordTooShort:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v8, v0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v4, v19

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {v1, v6, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4115
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AutoDeleteMediaTask;->unlockFile(Ljava/io/File;)V

    .line 4116
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 4118
    :goto_3
    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    return-void
.end method

.method private synthetic lambda$stopRecordingInternal$34(Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;IZIZLjava/lang/String;)V
    .locals 10

    .line 4082
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopRecord()V

    .line 4083
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stop recording internal in queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4086
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda29;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/MediaController;Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;IZIZLjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$toggleRecordingPause$23(Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;)V
    .locals 6

    .line 3894
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3895
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 3896
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file not found :( recordTimeCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " writedFrames"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/messenger/MediaController;->writedFrame:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3898
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 3899
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 3900
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/4 v1, 0x1

    .line 3901
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 3902
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    array-length v3, v2

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/MediaController;->getWaveform2([SI)[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    if-eqz v2, :cond_1

    .line 3904
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 3906
    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    .line 3907
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3908
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3909
    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recordPaused:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3910
    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p2, v4, v1

    const/4 p2, 0x2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, p2

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$toggleRecordingPause$24()V
    .locals 3

    .line 3921
    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordResumed:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$toggleRecordingPause$25()V
    .locals 8

    .line 3880
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3883
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorderPaused:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorderPaused:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 3886
    iput v0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    .line 3887
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 3888
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 3889
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    .line 3891
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3892
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 3893
    new-instance v2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0, v1, v0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/MediaController;Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3913
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 3914
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/messenger/MediaController;->sampleRate:I

    const/16 v5, 0x10

    const/4 v6, 0x2

    iget v7, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    .line 3915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    .line 3916
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3917
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 3918
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3920
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static loadGalleryPhotosAlbums(I)V
    .locals 2

    .line 4935
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 5143
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 5144
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static makeVideoBitrate(IIIII)I
    .locals 5

    .line 5563
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x438

    if-lt v0, v2, :cond_0

    const v0, 0x67c280

    :goto_0
    move v2, v1

    goto :goto_1

    .line 5567
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x2d0

    if-lt v0, v2, :cond_1

    const v0, 0x27ac40

    goto :goto_0

    .line 5571
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x1e0

    if-lt v0, v1, :cond_2

    const v0, 0xf4240

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f666666    # 0.9f

    goto :goto_1

    :cond_2
    const v0, 0xb71b0

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f333333    # 0.7f

    :goto_1
    int-to-float v3, p2

    int-to-float p0, p0

    int-to-float v4, p3

    div-float/2addr p0, v4

    int-to-float p1, p1

    int-to-float v4, p4

    div-float/2addr p1, v4

    .line 5580
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    div-float/2addr v3, p0

    float-to-int p0, v3

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 5582
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->getVideoBitrateWithFactor(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x49610000    # 921600.0f

    mul-int/2addr p4, p3

    int-to-float p3, p4

    div-float/2addr v1, p3

    div-float/2addr p1, v1

    float-to-int p1, p1

    if-ge p2, p1, :cond_3

    return p0

    :cond_3
    if-le p0, v0, :cond_4

    return v0

    .line 5589
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private playNextMessageWithoutOrder(Z)V
    .locals 7

    .line 2561
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 2563
    sget v5, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-eq v5, v2, :cond_1

    if-ne v5, v4, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_2

    :cond_1
    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v5, :cond_2

    .line 2564
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2565
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 2566
    iput v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2567
    iput v3, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2568
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 2572
    :cond_2
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_1
    invoke-direct {p0, v0, v5}, Lorg/telegram/messenger/MediaController;->traversePlaylist(Ljava/util/ArrayList;I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz p1, :cond_7

    .line 2573
    sget p1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez p1, :cond_7

    .line 2574
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez p1, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_6

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 2577
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2579
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2581
    :goto_2
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2582
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->unrefAudioVisualizeDrawable(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_4

    .line 2584
    :cond_5
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2585
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 2586
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 2587
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 2588
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 2589
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2591
    :try_start_1
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2593
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2595
    :goto_3
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2596
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 2598
    :goto_4
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    const-wide/16 v5, 0x0

    .line 2599
    iput-wide v5, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 2600
    iput-boolean v4, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2601
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2602
    iput v3, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2603
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2604
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    return-void

    .line 2608
    :cond_7
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz p1, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_8

    goto :goto_5

    .line 2611
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_9

    .line 2612
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 2614
    :cond_9
    iput-boolean v4, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2615
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_a
    :goto_5
    return-void
.end method

.method private processMediaObserver(Landroid/net/Uri;)V
    .locals 13

    const/4 v0, 0x0

    .line 1451
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v1

    .line 1453
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date_added DESC LIMIT 1"

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1454
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    .line 1456
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 1458
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1459
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 1460
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 1461
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x4

    .line 1462
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    .line 1463
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x6

    .line 1464
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v11, "screenshot"

    if-eqz v2, :cond_1

    .line 1465
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_1
    if-eqz v4, :cond_2

    .line 1466
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    if-eqz v5, :cond_3

    .line 1467
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-eqz v8, :cond_0

    .line 1468
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    :cond_4
    if-eqz v9, :cond_5

    if-nez v10, :cond_6

    .line 1471
    :cond_5
    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1472
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1473
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1474
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1475
    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_6
    if-lez v9, :cond_8

    if-lez v10, :cond_8

    .line 1477
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-ne v9, v2, :cond_7

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-eq v10, v3, :cond_8

    :cond_7
    if-ne v10, v2, :cond_0

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-ne v9, v2, :cond_0

    .line 1478
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1481
    :catch_0
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1485
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1487
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1488
    new-instance v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    if-eqz v0, :cond_c

    .line 1498
    :goto_1
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 1494
    :try_start_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_c

    goto :goto_1

    :catch_2
    :cond_c
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_d

    .line 1498
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1503
    :catch_3
    :cond_d
    throw p1
.end method

.method private raiseToSpeakUpdated(Z)V
    .locals 9

    .line 1992
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_0

    .line 1993
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->toggleRecordingPause()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1995
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v7

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MediaController;->startRecording(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;IZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1997
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private resumeAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 6

    .line 3785
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_6

    :cond_0
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3790
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 3791
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 3792
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3793
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3795
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3796
    iget v4, p0, Lorg/telegram/messenger/MediaController;->audioVolume:F

    aput v4, v0, v1

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    .line 3797
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioVolumeUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3798
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3799
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3801
    :cond_3
    iput v2, p0, Lorg/telegram/messenger/MediaController;->audioVolume:F

    .line 3802
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 3804
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_4

    .line 3805
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_1

    .line 3806
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_5

    .line 3807
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 3809
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 3810
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 3811
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 3813
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return v1
.end method

.method public static saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4478
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 4482
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Z)V

    return-void
.end method

.method public static saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 4491
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 4492
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4493
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v6, v3

    :goto_1
    if-nez v6, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    new-array v9, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v9, v2

    .line 4504
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    new-array v12, v0, [Z

    if-eqz p2, :cond_4

    .line 4510
    :try_start_0
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v5, 0x2

    invoke-direct {v4, p1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string v1, "Loading"

    .line 4511
    sget v5, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4512
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4513
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4514
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda1;

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda1;-><init>([Z)V

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4515
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda44;

    invoke-direct {v0, v12, v4}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda44;-><init>([ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v4

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4522
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    move-object v8, v3

    .line 4528
    :goto_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda5;

    move-object v4, v1

    move v5, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v12}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda5;-><init>(ILjava/io/File;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;[ZLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;[Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4651
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    :goto_3
    return-void
.end method

.method private static saveFileInternal(ILjava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11

    const/4 v0, 0x0

    .line 4658
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4659
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4662
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v5, :cond_3

    :cond_1
    if-eqz v3, :cond_3

    const-string v6, "image"

    .line 4666
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move p0, v4

    :cond_2
    const-string/jumbo v6, "video"

    .line 4669
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    move p0, v5

    :cond_3
    const-string/jumbo v6, "mime_type"

    const-string v7, "_display_name"

    const-string/jumbo v8, "relative_path"

    const-string v9, "Telegram"

    const-string v10, "external_primary"

    if-nez p0, :cond_5

    if-nez p2, :cond_4

    .line 4675
    :try_start_1
    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4677
    :cond_4
    invoke-static {v10}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4678
    new-instance v2, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-direct {v2, v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4680
    invoke-virtual {v1, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4681
    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    if-ne p0, v5, :cond_7

    if-nez p2, :cond_6

    .line 4684
    invoke-static {v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4686
    :cond_6
    new-instance p0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-direct {p0, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v8, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4688
    invoke-static {v10}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4689
    invoke-virtual {v1, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x2

    if-ne p0, v2, :cond_9

    if-nez p2, :cond_8

    .line 4692
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 4694
    :cond_8
    new-instance p0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {p0, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v8, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4696
    invoke-static {v10}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4697
    invoke-virtual {v1, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    if-nez p2, :cond_a

    .line 4700
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 4702
    :cond_a
    new-instance p0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-direct {p0, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v8, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4704
    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4705
    invoke-virtual {v1, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4708
    :goto_1
    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4710
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 4712
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4713
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    .line 4714
    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 4715
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    return-object p0

    :catch_0
    move-exception p0

    .line 4719
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static saveFilesFromMessages(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/AccountInstance;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessagesStorage$IntCallback;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 4471
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4474
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$MediaLoader;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController$MediaLoader;-><init>(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController$MediaLoader;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9

    .line 5243
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_5

    .line 5246
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 5247
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 5250
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 5251
    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 5252
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 5254
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v8, "OMX.SEC.avc.enc"

    .line 5256
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    return-object v4

    :cond_1
    const-string v8, "OMX.SEC.AVC.Encoder"

    .line 5258
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v4

    :cond_2
    move-object v2, v4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 4

    .line 5283
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 5285
    :goto_0
    iget-object v2, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 5286
    aget v2, v2, v0

    .line 5287
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->isRecognizedFormat(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5289
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x13

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_2

    :cond_1
    :goto_1
    return v2

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private setBluetoothScoOn(Z)V
    .locals 3

    .line 3208
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3209
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_5

    .line 3210
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 3212
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    if-nez p1, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    .line 3213
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3214
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 3215
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3216
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3221
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method private setPlayerVolume()V
    .locals 3

    .line 1291
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isSilent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1293
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    .line 1298
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_2

    .line 1299
    iget v2, p0, Lorg/telegram/messenger/MediaController;->audioVolume:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    goto :goto_1

    .line 1300
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_3

    .line 1301
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1304
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setUseFrontSpeaker(Z)V
    .locals 1

    .line 2002
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 2003
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2005
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 2006
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2008
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :goto_0
    return-void
.end method

.method private sortPlaylist()V
    .locals 2

    .line 2514
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda46;->INSTANCE:Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda46;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private startAudioAgain(Z)V
    .locals 7

    .line 2022
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 2026
    :cond_0
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2027
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_4

    .line 2028
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    :goto_0
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    if-nez p1, :cond_3

    .line 2030
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 2031
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 2033
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_4

    .line 2035
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_4

    .line 2038
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v5

    .line 2039
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2040
    iget v4, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2041
    iget v6, v3, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    .line 2042
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    int-to-float v0, v6

    mul-float/2addr v0, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v6

    if-lez v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 2045
    iput v0, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    goto :goto_3

    .line 2043
    :cond_7
    :goto_2
    iput v4, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2047
    :goto_3
    invoke-virtual {p0, v5, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2048
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    if-eqz p1, :cond_9

    if-eqz v1, :cond_8

    .line 2051
    new-instance p1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;

    invoke-direct {p1, p0, v3}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 2053
    :cond_8
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_9
    :goto_4
    return-void
.end method

.method private startProgressTimer(Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    .line 1313
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1314
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1316
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 1317
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1319
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1322
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    .line 1323
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 1324
    new-instance v2, Lorg/telegram/messenger/MediaController$5;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MediaController$5;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x11

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1377
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private native startRecord(Ljava/lang/String;I)I
.end method

.method private startVideoConvertFromQueue()Z
    .locals 4

    .line 5227
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5228
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    .line 5229
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 5230
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v2, :cond_0

    .line 5232
    :try_start_0
    iput-boolean v1, v2, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    .line 5234
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5235
    invoke-static {v0}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MediaController$VideoConvertMessage;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 5234
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return v1
.end method

.method private stopProgressTimer()V
    .locals 2

    .line 1381
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1382
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1384
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 1385
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1387
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1390
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private native stopRecord()V
.end method

.method private stopRecordingInternal(IZIZLjava/lang/String;)V
    .locals 13

    move-object v10, p0

    const/4 v11, 0x0

    if-eqz p1, :cond_1

    .line 4076
    iget-object v4, v10, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 4077
    iget-object v3, v10, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 4078
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stop recording internal filename "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4081
    :cond_0
    iget-object v0, v10, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v12, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda30;

    move-object v1, v12

    move-object v2, p0

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/MediaController;Ljava/io/File;Lorg/telegram/tgnet/TLRPC$TL_document;IZIZLjava/lang/String;)V

    invoke-virtual {v0, v12}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4122
    :cond_1
    iget-object v0, v10, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/AutoDeleteMediaTask;->unlockFile(Ljava/io/File;)V

    .line 4123
    iget-object v0, v10, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 4124
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4126
    :cond_2
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    :goto_0
    const/4 v1, 0x0

    .line 4129
    :try_start_0
    iget-object v0, v10, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    .line 4130
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 4131
    iput-object v1, v10, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4134
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4136
    :cond_3
    :goto_1
    iput-object v1, v10, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 4137
    iput-object v1, v10, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 4138
    iput-boolean v11, v10, Lorg/telegram/messenger/MediaController;->manualRecording:Z

    .line 4139
    iput-boolean v11, v10, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 4140
    iput-boolean v11, v10, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    return-void
.end method

.method private traversePlaylist(Ljava/util/ArrayList;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;I)Z"
        }
    .end annotation

    .line 2639
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2640
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2642
    :goto_0
    iget v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/2addr v4, p2

    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-eqz v1, :cond_2

    .line 2644
    :goto_1
    iget v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v4, :cond_2

    .line 2645
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_1

    .line 2646
    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-eqz v4, :cond_1

    goto :goto_2

    .line 2649
    :cond_1
    iget v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/2addr v4, p2

    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto :goto_1

    .line 2652
    :cond_2
    :goto_2
    iget v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-gez v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    goto :goto_9

    .line 2653
    :cond_4
    :goto_3
    iget v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_4
    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-eqz v1, :cond_b

    .line 2655
    :goto_5
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-lez p2, :cond_6

    if-gt v1, v0, :cond_8

    goto :goto_6

    :cond_6
    if-lt v1, v0, :cond_8

    .line 2656
    :goto_6
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_7

    .line 2657
    iget-boolean v1, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-eqz v1, :cond_7

    goto :goto_7

    .line 2660
    :cond_7
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto :goto_5

    .line 2662
    :cond_8
    :goto_7
    iget p2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_9

    iget p2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-gez p2, :cond_b

    .line 2663
    :cond_9
    iget p2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    :goto_8
    iput v3, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    :cond_b
    :goto_9
    return v2
.end method

.method private updateVideoState(Lorg/telegram/messenger/MessageObject;[IZZI)V
    .locals 4

    .line 2919
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x80

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p5, v1, :cond_1

    if-eq p5, v2, :cond_1

    .line 2924
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2926
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2930
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2932
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x3

    const/4 v3, 0x0

    if-ne p5, v0, :cond_4

    .line 2936
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playerWasReady:Z

    .line 2937
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2938
    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2939
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 2941
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    if-ne p5, p1, :cond_7

    if-eqz p4, :cond_a

    .line 2943
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2944
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->playerWasReady:Z

    if-eqz p1, :cond_6

    .line 2945
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 2947
    :cond_6
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 2950
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_a

    if-ne p5, v1, :cond_a

    .line 2951
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_9

    if-nez p3, :cond_9

    if-eqz p2, :cond_8

    aget p1, p2, v3

    if-ge p1, v1, :cond_9

    .line 2952
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    if-eqz p2, :cond_a

    .line 2954
    aget p1, p2, v3

    add-int/2addr p1, v2

    aput p1, p2, v3

    goto :goto_1

    .line 2957
    :cond_9
    invoke-virtual {p0, v2, v2, v2, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZZ)V

    :cond_a
    :goto_1
    return-void
.end method

.method private native writeFrame(Ljava/nio/ByteBuffer;I)I
.end method


# virtual methods
.method public cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 5194
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 5195
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5196
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    .line 5197
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 5198
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessageObject;->equals(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iget v3, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    if-ne v2, v3, :cond_1

    const/4 p1, 0x1

    if-nez v0, :cond_0

    .line 5200
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v2

    .line 5201
    :try_start_0
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-boolean p1, v0, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    .line 5202
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5204
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    .line 5205
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->foregroundConvertingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5206
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkForegroundConvertMessage(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected checkIsNextMediaFileDownloaded()V
    .locals 1

    .line 2672
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2675
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->checkIsNextMusicFileDownloaded(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkVolumeBarUI()V
    .locals 6

    .line 3189
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isSilent:Z

    if-eqz v0, :cond_0

    return-void

    .line 3193
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3194
    sget-wide v2, Lorg/telegram/messenger/MediaController;->volumeBarLastTimeShown:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-void

    .line 3197
    :cond_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 3198
    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    .line 3199
    :goto_0
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v5, 0x1

    .line 3201
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 3202
    sput-wide v0, Lorg/telegram/messenger/MediaController;->volumeBarLastTimeShown:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public cleanup()V
    .locals 3

    const/4 v0, 0x1

    .line 1394
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    const/4 v0, 0x0

    .line 1395
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    const/4 v1, 0x0

    .line 1396
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1398
    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->cleanup()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1400
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1401
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1402
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 1403
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    .line 1404
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    .line 1405
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public cleanupPlayer(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2141
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZZ)V

    return-void
.end method

.method public cleanupPlayer(ZZZZ)V
    .locals 10

    .line 2145
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 2146
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_0

    .line 2147
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 2148
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2151
    :cond_0
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p4

    if-nez p4, :cond_1

    .line 2152
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-array v0, v3, [F

    .line 2153
    iget v7, p0, Lorg/telegram/messenger/MediaController;->audioVolume:F

    aput v7, v0, v6

    const/4 v7, 0x0

    aput v7, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2154
    new-instance v7, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p4}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/VideoPlayer;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2163
    new-instance v7, Lorg/telegram/messenger/MediaController$6;

    invoke-direct {v7, p0, p4}, Lorg/telegram/messenger/MediaController$6;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/VideoPlayer;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v7, 0x12c

    .line 2173
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2174
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 2177
    :cond_1
    :try_start_0
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p4, v4}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 2179
    invoke-static {p4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2182
    :goto_0
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2183
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->unrefAudioVisualizeDrawable(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_3

    .line 2184
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_5

    .line 2185
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2186
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 2187
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 2188
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    .line 2189
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 2190
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->goingToShowMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_3

    .line 2192
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/PhotoViewer;->injectVideoPlayer(Lorg/telegram/ui/Components/VideoPlayer;)V

    .line 2193
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->goingToShowMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2194
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v7, Lorg/telegram/messenger/NotificationCenter;->messagePlayingGoingToStop:I

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v9, v8, v4

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 2196
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v7

    .line 2197
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    cmp-long v0, v7, v1

    if-lez v0, :cond_4

    .line 2198
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    long-to-int v7, v7

    iput v7, v0, Lorg/telegram/messenger/MessageObject;->audioProgressMs:I

    .line 2199
    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v7, Lorg/telegram/messenger/NotificationCenter;->messagePlayingGoingToStop:I

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v9, v8, v4

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2201
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 2202
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2205
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v7, 0x80

    invoke-virtual {v0, v7}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 2207
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2209
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_5

    if-nez p4, :cond_5

    .line 2210
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2211
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p4, p4, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {p4, v0, v4, v6}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 2214
    :cond_5
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2215
    iput-wide v1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 2216
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2218
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_f

    .line 2219
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_6

    .line 2220
    iget p4, p4, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 2222
    :cond_6
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_7

    .line 2224
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 2225
    iget v0, p4, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2227
    :cond_7
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2228
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz p1, :cond_e

    .line 2230
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2231
    iput v6, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    const/4 p1, -0x1

    .line 2233
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    if-eqz p3, :cond_8

    .line 2234
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    .line 2235
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2236
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2237
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2238
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 2239
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    goto :goto_4

    .line 2242
    :cond_8
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 2243
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    .line 2246
    :cond_9
    :goto_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 2247
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 2248
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 2250
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz p1, :cond_a

    .line 2251
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 2252
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    :cond_a
    move p1, v4

    goto :goto_5

    .line 2255
    :cond_b
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-eqz p1, :cond_d

    .line 2256
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->startRecordingIfFromSpeaker()V

    .line 2258
    :cond_d
    iget p1, p4, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v1, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, v1, v4

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2259
    iput v6, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2260
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz p1, :cond_e

    .line 2261
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 2262
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    :cond_e
    move p1, v6

    :goto_5
    if-eqz p2, :cond_10

    .line 2267
    new-instance p2, Landroid/content/Intent;

    sget-object p4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v0, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {p2, p4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2268
    sget-object p4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p4, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_6

    :cond_f
    move p1, v6

    :cond_10
    :goto_6
    if-nez p1, :cond_11

    if-eqz p3, :cond_11

    .line 2271
    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->enabledRaiseTo(Z)Z

    move-result p1

    if-nez p1, :cond_11

    .line 2272
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 2273
    invoke-virtual {p0, p1, v6, v6}, Lorg/telegram/messenger/MediaController;->stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;ZZ)V

    .line 2274
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    :cond_11
    return-void
.end method

.method public currentPlaylistIsGlobalSearch()Z
    .locals 1

    .line 5656
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 1547
    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_19

    sget v0, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_7

    .line 1565
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v0, 0x2

    if-ne p1, p2, :cond_4

    .line 1566
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1570
    :cond_1
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1571
    aget-object p3, p3, v2

    check-cast p3, Ljava/util/ArrayList;

    .line 1572
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    .line 1573
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_2

    .line 1574
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1575
    invoke-virtual {p0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1579
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1580
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1581
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1b

    .line 1582
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_1b

    .line 1583
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1584
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 1585
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p2, :cond_3

    .line 1587
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1592
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    if-ne p1, p2, :cond_5

    .line 1593
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1594
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    cmp-long p1, v3, p1

    if-nez p1, :cond_1b

    .line 1595
    invoke-virtual {p0, v2, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto/16 :goto_8

    .line 1597
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    if-ne p1, p2, :cond_9

    .line 1598
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1599
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    cmp-long p1, v3, p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean p1, p1, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez p1, :cond_1b

    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->isFromMusicPlaylist:Z

    if-nez p1, :cond_1b

    .line 1600
    aget-object p1, p3, v1

    check-cast p1, Ljava/util/ArrayList;

    .line 1601
    aget-object p2, p3, v0

    check-cast p2, Ljava/util/ArrayList;

    .line 1602
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p3, v2, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1603
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1604
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v2

    :goto_1
    if-ge p2, p1, :cond_6

    .line 1605
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject;

    .line 1606
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistMaxId:[I

    aget v1, v0, v2

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    aput p3, v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1609
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->sortPlaylist()V

    .line 1610
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz p1, :cond_7

    .line 1611
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    goto :goto_2

    .line 1612
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_8

    .line 1613
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    .line 1615
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 1618
    :cond_8
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    goto/16 :goto_8

    .line 1620
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    if-ne p1, p2, :cond_11

    const/4 p1, 0x3

    .line 1621
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1622
    iget p2, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    if-ne p1, p2, :cond_1b

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_1b

    .line 1623
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v3, 0x4

    .line 1624
    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1626
    aget-object v0, p3, v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1627
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    .line 1628
    iget-wide v3, p0, Lorg/telegram/messenger/MediaController;->playlistMergeDialogId:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_a

    move p1, v1

    goto :goto_3

    :cond_a
    move p1, v2

    .line 1629
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 1630
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playlistEndReached:[Z

    const/4 v3, 0x5

    aget-object p3, p3, v3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    aput-boolean p3, p2, p1

    :cond_b
    move p2, v2

    move p3, p2

    .line 1633
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_e

    .line 1634
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1635
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_5

    .line 1636
    :cond_c
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 p3, p3, 0x1

    .line 1640
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1641
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlistMaxId:[I

    aget v5, v4, p1

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v4, p1

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 1644
    :cond_e
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->sortPlaylist()V

    .line 1645
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    .line 1647
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 1649
    :cond_f
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 1650
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz p1, :cond_10

    .line 1651
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    :cond_10
    if-eqz p3, :cond_1b

    .line 1654
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1657
    :cond_11
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    if-ne p1, p2, :cond_16

    .line 1658
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    .line 1662
    :cond_12
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 1663
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1664
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1665
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-nez p1, :cond_1b

    .line 1666
    aget-object p1, p3, v1

    check-cast p1, Ljava/util/ArrayList;

    .line 1667
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_1b

    .line 1668
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 1669
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p3

    if-nez p3, :cond_13

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p3

    if-eqz p3, :cond_15

    :cond_13
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z

    move-result p3

    if-nez p3, :cond_15

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z

    move-result p3

    if-nez p3, :cond_15

    iget-boolean p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    if-eqz p3, :cond_14

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result p3

    if-eqz p3, :cond_15

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result p3

    if-nez p3, :cond_15

    .line 1670
    :cond_14
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p3, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1676
    :cond_16
    sget p2, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    if-ne p1, p2, :cond_1b

    .line 1677
    aget-object p1, p3, v2

    check-cast p1, Lorg/telegram/ui/Components/VideoPlayer;

    .line 1678
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->isCurrentPlayer(Lorg/telegram/ui/Components/VideoPlayer;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 1679
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 1680
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p2

    if-nez p2, :cond_18

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1681
    :cond_17
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->wasPlayingAudioBeforePause:Z

    .line 1683
    :cond_18
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_8

    .line 1548
    :cond_19
    :goto_7
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 1549
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p3, :cond_1b

    iget v0, p3, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    if-ne v0, p2, :cond_1b

    .line 1550
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p2

    .line 1551
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1552
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz p1, :cond_1a

    .line 1553
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 1554
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_8

    .line 1555
    :cond_1a
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    if-nez p1, :cond_1b

    .line 1557
    :try_start_0
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    .line 1558
    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 1560
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_8
    return-void
.end method

.method public exportAnimatedSticker(ILorg/telegram/tgnet/TLRPC$Document;JLjava/lang/String;)V
    .locals 3

    .line 140
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-wide/16 v1, 0x1

    .line 141
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 142
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 143
    new-instance p5, Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    invoke-direct {p5, v1, v0, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 144
    iput p1, p5, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    .line 146
    new-instance p1, Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    new-instance v0, Lcom/iMe/fork/utils/AnimatedStickerEditedInfo;

    invoke-direct {v0, p2, p3, p4}, Lcom/iMe/fork/utils/AnimatedStickerEditedInfo;-><init>(Lorg/telegram/tgnet/TLRPC$Document;J)V

    invoke-direct {p1, p5, v0, v1}, Lorg/telegram/messenger/MediaController$VideoConvertMessage;-><init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;Z)V

    .line 147
    invoke-static {p1}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MediaController$VideoConvertMessage;)V

    return-void
.end method

.method public findMessageInPlaylistAndPlay(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    .line 2538
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2540
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1

    .line 2542
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessageAtIndex(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public generateWaveform(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 4035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4036
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 4037
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4040
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4041
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda31;

    invoke-direct {v3, p0, v1, v0, p1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;
    .locals 1

    .line 3707
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    return-object v0
.end method

.method public getCurrentForegroundConverMessage()Lorg/telegram/messenger/MediaController$VideoConvertMessage;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentForegroundConvertingVideo:Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 2318
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2321
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFastPlaybackSpeed(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 2915
    iget p1, p0, Lorg/telegram/messenger/MediaController;->fastMusicPlaybackSpeed:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/messenger/MediaController;->fastPlaybackSpeed:F

    :goto_0
    return p1
.end method

.method public getPlaybackSpeed(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 2911
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    :goto_0
    return p1
.end method

.method public getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 2325
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPlayingMessageObjectNum()I
    .locals 1

    .line 2329
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    return v0
.end method

.method public getPlaylist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    .line 3824
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1

    .line 1309
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method public native getWaveform2([SI)[B
.end method

.method public injectVideoPlayer(Lorg/telegram/ui/Components/VideoPlayer;Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 2966
    :cond_0
    iget v0, p2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/FileLoader;->setLoadingVideoForPlayer(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    const/4 v0, 0x0

    .line 2967
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playerWasReady:Z

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2970
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    .line 2971
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2972
    iput-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2973
    iget v1, p0, Lorg/telegram/messenger/MediaController;->playerNum:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lorg/telegram/messenger/MediaController;->playerNum:I

    .line 2974
    new-instance v1, Lorg/telegram/messenger/MediaController$7;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/MediaController$7;-><init>(Lorg/telegram/messenger/MediaController;ILorg/telegram/messenger/MessageObject;[IZ)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 3063
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 3064
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_1

    .line 3065
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 3068
    :cond_1
    invoke-direct {p0, p2}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 3069
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 3071
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const-wide/16 v3, 0x0

    .line 3072
    iput-wide v3, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 3073
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3074
    iput-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3075
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->enabledRaiseTo(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3076
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 3078
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v1}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 3079
    iget v1, p2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p1, v4, v2

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isBuffering()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isBuffering()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentPlayer(Lorg/telegram/ui/Components/VideoPlayer;)Z
    .locals 1

    .line 3733
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isDownloadingCurrentMessage()Z
    .locals 1

    .line 3853
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    return v0
.end method

.method public isGoingToShowMessageObject(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 2279
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->goingToShowMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMessagePaused()Z
    .locals 1

    .line 3849
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPiPShown()Z
    .locals 1

    .line 2774
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3828
    iget-boolean v1, p1, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z

    if-eqz v1, :cond_0

    return v0

    .line 3831
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_4

    :cond_1
    if-eqz p1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_2

    goto :goto_0

    .line 3834
    :cond_2
    iget-wide v1, v1, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    iget-wide v3, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 3835
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 3837
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3838
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public isPlayingMessageAndReadyToDraw(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 3845
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isRecordingAudio()Z
    .locals 1

    .line 1689
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRecordingOrListeningByProximity()Z
    .locals 1

    .line 1697
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isRecordingAudio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStreamingCurrentAudio()Z
    .locals 1

    .line 3729
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio:Z

    return v0
.end method

.method public isVideoDrawingReady()Z
    .locals 1

    .line 3820
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->isDrawingReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadMoreMusic()V
    .locals 15

    .line 2353
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_b

    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isFromMusicPlaylist:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2356
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_9

    .line 2358
    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->endReached:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2359
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    .line 2361
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-wide v6, v2, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->dialogId:J

    cmp-long v2, v6, v4

    const/16 v6, 0x14

    const-wide/16 v7, 0x3e8

    if-eqz v2, :cond_3

    .line 2362
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 2363
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-object v10, v9, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->query:Ljava/lang/String;

    iput-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 2364
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 2365
    iget-object v6, v9, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->filter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    if-nez v6, :cond_1

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v6, v6, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :goto_0
    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 2366
    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-wide v9, v9, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->dialogId:J

    invoke-virtual {v6, v9, v10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v6

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2367
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 2368
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 2369
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-wide v9, v6, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->minDate:J

    cmp-long v11, v9, v4

    if-lez v11, :cond_2

    .line 2370
    div-long/2addr v9, v7

    long-to-int v9, v9

    iput v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_date:I

    .line 2372
    :cond_2
    iget-wide v9, v6, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->maxDate:J

    cmp-long v4, v9, v4

    if-lez v4, :cond_7

    .line 2373
    div-long/2addr v9, v7

    long-to-int v4, v9

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_date:I

    goto :goto_3

    .line 2377
    :cond_3
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    .line 2378
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 2379
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-object v9, v6, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->query:Ljava/lang/String;

    iput-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    .line 2380
    iget-object v6, v6, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->filter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 2381
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    .line 2382
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    iput v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 2383
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget v10, v9, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->nextSearchRate:I

    iput v10, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 2384
    iget v10, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    or-int/2addr v10, v3

    iput v10, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    .line 2385
    iget v9, v9, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->folderId:I

    iput v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->folder_id:I

    .line 2387
    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v11, v9, v4

    if-eqz v11, :cond_4

    :goto_1
    neg-long v9, v9

    goto :goto_2

    .line 2389
    :cond_4
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v11, v9, v4

    if-eqz v11, :cond_5

    goto :goto_1

    .line 2392
    :cond_5
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 2394
    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v6

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2395
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-wide v9, v6, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->minDate:J

    cmp-long v11, v9, v4

    if-lez v11, :cond_6

    .line 2396
    div-long/2addr v9, v7

    long-to-int v9, v9

    iput v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->min_date:I

    .line 2398
    :cond_6
    iget-wide v9, v6, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->maxDate:J

    cmp-long v4, v9, v4

    if-lez v4, :cond_7

    .line 2399
    div-long/2addr v9, v7

    long-to-int v4, v9

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->min_date:I

    .line 2403
    :cond_7
    :goto_3
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 2404
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda47;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/messenger/MediaController;II)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_8
    return-void

    .line 2444
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistEndReached:[Z

    aget-boolean v1, v0, v2

    if-nez v1, :cond_a

    .line 2445
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 2446
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    const/16 v6, 0x32

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistMaxId:[I

    aget v7, v0, v2

    const/4 v8, 0x0

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    iget v13, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIJIII)V

    goto :goto_4

    .line 2447
    :cond_a
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->playlistMergeDialogId:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_b

    aget-boolean v0, v0, v3

    if-nez v0, :cond_b

    .line 2448
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 2449
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/messenger/MediaController;->playlistMergeDialogId:J

    const/16 v6, 0x32

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistMaxId:[I

    aget v7, v0, v2

    const/4 v8, 0x0

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    iget v13, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIJIII)V

    :cond_b
    :goto_4
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    .line 1260
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1729
    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-eqz v2, :cond_37

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_11

    .line 1732
    :cond_0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v3, :cond_3

    .line 1733
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1

    .line 1734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "proximity changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1736
    :cond_1
    iget v2, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v3, v8

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_2

    .line 1737
    iput-boolean v7, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    .line 1739
    :cond_2
    aget v2, v3, v8

    iput v2, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    .line 1740
    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v2, :cond_7

    .line 1741
    aget v2, v3, v8

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->isNearToSensor(F)Z

    move-result v2

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    goto/16 :goto_1

    .line 1743
    :cond_3
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v2, v3, :cond_5

    .line 1744
    iget-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    cmp-long v9, v2, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-nez v9, :cond_4

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    goto :goto_0

    :cond_4
    iget-wide v12, v1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v12, v2

    long-to-double v2, v12

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v12

    add-double/2addr v2, v10

    div-double v2, v10, v2

    .line 1746
    :goto_0
    iget-wide v12, v1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v12, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1747
    iget-object v9, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    aget v12, v9, v8

    float-to-double v12, v12

    mul-double/2addr v12, v2

    sub-double/2addr v10, v2

    iget-object v14, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v15, v14, v8

    float-to-double v4, v15

    mul-double/2addr v4, v10

    add-double/2addr v12, v4

    double-to-float v4, v12

    aput v4, v9, v8

    .line 1748
    aget v4, v9, v7

    float-to-double v4, v4

    mul-double/2addr v4, v2

    aget v12, v14, v7

    float-to-double v12, v12

    mul-double/2addr v12, v10

    add-double/2addr v4, v12

    double-to-float v4, v4

    aput v4, v9, v7

    .line 1749
    aget v4, v9, v6

    float-to-double v4, v4

    mul-double/2addr v2, v4

    aget v4, v14, v6

    float-to-double v4, v4

    mul-double/2addr v10, v4

    add-double/2addr v2, v10

    double-to-float v2, v2

    aput v2, v9, v6

    .line 1750
    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aget v3, v9, v8

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    aget v5, v14, v8

    const v10, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v5, v10

    add-float/2addr v3, v5

    aput v3, v2, v8

    .line 1751
    aget v3, v9, v7

    mul-float/2addr v3, v4

    aget v5, v14, v7

    mul-float/2addr v5, v10

    add-float/2addr v3, v5

    aput v3, v2, v7

    .line 1752
    aget v3, v9, v6

    mul-float/2addr v3, v4

    aget v4, v14, v6

    mul-float/2addr v4, v10

    add-float/2addr v3, v4

    aput v3, v2, v6

    .line 1754
    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aget v3, v14, v8

    aget v4, v9, v8

    sub-float/2addr v3, v4

    aput v3, v2, v8

    .line 1755
    aget v3, v14, v7

    aget v4, v9, v7

    sub-float/2addr v3, v4

    aput v3, v2, v7

    .line 1756
    aget v3, v14, v6

    aget v4, v9, v6

    sub-float/2addr v3, v4

    aput v3, v2, v6

    goto :goto_1

    .line 1757
    :cond_5
    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-ne v2, v3, :cond_6

    .line 1758
    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v3, v8

    aput v4, v2, v8

    .line 1759
    aget v4, v3, v7

    aput v4, v2, v7

    .line 1760
    aget v3, v3, v6

    aput v3, v2, v6

    goto :goto_1

    .line 1761
    :cond_6
    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-ne v2, v3, :cond_7

    .line 1762
    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v4, v8

    aput v5, v3, v8

    aput v5, v2, v8

    .line 1763
    aget v5, v4, v7

    aput v5, v3, v7

    aput v5, v2, v7

    .line 1764
    aget v4, v4, v6

    aput v4, v3, v6

    aput v4, v2, v6

    .line 1769
    :cond_7
    :goto_1
    iget-object v1, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x6

    if-eq v1, v2, :cond_8

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eq v1, v2, :cond_8

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v1, v2, :cond_18

    .line 1770
    :cond_8
    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    aget v2, v1, v8

    iget-object v4, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aget v5, v4, v8

    mul-float/2addr v2, v5

    aget v5, v1, v7

    aget v9, v4, v7

    mul-float/2addr v5, v9

    add-float/2addr v2, v5

    aget v1, v1, v6

    aget v4, v4, v6

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    .line 1771
    iget v1, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eq v1, v3, :cond_16

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-lez v5, :cond_9

    .line 1772
    iget v9, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    cmpl-float v9, v9, v4

    if-gtz v9, :cond_a

    :cond_9
    cmpg-float v9, v2, v4

    if-gez v9, :cond_16

    iget v9, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    cmpg-float v4, v9, v4

    if-gez v4, :cond_16

    :cond_a
    if-lez v5, :cond_c

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_b

    move v4, v7

    goto :goto_2

    :cond_b
    move v4, v8

    :goto_2
    move v5, v7

    goto :goto_4

    :cond_c
    const/high16 v4, -0x3e900000    # -15.0f

    cmpg-float v4, v2, v4

    if-gez v4, :cond_d

    move v4, v7

    goto :goto_3

    :cond_d
    move v4, v8

    :goto_3
    move v5, v6

    .line 1782
    :goto_4
    iget v9, v0, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    const/16 v10, 0xa

    if-eqz v9, :cond_11

    if-eq v9, v5, :cond_11

    .line 1783
    iget v5, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    if-ne v5, v3, :cond_e

    if-eqz v4, :cond_e

    if-ge v1, v3, :cond_16

    add-int/2addr v1, v7

    .line 1785
    iput v1, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-ne v1, v3, :cond_16

    .line 1787
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1788
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1789
    iput v8, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    .line 1791
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_16

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v1, :cond_16

    const-string/jumbo v1, "motion detected"

    .line 1792
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    if-nez v4, :cond_f

    .line 1798
    iget v4, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/2addr v4, v7

    iput v4, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1800
    :cond_f
    iget v4, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    if-eq v4, v10, :cond_10

    if-ne v5, v3, :cond_10

    if-eqz v1, :cond_16

    .line 1801
    :cond_10
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1802
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1803
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1804
    iput v8, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto :goto_5

    :cond_11
    if-eqz v4, :cond_13

    if-nez v1, :cond_13

    if-eqz v9, :cond_12

    if-ne v9, v5, :cond_13

    .line 1809
    :cond_12
    iget v1, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    if-ge v1, v3, :cond_16

    iget-boolean v4, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v4, :cond_16

    .line 1810
    iput v5, v0, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    add-int/2addr v1, v7

    .line 1811
    iput v1, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    if-ne v1, v3, :cond_16

    .line 1813
    iput v8, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto :goto_5

    :cond_13
    if-nez v4, :cond_14

    .line 1818
    iget v4, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/2addr v4, v7

    iput v4, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    :cond_14
    if-ne v9, v5, :cond_15

    .line 1820
    iget v4, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    if-eq v4, v10, :cond_15

    iget v4, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    if-ne v4, v3, :cond_15

    if-eqz v1, :cond_16

    .line 1821
    :cond_15
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1822
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1823
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1824
    iput v8, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1875
    :cond_16
    :goto_5
    iput v2, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1876
    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aget v2, v1, v7

    const/high16 v4, 0x40200000    # 2.5f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_17

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_17

    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    move v1, v7

    goto :goto_6

    :cond_17
    move v1, v8

    :goto_6
    iput-boolean v1, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1881
    :cond_18
    iget v1, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eq v1, v3, :cond_19

    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    if-eqz v1, :cond_1a

    .line 1882
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/messenger/MediaController;->lastAccelerometerDetected:J

    .line 1884
    :cond_1a
    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->manualRecording:Z

    if-nez v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_1b

    invoke-static {v7}, Lorg/telegram/messenger/SharedConfig;->enabledRaiseTo(Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    if-nez v1, :cond_1b

    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    if-nez v1, :cond_1b

    move v1, v7

    goto :goto_7

    :cond_1b
    move v1, v8

    .line 1885
    :goto_7
    invoke-static {v8}, Lorg/telegram/messenger/SharedConfig;->enabledRaiseTo(Z)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    move v2, v7

    goto :goto_8

    :cond_1d
    move v2, v8

    .line 1886
    :goto_8
    iget-boolean v4, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 1887
    iget v5, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eq v5, v3, :cond_1f

    iget-boolean v5, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    if-nez v5, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v9, v0, Lorg/telegram/messenger/MediaController;->lastAccelerometerDetected:J

    sub-long/2addr v5, v9

    const-wide/16 v9, 0x3c

    cmp-long v5, v5, v9

    if-gez v5, :cond_1e

    goto :goto_9

    :cond_1e
    move v5, v8

    goto :goto_a

    :cond_1f
    :goto_9
    move v5, v7

    .line 1888
    :goto_a
    iget-boolean v6, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v6, :cond_21

    iget-boolean v6, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-eqz v6, :cond_20

    goto :goto_b

    :cond_20
    move v6, v8

    goto :goto_c

    :cond_21
    :goto_b
    move v6, v7

    :goto_c
    if-nez v5, :cond_22

    if-eqz v6, :cond_24

    .line 1893
    :cond_22
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->forbidRaiseToListen()Z

    move-result v9

    if-nez v9, :cond_24

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->isAnyKindOfCallActive()Z

    move-result v9

    if-nez v9, :cond_24

    if-nez v1, :cond_23

    if-eqz v2, :cond_24

    :cond_23
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v9

    if-nez v9, :cond_24

    move v9, v7

    goto :goto_d

    :cond_24
    move v9, v8

    .line 1894
    :goto_d
    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_28

    .line 1895
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    const-string v11, ")"

    const-string v12, ", alreadyPlaying="

    const-string v13, ", accelerometerDetected="

    if-eqz v10, :cond_26

    if-nez v9, :cond_26

    .line 1897
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v10, :cond_25

    .line 1898
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "wake lock releasing (proximityDetected="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1900
    :cond_25
    iget-object v4, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_e

    :cond_26
    if-nez v10, :cond_28

    if-eqz v9, :cond_28

    .line 1902
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v10, :cond_27

    .line 1903
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "wake lock acquiring (proximityDetected="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1905
    :cond_27
    iget-object v4, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1908
    :cond_28
    :goto_e
    iget-boolean v4, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v4, :cond_2f

    if-eqz v9, :cond_2f

    if-eqz v1, :cond_2c

    .line 1909
    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_2c

    .line 1910
    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-nez v1, :cond_2e

    .line 1911
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_29

    const-string/jumbo v1, "start record"

    .line 1912
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1914
    :cond_29
    iput-boolean v7, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1915
    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v1, :cond_2a

    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->playFirstUnreadVoiceMessage()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1916
    :cond_2a
    iput-boolean v7, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1917
    iput-boolean v8, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1918
    invoke-direct {v0, v7}, Lorg/telegram/messenger/MediaController;->raiseToSpeakUpdated(Z)V

    .line 1920
    :cond_2b
    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v1, :cond_2e

    .line 1921
    invoke-direct {v0, v7}, Lorg/telegram/messenger/MediaController;->setUseFrontSpeaker(Z)V

    goto :goto_f

    :cond_2c
    if-eqz v2, :cond_2e

    .line 1929
    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v1, :cond_2e

    .line 1930
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "start listen"

    .line 1931
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1936
    :cond_2d
    invoke-direct {v0, v7}, Lorg/telegram/messenger/MediaController;->setUseFrontSpeaker(Z)V

    .line 1937
    invoke-direct {v0, v8}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1941
    :cond_2e
    :goto_f
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1942
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1943
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1944
    iput v8, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_10

    :cond_2f
    if-eqz v4, :cond_32

    .line 1945
    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_30

    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_32

    :cond_30
    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_32

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->isAnyKindOfCallActive()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1946
    iget-object v1, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_36

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v1, :cond_36

    if-eqz v2, :cond_36

    .line 1947
    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v1, :cond_36

    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->manualRecording:Z

    if-nez v1, :cond_36

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->forbidRaiseToListen()Z

    move-result v1

    if-nez v1, :cond_36

    .line 1948
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_31

    const-string/jumbo v1, "start listen by proximity only"

    .line 1949
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1954
    :cond_31
    invoke-direct {v0, v7}, Lorg/telegram/messenger/MediaController;->setUseFrontSpeaker(Z)V

    .line 1955
    invoke-direct {v0, v8}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    goto :goto_10

    .line 1959
    :cond_32
    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v1, :cond_36

    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->manualRecording:Z

    if-nez v1, :cond_36

    .line 1960
    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-eqz v1, :cond_34

    .line 1961
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_33

    const-string/jumbo v1, "stop record"

    .line 1962
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1964
    :cond_33
    invoke-direct {v0, v8}, Lorg/telegram/messenger/MediaController;->raiseToSpeakUpdated(Z)V

    .line 1965
    iput-boolean v8, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1966
    iput-boolean v8, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto :goto_10

    .line 1970
    :cond_34
    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v1, :cond_36

    .line 1971
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_35

    const-string/jumbo v1, "stop listen"

    .line 1972
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1974
    :cond_35
    iput-boolean v8, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1975
    invoke-direct {v0, v7}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1976
    iput-boolean v8, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1982
    :cond_36
    :goto_10
    iget-wide v1, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_37

    iget v1, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-ne v1, v3, :cond_37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_37

    .line 1983
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1984
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1985
    iput v8, v0, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1986
    iput v8, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const-wide/16 v1, 0x0

    .line 1987
    iput-wide v1, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    :cond_37
    :goto_11
    return-void
.end method

.method public pauseByRewind()V
    .locals 1

    .line 5367
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 5368
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public pauseMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 7

    .line 3745
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_6

    :cond_0
    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 3748
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 3750
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 3751
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v2

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float p1, v4, p1

    float-to-double v5, p1

    mul-double/2addr v2, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v2, v5

    if-lez p1, :cond_3

    sget-boolean p1, Lorg/telegram/ui/LaunchActivity;->isResumed:Z

    if-eqz p1, :cond_3

    .line 3752
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 3753
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3754
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    aput v4, p1, v1

    const/4 v2, 0x0

    aput v2, p1, v0

    .line 3756
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    .line 3757
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioVolumeUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3758
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3759
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/messenger/MediaController$12;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MediaController$12;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3767
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3769
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    .line 3771
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_5

    .line 3772
    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 3774
    :cond_5
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 3775
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 3777
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3778
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    :cond_6
    :goto_1
    return v1
.end method

.method public playEmojiSound(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/MessagesController$EmojiSound;Z)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 3106
    :cond_0
    sget-object p2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0, p3, p1, p4}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessagesController$EmojiSound;Lorg/telegram/messenger/AccountInstance;Z)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3227
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result p1

    return p1
.end method

.method public playMessage(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p2

    const/4 v9, 0x0

    .line 3256
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-nez v8, :cond_0

    return v9

    .line 3234
    :cond_0
    iput-boolean v0, v7, Lorg/telegram/messenger/MediaController;->isSilent:Z

    .line 3235
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkVolumeBarUI()V

    .line 3236
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v11, 0x1

    if-nez v1, :cond_1

    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_4

    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3237
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-eqz v0, :cond_2

    .line 3238
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->resumeAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 3240
    :cond_2
    invoke-static {v11}, Lorg/telegram/messenger/SharedConfig;->enabledRaiseTo(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3241
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    :cond_3
    return v11

    .line 3246
    :cond_4
    iget-boolean v1, v7, Lorg/telegram/messenger/MediaController;->needHiddenPlay:Z

    if-nez v1, :cond_5

    .line 3247
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3248
    iget v1, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    .line 3250
    :cond_5
    iget-boolean v1, v7, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    xor-int/lit8 v2, v1, 0x1

    .line 3251
    iget-object v12, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v13, 0x2

    if-eqz v12, :cond_7

    if-nez v1, :cond_6

    .line 3255
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 3256
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    new-array v3, v13, [Ljava/lang/Object;

    iget-object v4, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v10, v3, v11

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    move v2, v9

    .line 3259
    :cond_7
    invoke-virtual {v7, v2, v9}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    const/4 v14, 0x0

    .line 3260
    iput-object v14, v7, Lorg/telegram/messenger/MediaController;->shouldSavePositionForCurrentAudio:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 3261
    iput-wide v5, v7, Lorg/telegram/messenger/MediaController;->lastSaveTime:J

    .line 3262
    iput-boolean v9, v7, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    const/4 v15, 0x0

    .line 3263
    iput v15, v7, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    .line 3266
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 3267
    new-instance v1, Ljava/io/File;

    iget-object v2, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3268
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    move-object v4, v1

    goto :goto_1

    :cond_9
    move v2, v9

    :goto_0
    move-object v4, v14

    :goto_1
    if-eqz v4, :cond_a

    move-object v3, v4

    goto :goto_2

    .line 3273
    :cond_a
    iget v1, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    move-object v3, v1

    .line 3274
    :goto_2
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->canStreamVideo()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v11

    goto :goto_3

    :cond_c
    move v1, v9

    :goto_3
    if-eq v3, v4, :cond_f

    .line 3275
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    if-nez v1, :cond_f

    .line 3276
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    move v13, v9

    :goto_4
    invoke-virtual {v0, v1, v8, v9, v13}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 3277
    iput-boolean v11, v7, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 3278
    iput-boolean v9, v7, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 3279
    iput-wide v5, v7, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 3280
    iput-object v14, v7, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 3281
    iput-object v8, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3282
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3283
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3288
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 3291
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 3294
    :cond_e
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3295
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3297
    :goto_5
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    new-array v2, v11, [Ljava/lang/Object;

    iget-object v3, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return v11

    :cond_f
    move/from16 v16, v2

    .line 3300
    iput-boolean v9, v7, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 3302
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3303
    iget v1, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-direct {v7, v1}, Lorg/telegram/messenger/MediaController;->checkIsNextMusicFileDownloaded(I)V

    goto :goto_6

    .line 3305
    :cond_10
    iget v1, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-direct {v7, v1}, Lorg/telegram/messenger/MediaController;->checkIsNextVoiceFileDownloaded(I)V

    .line 3307
    :goto_6
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v1, :cond_11

    .line 3308
    iput-boolean v9, v7, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    .line 3309
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setDrawingReady(Z)V

    .line 3311
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    .line 3312
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    const-string v5, "&mime="

    const-string v6, "&size="

    const-string v13, "&dc="

    const-string v15, "&hash="

    const-string v9, "&id="

    const-string v14, "?account="

    const v19, 0x3a83126f    # 0.001f

    const-string v11, "UTF-8"

    move-object/from16 v20, v10

    const-string/jumbo v10, "other"

    move-object/from16 v21, v12

    const/high16 v22, 0x41200000    # 10.0f

    if-nez v2, :cond_23

    if-eqz v1, :cond_12

    goto/16 :goto_d

    .line 3468
    :cond_12
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    .line 3469
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    const/4 v1, 0x0

    .line 3470
    iput-object v1, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 3473
    :cond_13
    :try_start_1
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 3474
    iget v1, v7, Lorg/telegram/messenger/MediaController;->playerNum:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Lorg/telegram/messenger/MediaController;->playerNum:I

    .line 3475
    new-instance v2, Lorg/telegram/messenger/MediaController$10;

    invoke-direct {v2, v7, v1, v8}, Lorg/telegram/messenger/MediaController$10;-><init>(Lorg/telegram/messenger/MediaController;ILorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 3522
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v1, Lorg/telegram/messenger/MediaController$11;

    invoke-direct {v1, v7}, Lorg/telegram/messenger/MediaController$11;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setAudioVisualizerDelegate(Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;)V

    if-eqz v16, :cond_15

    .line 3534
    iget-boolean v0, v8, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v0, :cond_14

    if-eq v3, v4, :cond_14

    .line 3535
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda39;

    invoke-direct {v0, v8, v3}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3537
    :cond_14
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3538
    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio:Z

    goto/16 :goto_8

    .line 3540
    :cond_15
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v0

    .line 3541
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 3542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v13

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v12, v23

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 3547
    invoke-static {v4, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&rid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&name="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3549
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reference="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v0, :cond_16

    goto :goto_7

    :cond_16
    const/4 v1, 0x0

    new-array v0, v1, [B

    :goto_7
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tg://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3552
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1, v0, v10}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3553
    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio:Z

    .line 3555
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v1, "media_saved_pos"

    if-eqz v0, :cond_1a

    .line 3556
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3557
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v2

    const-wide v4, 0x4072c00000000000L    # 300.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_18

    .line 3558
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    .line 3559
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_17

    const v2, 0x3f7d70a4    # 0.99f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_17

    .line 3561
    iput v1, v7, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    iput v1, v8, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 3563
    :cond_17
    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->shouldSavePositionForCurrentAudio:Ljava/lang/String;

    .line 3565
    :cond_18
    iget v0, v7, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v19

    if-lez v0, :cond_19

    .line 3566
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget v1, v7, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    mul-float v1, v1, v22

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    :cond_19
    const/4 v1, 0x0

    .line 3568
    iput-object v1, v7, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 3569
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    .line 3572
    :cond_1a
    :try_start_3
    invoke-static {v3}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 3574
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3576
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 3577
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v2

    const-wide v4, 0x4082c00000000000L    # 600.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1c

    .line 3578
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    .line 3579
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1b

    const v2, 0x3f7fbe77    # 0.999f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1b

    .line 3581
    iput v1, v7, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    iput v1, v8, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 3583
    :cond_1b
    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->shouldSavePositionForCurrentAudio:Ljava/lang/String;

    .line 3584
    iget v0, v7, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v19

    if-lez v0, :cond_1c

    .line 3585
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget v1, v7, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    mul-float v1, v1, v22

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    .line 3589
    :cond_1c
    :goto_a
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->forceSeekTo:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1d

    .line 3590
    iput v0, v7, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    iput v0, v8, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 3591
    iput v1, v8, Lorg/telegram/messenger/MessageObject;->forceSeekTo:F

    .line 3593
    :cond_1d
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_b

    :cond_1e
    const/4 v1, 0x3

    :goto_b
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    .line 3594
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 3595
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3596
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1f

    .line 3597
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3598
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1f
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 3600
    iget v1, v7, Lorg/telegram/messenger/MediaController;->audioVolume:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    .line 3601
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->audioVolumeUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3602
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3603
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_17

    :cond_20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3605
    iput v1, v7, Lorg/telegram/messenger/MediaController;->audioVolume:F

    .line 3606
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_17

    :catch_1
    move-exception v0

    .line 3609
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3610
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    goto :goto_c

    :cond_21
    const/4 v4, 0x0

    :goto_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, v3, v13

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3611
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_22

    .line 3612
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 v1, 0x0

    .line 3613
    iput-object v1, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 3614
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->unrefAudioVisualizeDrawable(Lorg/telegram/messenger/MessageObject;)V

    .line 3615
    iput-boolean v13, v7, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 3616
    iput-object v1, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3617
    iput-boolean v13, v7, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    :cond_22
    return v13

    :cond_23
    :goto_d
    move-object v12, v13

    const/4 v13, 0x0

    .line 3313
    iget v2, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    move-object/from16 v23, v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    move-object/from16 v24, v4

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->setLoadingVideoForPlayer(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 3314
    iput-boolean v13, v7, Lorg/telegram/messenger/MediaController;->playerWasReady:Z

    if-eqz v1, :cond_25

    .line 3315
    iget-object v2, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v17, 0x0

    cmp-long v2, v2, v17

    if-nez v2, :cond_24

    iget v2, v8, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_24

    goto :goto_e

    :cond_24
    const/4 v13, 0x0

    goto :goto_f

    :cond_25
    const-wide/16 v17, 0x0

    :goto_e
    const/4 v13, 0x1

    :goto_f
    if-eqz v1, :cond_26

    .line 3316
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v1

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_26

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    move-object/from16 v25, v2

    goto :goto_10

    :cond_26
    const/4 v1, 0x1

    const/16 v25, 0x0

    .line 3317
    :goto_10
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    .line 3318
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 3319
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 3320
    iget v0, v7, Lorg/telegram/messenger/MediaController;->playerNum:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v7, Lorg/telegram/messenger/MediaController;->playerNum:I

    .line 3321
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v4, Lorg/telegram/messenger/MediaController$9;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v26, v11

    move-object/from16 v11, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v24

    move-object/from16 v24, v15

    move-object v15, v4

    move-object/from16 v4, p1

    move-object/from16 v27, v5

    move-object/from16 v5, v25

    move-object/from16 v28, v6

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MediaController$9;-><init>(Lorg/telegram/messenger/MediaController;ILorg/telegram/messenger/MessageObject;[IZ)V

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    const/4 v1, 0x0

    .line 3413
    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 3414
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez v0, :cond_28

    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iget-boolean v3, v8, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogVisible(JZ)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_11

    .line 3426
    :cond_27
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2a

    .line 3427
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_13

    .line 3415
    :cond_28
    :goto_11
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez v0, :cond_29

    .line 3417
    :try_start_5
    new-instance v0, Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;-><init>()V

    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 3418
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    new-instance v2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda12;

    invoke-direct {v2, v7}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_12

    :catch_2
    const/4 v1, 0x0

    .line 3420
    iput-object v1, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 3423
    :cond_29
    :goto_12
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v0, :cond_2a

    .line 3424
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    :cond_2a
    :goto_13
    if-eqz v16, :cond_2c

    .line 3431
    iget-boolean v0, v8, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v0, :cond_2b

    if-eq v11, v12, :cond_2b

    .line 3432
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;

    invoke-direct {v0, v8, v11}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3434
    :cond_2b
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 3437
    :cond_2c
    :try_start_6
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v0

    .line 3438
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 3439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v4, v26

    .line 3444
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&rid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&name="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3446
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reference="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3447
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v0, :cond_2d

    goto :goto_14

    :cond_2d
    const/4 v1, 0x0

    new-array v0, v1, [B

    :goto_14
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tg://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3449
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1, v0, v10}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_15

    :catch_3
    move-exception v0

    .line 3451
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3454
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3455
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_16

    :cond_2e
    const/4 v1, 0x3

    :goto_16
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    .line 3456
    iget v0, v7, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v19

    if-lez v0, :cond_2f

    .line 3457
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget v1, v7, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    mul-float v1, v1, v22

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    .line 3460
    :cond_2f
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->forceSeekTo:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_31

    .line 3461
    iput v0, v7, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    iput v0, v8, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 3462
    iput v1, v8, Lorg/telegram/messenger/MessageObject;->forceSeekTo:F

    goto :goto_17

    .line 3465
    :cond_30
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    .line 3622
    :cond_31
    :goto_17
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 3623
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    const/4 v1, 0x0

    .line 3625
    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const-wide/16 v1, 0x0

    .line 3626
    iput-wide v1, v7, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 3627
    iput-object v8, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    .line 3628
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->enabledRaiseTo(Z)Z

    move-result v0

    if-nez v0, :cond_32

    .line 3629
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 3631
    :cond_32
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v0, :cond_34

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->enabledRaiseTo(Z)Z

    goto :goto_18

    :cond_34
    const/4 v1, 0x0

    .line 3634
    :goto_18
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {v7, v0}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 3635
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v8, v4, v1

    const/4 v1, 0x1

    aput-object v21, v4, v1

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3637
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v1, 0x3e8

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_38

    .line 3639
    :try_start_7
    iget-object v5, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v5, v5, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_37

    .line 3640
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_35

    .line 3642
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v3

    double-to-long v3, v3

    mul-long v5, v3, v1

    :cond_35
    long-to-float v0, v5

    .line 3644
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 3645
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgressMs:I

    if-eqz v2, :cond_36

    const/4 v3, 0x0

    .line 3647
    iput v3, v1, Lorg/telegram/messenger/MessageObject;->audioProgressMs:I

    move v0, v2

    .line 3649
    :cond_36
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_19

    :catch_4
    move-exception v0

    .line 3652
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    iput v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v2, 0x0

    .line 3653
    iput v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 3654
    iget v1, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    aput-object v20, v4, v2

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3655
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3657
    :cond_37
    :goto_19
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_1a

    .line 3658
    :cond_38
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3a

    .line 3660
    :try_start_8
    iget-object v5, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v5, v5, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3a

    .line 3661
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_39

    .line 3663
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v3

    double-to-long v3, v3

    mul-long v5, v3, v1

    :cond_39
    long-to-float v0, v5

    .line 3665
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3666
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1a

    :catch_5
    move-exception v0

    .line 3669
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 3670
    iget v1, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v20, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3671
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3675
    :cond_3a
    :goto_1a
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3676
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3681
    :try_start_9
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1b

    :catchall_1
    move-exception v0

    .line 3684
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 3687
    :cond_3b
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3688
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_1b
    const/4 v1, 0x1

    return v1
.end method

.method public playMessageAtIndex(I)V
    .locals 2

    .line 2548
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2551
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v0, 0x1

    .line 2552
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2553
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 2554
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2555
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 2557
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public playNextMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 2534
    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->playNextMessageWithoutOrder(Z)V

    return-void
.end method

.method public playPreviousMessage()V
    .locals 4

    .line 2619
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    .line 2620
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_2

    .line 2623
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2624
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    const/4 v0, 0x0

    .line 2625
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    return-void

    .line 2629
    :cond_2
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/MediaController;->traversePlaylist(Ljava/util/ArrayList;I)Z

    .line 2630
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_4

    return-void

    .line 2633
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2634
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public requestAudioFocus(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3864
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->hasRecordAudioFocus:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    if-eqz p1, :cond_1

    .line 3865
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecordFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3867
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->hasRecordAudioFocus:Z

    goto :goto_0

    .line 3871
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->hasRecordAudioFocus:Z

    if-eqz p1, :cond_1

    .line 3872
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecordFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 p1, 0x0

    .line 3873
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->hasRecordAudioFocus:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public resetGoingToShowMessageObject()V
    .locals 1

    const/4 v0, 0x0

    .line 2283
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->goingToShowMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method public resumeByRewind()V
    .locals 2

    .line 5373
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v1, :cond_1

    .line 5374
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5375
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    .line 5376
    invoke-virtual {p0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 5377
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 5379
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5168
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;ZZ)Z

    return-void
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;ZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 5172
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5175
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 5178
    new-instance p2, Ljava/io/File;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 5180
    :cond_2
    new-instance p2, Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {p2, p1, v1, p3}, Lorg/telegram/messenger/MediaController$VideoConvertMessage;-><init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;Z)V

    .line 5181
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5182
    iget-boolean p1, p2, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->foreground:Z

    if-eqz p1, :cond_3

    .line 5183
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->foregroundConvertingMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5184
    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->checkForegroundConvertMessage(Z)V

    .line 5186
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 5187
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    :cond_4
    return p2

    :cond_5
    :goto_0
    return v0
.end method

.method public seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z
    .locals 7

    .line 2291
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2292
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_5

    :cond_0
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2296
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_3

    .line 2297
    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 2299
    iput p2, p0, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    goto :goto_0

    .line 2301
    :cond_2
    iput p2, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    long-to-float v1, v3

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 2303
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 2304
    iput-wide v4, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    goto :goto_0

    .line 2306
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_4

    .line 2307
    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2313
    :cond_4
    :goto_0
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidSeek:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v3, v0

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return v0

    :catch_0
    move-exception p1

    .line 2310
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return v2
.end method

.method public setAllowStartRecord(Z)V
    .locals 0

    .line 2069
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    return-void
.end method

.method public setBaseActivity(Landroid/app/Activity;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2857
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    goto :goto_0

    .line 2858
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 2859
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentVideoVisible(Z)V
    .locals 3

    .line 2778
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 2782
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 2783
    iput v0, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2784
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 2785
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    goto :goto_1

    .line 2787
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    .line 2788
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2790
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_1

    .line 2793
    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2794
    iput v2, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2795
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 2797
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez p1, :cond_5

    .line 2799
    :try_start_0
    new-instance p1, Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2800
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    new-instance v2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2802
    :catch_0
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2805
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz p1, :cond_6

    .line 2806
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setFeedbackView(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2865
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->feedbackView:Landroid/view/View;

    goto :goto_0

    .line 2866
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->feedbackView:Landroid/view/View;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 2867
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->feedbackView:Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method

.method public setInputFieldHasText(Z)V
    .locals 0

    .line 2065
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    return-void
.end method

.method public setLastVisibleMessageIds(IJJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 1535
    iput-wide p2, p0, Lorg/telegram/messenger/MediaController;->lastChatEnterTime:J

    .line 1536
    iput-wide p4, p0, Lorg/telegram/messenger/MediaController;->lastChatLeaveTime:J

    .line 1537
    iput p1, p0, Lorg/telegram/messenger/MediaController;->lastChatAccount:I

    .line 1538
    iput-object p7, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1539
    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1540
    iput p9, p0, Lorg/telegram/messenger/MediaController;->lastMessageId:I

    .line 1541
    iput-object p8, p0, Lorg/telegram/messenger/MediaController;->lastChatVisibleMessages:Ljava/util/ArrayList;

    return-void
.end method

.method public setNeedHiddenPlay(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->needHiddenPlay:Z

    return-void
.end method

.method public setPlaybackOrderType(I)V
    .locals 1

    .line 3711
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    .line 3712
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setPlaybackOrderType(I)V

    .line 3713
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 3715
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    goto :goto_0

    .line 3717
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_1

    .line 3718
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 3720
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    const/4 p1, 0x1

    .line 3721
    invoke-virtual {p0, p1, p1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaybackSpeed(ZF)V
    .locals 5

    const v0, 0x3a83126f    # 0.001f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 2873
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    cmpl-float v2, p2, v1

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    .line 2875
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_0

    .line 2876
    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 2877
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2879
    new-instance v4, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda35;

    invoke-direct {v4, p0, v2, v3}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;F)V

    const-wide/16 v2, 0x32

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2888
    :cond_1
    iput p2, p0, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    sub-float v1, p2, v1

    .line 2889
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 2890
    iput p2, p0, Lorg/telegram/messenger/MediaController;->fastMusicPlaybackSpeed:F

    goto :goto_0

    .line 2893
    :cond_2
    iput p2, p0, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    sub-float v1, p2, v1

    .line 2894
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 2895
    iput p2, p0, Lorg/telegram/messenger/MediaController;->fastPlaybackSpeed:F

    .line 2898
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/high16 v1, 0x41200000    # 10.0f

    if-eqz v0, :cond_4

    mul-float v2, p2, v1

    .line 2899
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    goto :goto_1

    .line 2900
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_5

    mul-float v2, p2, v1

    .line 2901
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    .line 2903
    :cond_5
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_6

    const-string/jumbo v1, "musicPlaybackSpeed"

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "playbackSpeed"

    .line 2904
    :goto_2
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    if-eqz p1, :cond_7

    const-string v0, "fastMusicPlaybackSpeed"

    goto :goto_3

    :cond_7
    const-string v0, "fastPlaybackSpeed"

    :goto_3
    if-eqz p1, :cond_8

    .line 2905
    iget p1, p0, Lorg/telegram/messenger/MediaController;->fastMusicPlaybackSpeed:F

    goto :goto_4

    :cond_8
    iget p1, p0, Lorg/telegram/messenger/MediaController;->fastPlaybackSpeed:F

    :goto_4
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2906
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2907
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "J)Z"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 131
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZ)Z

    move-result p1

    return p1
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JLorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "J",
            "Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    .line 2454
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;)Z

    move-result p1

    return p1
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "JZ)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v7, p5

    .line 2458
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;Z)Z

    move-result p1

    return p1
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "JZ",
            "Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;",
            ")Z"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    .line 136
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;Z)Z

    move-result p1

    return p1
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "JZ",
            "Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;",
            "Z)Z"
        }
    .end annotation

    .line 2462
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p2, :cond_1

    .line 2463
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2465
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2467
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1

    .line 2469
    :cond_1
    iput-boolean p7, p0, Lorg/telegram/messenger/MediaController;->isFromMusicPlaylist:Z

    xor-int/lit8 p7, p5, 0x1

    .line 2470
    iput-boolean p7, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    .line 2471
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController;->playlistMergeDialogId:J

    .line 2472
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2473
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    .line 2474
    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    .line 2475
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 p6, 0x0

    if-nez p3, :cond_2

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p3

    if-eqz p3, :cond_2

    move p6, p4

    :cond_2
    const p3, 0x7fffffff

    const/high16 p7, -0x80000000

    .line 2478
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p4

    :goto_0
    if-ltz v0, :cond_6

    .line 2479
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessageObject;

    .line 2480
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2481
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-gtz v1, :cond_3

    if-eqz p6, :cond_4

    .line 2483
    :cond_3
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2484
    invoke-static {p7, v1}, Ljava/lang/Math;->max(II)I

    move-result p7

    .line 2486
    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2487
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2490
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->sortPlaylist()V

    .line 2491
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 p4, -0x1

    if-ne p1, p4, :cond_7

    .line 2493
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    .line 2494
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2495
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2496
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    :cond_7
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p2, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->isFromMusicPlaylist:Z

    if-nez p1, :cond_a

    .line 2499
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz p1, :cond_8

    .line 2500
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    :cond_8
    if-eqz p5, :cond_a

    .line 2503
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    if-nez p1, :cond_9

    .line 2504
    iget p1, p2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    int-to-long v3, p3

    int-to-long v5, p7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->loadMusic(JJJ)V

    goto :goto_1

    .line 2506
    :cond_9
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    .line 2510
    :cond_a
    :goto_1
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1
.end method

.method public setReplyingMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 3857
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMsg:Lorg/telegram/messenger/MessageObject;

    .line 3858
    iput-object p2, p0, Lorg/telegram/messenger/MediaController;->recordReplyingTopMsg:Lorg/telegram/messenger/MessageObject;

    .line 3859
    iput-object p3, p0, Lorg/telegram/messenger/MediaController;->recordReplyingStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 2813
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;ZLjava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_1

    .line 2820
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-ne p4, p1, :cond_1

    .line 2821
    iput v0, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2822
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 2823
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2824
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    return-void

    .line 2827
    :cond_1
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p4, :cond_6

    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-ne p1, p4, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 2830
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->isDrawingReady()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    .line 2831
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-eqz p5, :cond_4

    .line 2832
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez p1, :cond_4

    .line 2834
    :try_start_0
    new-instance p1, Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2835
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    new-instance p5, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda9;

    invoke-direct {p5, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {p1, p4, p5}, Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2837
    :catch_0
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2840
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz p1, :cond_5

    .line 2841
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_2

    .line 2843
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2845
    :goto_2
    iput-object p2, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2846
    iput-object p3, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 2847
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 2848
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRatio:F

    iget p3, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRotation:I

    invoke-virtual {p2, p1, p3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    :cond_6
    :goto_3
    return-void
.end method

.method public setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2739
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    .line 2740
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 2741
    :goto_1
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 2742
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 2743
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public startMediaObserver()V
    .locals 4

    .line 1422
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1423
    iget v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    const/4 v0, 0x0

    .line 1425
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    if-nez v1, :cond_0

    .line 1426
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MediaController$ExternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1429
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1432
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    if-nez v1, :cond_1

    .line 1433
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MediaController$InternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1436
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 2073
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2076
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->enabledRaiseTo(Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return-void

    .line 2079
    :cond_3
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 2080
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez p1, :cond_4

    .line 2081
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, p1, v1

    const/4 v3, 0x1

    aput v2, p1, v3

    aput v2, p1, v0

    .line 2082
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aput v2, p1, v1

    aput v2, p1, v3

    aput v2, p1, v0

    .line 2083
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aput v2, p1, v1

    aput v2, p1, v3

    aput v2, p1, v0

    const-wide/16 v4, 0x0

    .line 2084
    iput-wide v4, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 2085
    iput v2, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 2086
    iput v0, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 2087
    iput v0, p0, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 2088
    iput v0, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 2089
    iput v0, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 2090
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2102
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public startRecording(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;IZ)V
    .locals 13

    move-object v9, p0

    .line 3929
    iget-object v0, v9, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-nez v0, :cond_0

    move/from16 v0, p8

    move v10, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v10, v0

    move/from16 v0, p8

    .line 3932
    :goto_0
    iput-boolean v0, v9, Lorg/telegram/messenger/MediaController;->manualRecording:Z

    .line 3933
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    .line 3936
    :try_start_0
    iget-object v0, v9, Lorg/telegram/messenger/MediaController;->feedbackView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3941
    :catch_0
    iget-object v11, v9, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v12, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda24;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move/from16 v3, p7

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/MediaController;IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iput-object v12, v9, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v10, :cond_1

    const-wide/16 v0, 0x1f4

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x32

    :goto_1
    invoke-virtual {v11, v12, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startRecordingIfFromSpeaker()V
    .locals 11

    .line 2013
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->enabledRaiseTo(Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2016
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 2017
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MediaController;->startRecording(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;IZ)V

    .line 2018
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stopMediaObserver()V
    .locals 4

    .line 1441
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    if-nez v0, :cond_0

    .line 1442
    new-instance v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    .line 1444
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    .line 1445
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;ZZ)V
    .locals 8

    .line 2107
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2108
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    return-void

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 2112
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MediaController;->stopRecording(IZIZLjava/lang/String;)V

    .line 2114
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz p2, :cond_5

    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eq p2, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 2117
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 2118
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    .line 2119
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 2120
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 2121
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 2122
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 2123
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2135
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2136
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopRecording(IZIZLjava/lang/String;)V
    .locals 9

    .line 4144
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4145
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4146
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 4148
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/MediaController;IZIZLjava/lang/String;)V

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toggleRecordingPause()V
    .locals 2

    .line 3879
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tryResumePausedAudio()V
    .locals 2

    .line 3737
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3738
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->wasPlayingAudioBeforePause:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3739
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_1
    const/4 v0, 0x0

    .line 3741
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->wasPlayingAudioBeforePause:Z

    return-void
.end method

.method public updateSilent(Z)V
    .locals 4

    .line 3695
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->isSilent:Z

    .line 3696
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 3697
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 3699
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 3700
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkVolumeBarUI()V

    .line 3701
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_2

    .line 3702
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
