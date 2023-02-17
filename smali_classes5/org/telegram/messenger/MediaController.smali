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

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field public static final AUIDO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

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

.method public static synthetic $r8$lambda$4hXGEnMbwNr3lz6ukqwjoW_1QVo(Lorg/telegram/messenger/MediaController;IZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MediaController;->lambda$stopRecording$33(IZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$61DbelycpB-uSzgUiqFaceTF8Ok(Lorg/telegram/messenger/MediaController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$startRecording$25(II)V

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

.method public static synthetic $r8$lambda$B4PO0anpk1pEPt5g2_99FqatIT4(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;IZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/MediaController;->lambda$stopRecordingInternal$30(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;IZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DVstJGPEclGbKXkuKm7T1QWFw4o(ILjava/io/File;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;[ZLjava/lang/String;Ljava/lang/Runnable;[Z)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$39(ILjava/io/File;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;[ZLjava/lang/String;Ljava/lang/Runnable;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hjwpinp0A_mQseyXSpa091-ylCM(Lorg/telegram/ui/ActionBar/AlertDialog;[Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$38(Lorg/telegram/ui/ActionBar/AlertDialog;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JDMxO15dTslz5Qo2msMUVAAoT58(Lorg/telegram/messenger/MediaController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$startRecording$26(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$M6dvXNf1wKP28WNW8g7gMv4mJEo(Lorg/telegram/messenger/MediaController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$startRecording$23(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$NxReaM3sFBaT-1CotLhWGSDPEUs(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/MediaController;->lambda$broadcastNewPhotos$42(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q4BffmhzcTBAP7TisdDQaeCJxR0(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->lambda$loadGalleryPhotosAlbums$41(I)V

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

.method public static synthetic $r8$lambda$UgMy_Bj2QWj-5xMqfkRlbL9_oCo(Lorg/telegram/messenger/MediaController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$stopRecording$32(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V8Kyxjc1-focy3yscmj3hy5fccY(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$setCurrentVideoVisible$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$WwgL4Rn7rKp6w_h6qk2pwpKP51M(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$XTl53FfjAU1ZhnyerfXc8KSznro(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/MediaController$PhotoEntry;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$loadGalleryPhotosAlbums$40(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/MediaController$PhotoEntry;)I

    move-result p0

    return p0
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

.method public static synthetic $r8$lambda$euoiYqovQdEMBXz67sC1qTjBPMo([ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$35([ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eyD-pWFmgAHpItVfYWB26G0Alb8(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$playMessage$22(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gwzU5meSkai6X05H2YYq3-KnyJE(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;IZILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/MediaController;->lambda$stopRecordingInternal$31(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;IZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i3eL4EzmOfRtpHlDYIIymjVY0zY(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$processMediaObserver$6(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iRoRTSaaXwJdT03JV_o285WGycY(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$37(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iyeCjCDB3j89HWEENYAEPUsHsAY(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->lambda$generateWaveform$29(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jZJAIUl30hK1yoVRmwqTQNLFATs(Lorg/telegram/messenger/MediaController;IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/MediaController;->lambda$startRecording$27(IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k7_9uBYOQoi8jIAPWZWCt5Dodpw(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$setPlaybackSpeed$16(Lorg/telegram/messenger/MessageObject;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$l3v7TczQOU55ufG-Cttce3xkdjw(Lorg/telegram/messenger/MediaController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->lambda$startRecording$24(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$nRGNEP40JWfANhUrMvmAGbD1YoY(I)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->lambda$checkGallery$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ndeQUJIYWLVimp_46L_yVcg3Alo(Lorg/telegram/messenger/MediaController;Ljava/lang/String;[BLorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->lambda$generateWaveform$28(Ljava/lang/String;[BLorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ntZO9jlLMRmkTDlp5OxLgJjzUf0(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$q2wLpZlkRQKhkp05axTufBrNsCE(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessagesController$EmojiSound;Lorg/telegram/messenger/AccountInstance;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->lambda$playEmojiSound$19(Lorg/telegram/messenger/MessagesController$EmojiSound;Lorg/telegram/messenger/AccountInstance;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rGRvPOtNF6kxqOD0pu28CMSPrs0(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$36(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgMTYs4Sil25EegdSsyN_TxrVEI([ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/MediaController;->lambda$saveFile$34([ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tG6YqE5f_tkXdwEtFnTmspAf0XY(Lorg/telegram/messenger/MediaController;IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MediaController;->lambda$loadMoreMusic$12(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tUEc_MDRGiLQqDCBpkFNwh-NwZA(Lorg/telegram/messenger/MediaController;ZZLorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;FJZJ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/MediaController;->lambda$didWriteData$43(ZZLorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;FJZJ)V

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

    .line 185
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

    const-string v14, "orientation"

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

    .line 197
    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaController;->allPhotoAlbums:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecordFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 507
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 524
    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const/high16 v2, -0x3d380000    # -100.0f

    .line 527
    iput v2, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    const/4 v2, 0x3

    new-array v3, v2, [F

    .line 534
    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    new-array v3, v2, [F

    .line 535
    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    new-array v3, v2, [F

    .line 536
    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v3, 0x0

    .line 541
    iput v3, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 562
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    .line 563
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->videoQueueSync:Ljava/lang/Object;

    .line 564
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    .line 578
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isSilent:Z

    .line 579
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const/4 v4, 0x0

    .line 580
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 581
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 582
    iput v3, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayerNum:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 587
    iput v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    .line 588
    iput v5, p0, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    .line 589
    iput v5, p0, Lorg/telegram/messenger/MediaController;->fastPlaybackSpeed:F

    .line 590
    iput v5, p0, Lorg/telegram/messenger/MediaController;->fastMusicPlaybackSpeed:F

    .line 592
    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 595
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 596
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v1, v0, [Z

    .line 621
    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistEndReached:[Z

    new-array v1, v0, [I

    .line 625
    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistMaxId:[I

    .line 627
    new-instance v1, Lorg/telegram/messenger/MediaController$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$1;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 639
    iput v1, p0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    const/16 v1, 0x400

    new-array v1, v1, [S

    .line 647
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    .line 650
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    .line 652
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    const/16 v1, 0x500

    .line 654
    iput v1, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    const v1, 0xbb80

    .line 655
    iput v1, p0, Lorg/telegram/messenger/MediaController;->sampleRate:I

    .line 663
    new-instance v1, Lorg/telegram/messenger/MediaController$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$2;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    .line 754
    new-instance v1, Lorg/telegram/messenger/MediaController$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$3;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 938
    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    const-string v4, "recordQueue"

    invoke-direct {v1, v4}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v4, 0xa

    .line 939
    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 940
    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    const-string v5, "fileEncodingQueue"

    invoke-direct {v1, v5}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 941
    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 943
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 961
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/16 v1, 0x780

    .line 1022
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    .line 1024
    new-instance v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/MediaController;)V

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

    .line 1041
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

    .line 1047
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1049
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

    .line 1051
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1054
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

    .line 1056
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1059
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

    .line 1061
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1064
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

    .line 1066
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

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneScheduleDate:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MediaController;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneTemplateName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MediaController;IZILjava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(IZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->writeFrame(Ljava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1714(Lorg/telegram/messenger/MediaController;J)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/MediaController;F)F
    .locals 0

    .line 106
    iput p1, p0, Lorg/telegram/messenger/MediaController;->audioVolume:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MediaController;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MediaController;Landroid/net/Uri;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->processMediaObserver(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/Runnable;
    .locals 1

    .line 106
    sget-object v0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 106
    sput-object p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$InternalObserver;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$ExternalObserver;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/MediaController;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MediaController;)F
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    return p0
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/MediaController;F)F
    .locals 0

    .line 106
    iput p1, p0, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    return-wide v0
.end method

.method static synthetic access$3002(Lorg/telegram/messenger/MediaController;J)J
    .locals 0

    .line 106
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    return-wide p1
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MediaController;J)J
    .locals 0

    .line 106
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MediaController;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->shouldSavePositionForCurrentAudio:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/MediaController;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastSaveTime:J

    return-wide v0
.end method

.method static synthetic access$3202(Lorg/telegram/messenger/MediaController;J)J
    .locals 0

    .line 106
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastSaveTime:J

    return-wide p1
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->playerNum:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;[IZZI)V
    .locals 0

    .line 106
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/MediaController;->updateVideoState(Lorg/telegram/messenger/MessageObject;[IZZI)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRotation:I

    return p0
.end method

.method static synthetic access$3602(Lorg/telegram/messenger/MediaController;I)I
    .locals 0

    .line 106
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRotation:I

    return p1
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MediaController;)F
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRatio:F

    return p0
.end method

.method static synthetic access$3702(Lorg/telegram/messenger/MediaController;F)F
    .locals 0

    .line 106
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRatio:F

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/MediaController;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/MediaController;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    return p0
.end method

.method static synthetic access$3902(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MediaController;)[S
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    return p0
.end method

.method static synthetic access$4102(Lorg/telegram/messenger/MediaController;I)I
    .locals 0

    .line 106
    iput p1, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MediaController;)Landroid/view/TextureView;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MediaController;)Landroid/app/Activity;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    return-object p0
.end method

.method static synthetic access$4402(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/PipRoundVideoView;)Lorg/telegram/ui/Components/PipRoundVideoView;
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    return-object p1
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MediaController;Z)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->playNextMessageWithoutOrder(Z)V

    return-void
.end method

.method static synthetic access$4700(ILjava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 106
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->saveFileInternal(ILjava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$VideoConvertMessage;)Z
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->convertVideo(Lorg/telegram/messenger/MediaController$VideoConvertMessage;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;ZJJZF)V
    .locals 0

    .line 106
    invoke-direct/range {p0 .. p9}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;ZJJZF)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayerNum:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/VideoPlayer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object p0
.end method

.method static synthetic access$5402(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MediaController;)I
    .locals 0

    .line 106
    iget p0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MediaController;)Z
    .locals 0

    .line 106
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

    .line 4735
    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4736
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4738
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

    .line 2079
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2082
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2083
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2085
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2086
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2088
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 2090
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    .line 2091
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2092
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2094
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2095
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    return-void
.end method

.method private checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 2484
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
    const/4 p1, 0x1

    goto :goto_1

    .line 2485
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    .line 2493
    :goto_1
    iget v0, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-eq v0, p1, :cond_5

    .line 2494
    iput p1, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-ne p1, v3, :cond_3

    .line 2497
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    goto :goto_3

    .line 2499
    :cond_3
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    if-ne p1, v1, :cond_4

    const/4 p1, 0x3

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {v0, p0, v3, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    :goto_3
    if-ne p1, v2, :cond_5

    .line 2502
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    :cond_5
    return-void
.end method

.method public static checkGallery()V
    .locals 5

    .line 831
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 834
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 835
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
    .locals 5

    .line 2432
    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->canDownloadNextTrack()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2435
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    :goto_0
    if-eqz v0, :cond_9

    .line 2436
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    goto/16 :goto_4

    .line 2440
    :cond_2
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2441
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v1, v1, 0x1

    .line 2442
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    .line 2446
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4

    .line 2448
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_4
    :goto_1
    if-ltz v1, :cond_9

    .line 2451
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_5

    goto :goto_4

    .line 2455
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 2457
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_7

    .line 2458
    new-instance v1, Ljava/io/File;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2459
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v3, v1

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    move-object v1, v3

    goto :goto_3

    .line 2463
    :cond_8
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 2464
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    if-eq v1, v3, :cond_9

    .line 2465
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2466
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    :cond_9
    :goto_4
    return-void
.end method

.method private checkIsNextVoiceFileDownloaded(I)V
    .locals 4

    .line 2413
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 2416
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 2418
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 2419
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2420
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    move-object v1, v2

    goto :goto_1

    .line 2424
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 2425
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    if-eq v1, v2, :cond_4

    .line 2426
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2427
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    :cond_4
    :goto_2
    return-void
.end method

.method private checkScreenshots(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1319
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastChatEnterTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1324
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 1325
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 1326
    iget-wide v7, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v9, v7, v2

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v11, v7, v9

    if-gtz v11, :cond_1

    goto :goto_1

    .line 1330
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/messenger/MediaController;->lastChatEnterTime:J

    cmp-long v11, v7, v9

    if-ltz v11, :cond_3

    .line 1331
    iget-wide v7, p0, Lorg/telegram/messenger/MediaController;->lastChatLeaveTime:J

    cmp-long v9, v7, v2

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/messenger/MediaController;->lastChatLeaveTime:J

    add-long/2addr v9, v0

    cmp-long v11, v7, v9

    if-gtz v11, :cond_3

    .line 1332
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

    .line 1338
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1339
    iget p1, p0, Lorg/telegram/messenger/MediaController;->lastChatAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/SecretChatHelper;->getInstance(I)Lorg/telegram/messenger/SecretChatHelper;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->lastChatVisibleMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_2

    .line 1341
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

    .line 1221
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isFromMusicPlaylist:Z

    .line 1222
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1223
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1224
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1225
    iput v0, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    .line 1226
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistEndReached:[Z

    const/4 v2, 0x1

    aput-boolean v0, v1, v2

    aput-boolean v0, v1, v0

    const-wide/16 v3, 0x0

    .line 1227
    iput-wide v3, p0, Lorg/telegram/messenger/MediaController;->playlistMergeDialogId:J

    .line 1228
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistMaxId:[I

    const v3, 0x7fffffff

    aput v3, v1, v2

    aput v3, v1, v0

    .line 1229
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    return-void
.end method

.method private convertVideo(Lorg/telegram/messenger/MediaController$VideoConvertMessage;)Z
    .locals 45

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 4987
    iget-object v1, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 4988
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v1, :cond_13

    if-nez v2, :cond_0

    goto/16 :goto_d

    .line 4992
    :cond_0
    iget-object v4, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 4993
    iget-wide v5, v2, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 4994
    iget-wide v7, v2, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    .line 4995
    iget-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 4996
    iget v12, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 4997
    iget v13, v2, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 4998
    iget v15, v2, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 4999
    iget v14, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 5000
    iget v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 5001
    iget v0, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 5002
    iget v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    move/from16 v16, v11

    .line 5003
    iget v11, v2, Lorg/telegram/messenger/VideoEditedInfo;->originalBitrate:I

    .line 5004
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v17

    move-object/from16 v41, v2

    .line 5005
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5006
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5007
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 5009
    :cond_1
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    .line 5010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v42, v2

    const-string v2, "begin convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " avatarStartTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " endTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " rWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " framerate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bitrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " originalBitrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v42, v2

    :goto_0
    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    const-wide/16 v1, 0x0

    cmp-long v18, v5, v1

    if-lez v18, :cond_4

    cmp-long v19, v9, v1

    if-lez v19, :cond_4

    sub-long v1, v9, v5

    move-wide/from16 v31, v1

    goto :goto_1

    :cond_4
    cmp-long v19, v9, v1

    if-lez v19, :cond_5

    move-wide/from16 v31, v9

    :goto_1
    move v2, v12

    move/from16 v18, v13

    move-object/from16 v1, v41

    goto :goto_3

    :cond_5
    if-lez v18, :cond_6

    move v2, v12

    move/from16 v18, v13

    move-object/from16 v1, v41

    .line 5023
    iget-wide v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    sub-long/2addr v12, v5

    goto :goto_2

    :cond_6
    move v2, v12

    move/from16 v18, v13

    move-object/from16 v1, v41

    .line 5025
    iget-wide v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->originalDuration:J

    :goto_2
    move-wide/from16 v31, v12

    :goto_3
    const/16 v12, 0x3b

    if-nez v0, :cond_7

    const/16 v0, 0x19

    goto :goto_4

    :cond_7
    if-le v0, v12, :cond_8

    const/16 v0, 0x3b

    :cond_8
    :goto_4
    const/16 v12, 0x5a

    if-eq v15, v12, :cond_a

    const/16 v12, 0x10e

    if-ne v15, v12, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v13, v18

    goto :goto_6

    :cond_a
    :goto_5
    move v13, v2

    move/from16 v2, v18

    .line 5040
    :goto_6
    iget-boolean v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->shouldLimitFps:Z

    if-nez v12, :cond_b

    const/16 v12, 0x28

    if-le v0, v12, :cond_b

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    move/from16 v18, v0

    const/16 v0, 0x1e0

    if-gt v12, v0, :cond_c

    const/16 v0, 0x1e

    const/16 v21, 0x1e

    goto :goto_7

    :cond_b
    move/from16 v18, v0

    :cond_c
    move/from16 v21, v18

    :goto_7
    const-wide/16 v18, -0x1

    cmp-long v12, v7, v18

    if-nez v12, :cond_e

    .line 5044
    iget-object v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-nez v12, :cond_e

    iget-object v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    if-nez v12, :cond_e

    iget-object v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    if-nez v12, :cond_e

    iget-object v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    if-nez v12, :cond_e

    if-ne v2, v14, :cond_e

    if-ne v13, v3, :cond_e

    if-nez v15, :cond_e

    iget-boolean v12, v1, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    if-nez v12, :cond_e

    cmp-long v12, v5, v18

    if-eqz v12, :cond_d

    goto :goto_8

    :cond_d
    const/16 v30, 0x0

    goto :goto_9

    :cond_e
    :goto_8
    const/16 v30, 0x1

    .line 5048
    :goto_9
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v0, "videoconvert"

    move/from16 v18, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    .line 5052
    new-instance v12, Lorg/telegram/messenger/MediaController$13;

    move-object/from16 v39, v12

    move-object/from16 v13, p0

    move-wide/from16 v28, v7

    move/from16 v22, v16

    move-object/from16 v7, v42

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v1, v7, v0}, Lorg/telegram/messenger/MediaController$13;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/VideoEditedInfo;Ljava/io/File;Lorg/telegram/messenger/MediaController$VideoConvertMessage;)V

    const/4 v8, 0x1

    .line 5079
    iput-boolean v8, v1, Lorg/telegram/messenger/VideoEditedInfo;->videoConvertFirstWrite:Z

    .line 5081
    new-instance v8, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;

    move-object v12, v8

    invoke-direct {v8}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;-><init>()V

    .line 5082
    iget-object v0, v1, Lorg/telegram/messenger/VideoEditedInfo;->filterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    move-object/from16 v33, v0

    iget-object v0, v1, Lorg/telegram/messenger/VideoEditedInfo;->paintPath:Ljava/lang/String;

    move-object/from16 v34, v0

    iget-object v0, v1, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    iget-boolean v0, v1, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    move/from16 v36, v0

    iget-object v0, v1, Lorg/telegram/messenger/VideoEditedInfo;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    move-object/from16 v37, v0

    iget-boolean v0, v1, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    move/from16 v38, v0

    move-object v0, v8

    move-object v8, v13

    move/from16 v20, v18

    move-object v13, v4

    move v4, v14

    move-object v14, v7

    move/from16 v16, v17

    move/from16 v17, v4

    move/from16 v18, v3

    move/from16 v19, v2

    move/from16 v23, v11

    move-wide/from16 v24, v5

    move-wide/from16 v26, v9

    invoke-virtual/range {v12 .. v39}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideo(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJZJLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;ZLorg/telegram/messenger/MediaController$VideoConvertorListener;)Z

    move-result v2

    .line 5098
    iget-boolean v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    if-nez v3, :cond_f

    .line 5100
    iget-object v4, v8, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v4

    .line 5101
    :try_start_0
    iget-boolean v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    .line 5102
    monitor-exit v4

    goto :goto_a

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5105
    :cond_f
    :goto_a
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_10

    .line 5106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v43

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " canceled="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5109
    :cond_10
    invoke-interface/range {v42 .. v42}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "isPreviousOk"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x1

    .line 5110
    invoke-virtual {v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->getLastFrameTimestamp()J

    move-result-wide v5

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    if-nez v2, :cond_12

    if-eqz v3, :cond_11

    goto :goto_b

    :cond_11
    const/16 v40, 0x0

    goto :goto_c

    :cond_12
    :goto_b
    const/16 v40, 0x1

    :goto_c
    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v1, p0

    move-object v3, v7

    move-object/from16 v2, p1

    move-wide v7, v9

    move/from16 v9, v40

    move v10, v0

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;ZJJZF)V

    const/4 v0, 0x1

    return v0

    :cond_13
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public static copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, -0x1

    .line 4456
    invoke-static {p0, p1, v0, v1}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copyFileToCache(Landroid/net/Uri;Ljava/lang/String;J)Ljava/lang/String;
    .locals 13

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4466
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->fixFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4468
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v0

    .line 4469
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 4470
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

    .line 4472
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 4473
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 4474
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

    cmp-long v2, v0, p2

    if-lez v2, :cond_1

    .line 4534
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    return-object v4

    :cond_2
    const/4 v6, 0x0

    .line 4479
    :goto_0
    :try_start_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v5

    if-nez v6, :cond_3

    .line 4481
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    move-object v5, v7

    goto :goto_2

    :cond_3
    const-string v7, "."

    .line 4483
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v8, ")"

    const-string v9, " ("

    if-lez v7, :cond_4

    .line 4485
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

    .line 4487
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

    .line 4491
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_c

    .line 4492
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v7, p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 4493
    :try_start_4
    instance-of v0, v6, Ljava/io/FileInputStream;

    if-eqz v0, :cond_7

    .line 4494
    move-object v0, v6

    check-cast v0, Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4496
    :try_start_5
    const-class v7, Ljava/io/FileDescriptor;

    const-string v8, "getInt$"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 4497
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4498
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(I)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_7

    if-eqz v6, :cond_5

    .line 4521
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 4524
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    cmp-long v0, p2, v1

    if-lez v0, :cond_6

    int-to-long v0, v3

    cmp-long v2, v0, p2

    if-lez v2, :cond_6

    .line 4534
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_6
    return-object v4

    :catchall_0
    move-exception v0

    .line 4502
    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4505
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

    const/4 v8, 0x0

    .line 4508
    :cond_8
    :try_start_9
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 4509
    invoke-virtual {v7, v0, v3, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/2addr v8, v9

    cmp-long v9, p2, v1

    if-lez v9, :cond_8

    int-to-long v10, v8

    cmp-long v12, v10, p2

    if-lez v12, :cond_8

    .line 4521
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 4524
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4528
    :goto_4
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 4531
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_5
    if-lez v9, :cond_9

    if-lez v12, :cond_9

    .line 4534
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_9
    return-object v4

    .line 4515
    :cond_a
    :try_start_c
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 4521
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 4524
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4528
    :goto_6
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v4, v0

    .line 4531
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    cmp-long v0, p2, v1

    if-lez v0, :cond_b

    int-to-long v0, v8

    cmp-long v2, v0, p2

    if-lez v2, :cond_b

    .line 4534
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

    .line 4517
    :goto_9
    :try_start_f
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v6, :cond_d

    .line 4521
    :try_start_10
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v6, v0

    .line 4524
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_d
    :goto_a
    if-eqz v7, :cond_e

    .line 4528
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    move-object v6, v0

    .line 4531
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_e
    :goto_b
    cmp-long v0, p2, v1

    if-lez v0, :cond_f

    int-to-long v0, v3

    cmp-long v2, v0, p2

    if-lez v2, :cond_f

    .line 4534
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

    .line 4521
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_f

    :catch_c
    move-exception v0

    move-object v4, v0

    .line 4524
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_10
    :goto_f
    if-eqz v7, :cond_11

    .line 4528
    :try_start_13
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v4, v0

    .line 4531
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_11
    :goto_10
    cmp-long v0, p2, v1

    if-lez v0, :cond_12

    int-to-long v0, v3

    cmp-long v2, v0, p2

    if-lez v2, :cond_12

    .line 4534
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 4536
    :cond_12
    throw v6
.end method

.method private didWriteData(Lorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;ZJJZF)V
    .locals 13

    move-object v4, p1

    .line 4904
    iget-object v0, v4, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v9, v0, Lorg/telegram/messenger/VideoEditedInfo;->videoConvertFirstWrite:Z

    if-eqz v9, :cond_0

    const/4 v1, 0x0

    .line 4906
    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->videoConvertFirstWrite:Z

    .line 4908
    :cond_0
    new-instance v12, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;

    move-object v0, v12

    move-object v1, p0

    move/from16 v2, p8

    move/from16 v3, p3

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p9

    move-wide/from16 v7, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/MediaController;ZZLorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;FJZJ)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static findTrack(Landroid/media/MediaExtractor;Z)I
    .locals 4

    .line 4886
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4888
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 4889
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v3, "audio/"

    .line 4891
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_0
    const-string/jumbo v3, "video/"

    .line 4895
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

.method public static getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10

    const-string v0, "_display_name"

    const-string v1, ""

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 4432
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    .line 4433
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

    .line 4434
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4435
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    .line 4437
    :cond_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    .line 4433
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

    .line 4438
    :try_start_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 4442
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 p0, 0x2f

    .line 4443
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    add-int/lit8 p0, p0, 0x1

    .line 4445
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    return-object v2

    :catch_1
    move-exception p0

    .line 4450
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static getInstance()Lorg/telegram/messenger/MediaController;
    .locals 2

    .line 925
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    if-nez v0, :cond_1

    .line 927
    const-class v1, Lorg/telegram/messenger/MediaController;

    monitor-enter v1

    .line 928
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    if-nez v0, :cond_0

    .line 930
    new-instance v0, Lorg/telegram/messenger/MediaController;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaController;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    .line 932
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

    .line 4334
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

    .line 4339
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4340
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4341
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, p0

    :cond_0
    const/16 p0, 0xc

    new-array v3, p0, [B

    const/4 v4, 0x0

    .line 4346
    invoke-virtual {v2, v3, v4, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, p0, :cond_3

    .line 4347
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

    const-string p0, "png"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4366
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 4369
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-object p0

    .line 4350
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

    .line 4366
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 4369
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-object p0

    .line 4353
    :cond_2
    :try_start_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    .line 4355
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "riff"

    .line 4356
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_3

    .line 4366
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 4369
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-object v0

    .line 4366
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

    .line 4362
    :try_start_8
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_4

    .line 4366
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    :catch_5
    move-exception p0

    .line 4369
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-object v1

    :goto_5
    if-eqz v1, :cond_5

    .line 4366
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 4369
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4371
    :cond_5
    :goto_6
    throw p0
.end method

.method public static getVideoBitrate(Ljava/lang/String;)I
    .locals 1

    .line 5116
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 5119
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x14

    .line 5120
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5122
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 5126
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5128
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return p0
.end method

.method private static getVideoBitrateWithFactor(F)I
    .locals 1

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float p0, p0, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p0, p0, v0

    const v0, 0x3f90a3d7    # 1.13f

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static isGif(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4404
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 p0, 0x3

    new-array v2, p0, [B

    .line 4406
    invoke-virtual {v1, v2, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 4407
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "gif"

    .line 4408
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 4417
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4420
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return p0

    .line 4417
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

    .line 4413
    :try_start_3
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 4417
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 4420
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_2

    .line 4417
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 4420
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4422
    :cond_2
    :goto_3
    throw p0
.end method

.method private isNearToSensor(F)Z
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1500
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

    .line 2034
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

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-wide v3, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static isWebp(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4378
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/16 p0, 0xc

    new-array v2, p0, [B

    .line 4380
    invoke-virtual {v1, v2, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 4381
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    .line 4382
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "riff"

    .line 4383
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

    .line 4392
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4395
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return p0

    .line 4392
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

    .line 4388
    :try_start_3
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    .line 4392
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 4395
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_2

    .line 4392
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 4395
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4397
    :cond_2
    :goto_3
    throw p0
.end method

.method private static synthetic lambda$broadcastNewPhotos$42(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)V
    .locals 9

    .line 4739
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x3e8

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 4740
    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void

    .line 4743
    :cond_0
    sput-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    .line 4744
    sput-object p2, Lorg/telegram/messenger/MediaController;->allPhotoAlbums:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4745
    sput-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    .line 4746
    sput-object p5, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 4747
    sput-object p4, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 4748
    sput-object p6, Lorg/telegram/messenger/MediaController;->allVideosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 4749
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
    .locals 12

    const-string v0, "COUNT(_id)"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 839
    :try_start_0
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 840
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 842
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 843
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v5, v3

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    :cond_0
    move-object v4, v2

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 851
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v5

    move-object v4, v2

    .line 848
    :goto_1
    :try_start_2
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v4, :cond_2

    .line 851
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v5, 0x0

    .line 855
    :cond_3
    :goto_2
    :try_start_3
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 856
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 858
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 859
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/2addr v5, v0

    :cond_4
    if-eqz v4, :cond_5

    .line 867
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 864
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    if-eq p0, v5, :cond_7

    .line 871
    sget-object p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_6

    .line 872
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 873
    sput-object v2, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    .line 875
    :cond_6
    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    :cond_7
    return-void

    :catchall_3
    move-exception p0

    if-eqz v4, :cond_8

    .line 867
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 869
    :cond_8
    throw p0

    :catchall_4
    move-exception p0

    if-eqz v4, :cond_9

    .line 851
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_9
    throw p0
.end method

.method private synthetic lambda$cleanupPlayer$10(Lorg/telegram/ui/Components/VideoPlayer;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1901
    iget v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    .line 1906
    :goto_0
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    return-void
.end method

.method private synthetic lambda$didWriteData$43(ZZLorg/telegram/messenger/MediaController$VideoConvertMessage;Ljava/io/File;FJZJ)V
    .locals 11

    move-object v1, p0

    move-object v0, p3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 4910
    :cond_0
    iget-object v3, v1, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v3

    .line 4911
    :try_start_0
    iget-object v4, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-boolean v2, v4, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    .line 4912
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4913
    iget-object v3, v1, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4914
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    .line 4917
    :cond_1
    iget-object v3, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    instance-of v3, v3, Lorg/fork/utils/AnimatedStickerEditedInfo;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    if-eqz p1, :cond_2

    .line 4919
    iget v0, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPreparingFailed:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 4921
    iget v0, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->gifStickerAvatarPrepared:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v3, 0x3

    const/4 v6, 0x4

    if-eqz p1, :cond_5

    .line 4927
    iget v7, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->filePreparingFailed:I

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v0, v6, v2

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {v7, v8, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-eqz p8, :cond_6

    .line 4930
    iget v7, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->filePreparingStarted:I

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v10, v9, v2

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4932
    :cond_6
    iget v7, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->fileNewChunkAvailable:I

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    aput-object v0, v9, v2

    invoke-virtual {p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v5

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v4

    if-eqz p2, :cond_7

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_1

    :cond_7
    const-wide/16 v4, 0x0

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v0, 0x5

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v0

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 4912
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private synthetic lambda$generateWaveform$28(Ljava/lang/String;[BLorg/telegram/messenger/MessageObject;)V
    .locals 11

    .line 3696
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 3700
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3701
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3702
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3703
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_1

    .line 3704
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 3705
    iget p2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3709
    :cond_2
    :goto_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 3710
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3711
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v9, p3, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZZI)V

    .line 3712
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3713
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3714
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

.method private synthetic lambda$generateWaveform$29(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 3694
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->getWaveform(Ljava/lang/String;)[B

    move-result-object p1

    .line 3695
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;[BLorg/telegram/messenger/MessageObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$loadGalleryPhotosAlbums$40(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/MediaController$PhotoEntry;)I
    .locals 3

    .line 4720
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    iget-wide p0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$loadGalleryPhotosAlbums$41(I)V
    .locals 50

    const-string v1, "AllMedia"

    const-string v2, "_size"

    const-string v3, "height"

    const-string/jumbo v4, "width"

    const-string v5, "_data"

    const-string v6, "bucket_display_name"

    const-string v7, "bucket_id"

    const-string v8, "_id"

    const-string v9, " DESC"

    const-string v10, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v11, "date_modified"

    const-string v12, "datetaken"

    .line 4542
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4543
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4544
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v16, v11

    .line 4545
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    const/16 v17, 0x0

    .line 4551
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v12

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/Camera/"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v19, v12

    .line 4553
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object/from16 v12, v17

    :goto_1
    move-object/from16 v18, v11

    .line 4560
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v0, v11, :cond_1

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    goto :goto_3

    :cond_0
    move-object/from16 v34, v2

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v22, v8

    move-object/from16 v26, v9

    move-object/from16 v28, v10

    move-object/from16 v10, v17

    move-object/from16 v30, v10

    :goto_2
    move-object/from16 v31, v30

    move-object/from16 v32, v31

    goto/16 :goto_d

    .line 4561
    :cond_1
    :goto_3
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    sget-object v23, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v24, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    const/16 v25, 0x0

    const/16 v26, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    move-object/from16 v28, v10

    const/16 v10, 0x1c

    if-le v0, v10, :cond_2

    move-object/from16 v10, v16

    goto :goto_4

    :cond_2
    move-object/from16 v10, v19

    :goto_4
    :try_start_3
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v22 .. v27}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    if-eqz v10, :cond_c

    .line 4563
    :try_start_4
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    move-object/from16 v22, v8

    .line 4564
    :try_start_5
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    move-object/from16 v23, v7

    .line 4565
    :try_start_6
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    move-object/from16 v24, v6

    .line 4566
    :try_start_7
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    move-object/from16 v25, v5

    const/16 v5, 0x1c

    if-le v0, v5, :cond_3

    move-object/from16 v0, v16

    goto :goto_5

    :cond_3
    move-object/from16 v0, v19

    .line 4567
    :goto_5
    :try_start_8
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v5, "orientation"

    .line 4568
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    move-object/from16 v26, v9

    .line 4569
    :try_start_9
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v27, v4

    .line 4570
    :try_start_a
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v29, v3

    .line 4571
    :try_start_b
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v30, v17

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    .line 4573
    :goto_6
    :try_start_c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v34, :cond_b

    move-object/from16 v34, v2

    .line 4574
    :try_start_d
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4575
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_4

    move-object/from16 v2, v34

    goto :goto_6

    .line 4579
    :cond_4
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move/from16 v47, v6

    .line 4580
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v48, v8

    .line 4581
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4582
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 4583
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 4584
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 4585
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 4586
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    move/from16 v49, v0

    .line 4588
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/16 v42, 0x0

    move-object/from16 v35, v0

    move/from16 v36, v6

    move-object/from16 v40, v2

    invoke-direct/range {v35 .. v46}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    if-nez v30, :cond_5

    move/from16 v35, v3

    .line 4591
    new-instance v3, Lorg/telegram/messenger/MediaController$AlbumEntry;

    move/from16 v36, v4

    const-string v4, "AllPhotos"

    move/from16 v37, v5

    sget v5, Lorg/telegram/messenger/R$string;->AllPhotos:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 4592
    :try_start_e
    invoke-virtual {v15, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_5
    move/from16 v35, v3

    move/from16 v36, v4

    move/from16 v37, v5

    move-object/from16 v3, v30

    :goto_7
    if-nez v31, :cond_6

    .line 4595
    new-instance v4, Lorg/telegram/messenger/MediaController$AlbumEntry;

    sget v5, Lorg/telegram/messenger/R$string;->AllMedia:I

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move/from16 v38, v7

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 4596
    :try_start_f
    invoke-virtual {v14, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v30, v3

    goto/16 :goto_10

    :cond_6
    move/from16 v38, v7

    move-object/from16 v4, v31

    .line 4598
    :goto_8
    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 4599
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 4601
    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v5, :cond_8

    .line 4603
    new-instance v5, Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {v5, v6, v8, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 4604
    invoke-virtual {v13, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v32, :cond_7

    if-eqz v12, :cond_7

    if-eqz v2, :cond_7

    .line 4605
    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    .line 4606
    invoke-virtual {v14, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4607
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v32, v7

    goto :goto_9

    .line 4609
    :cond_7
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4612
    :cond_8
    :goto_9
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    move-object/from16 v5, v18

    .line 4614
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v7, :cond_a

    .line 4616
    new-instance v7, Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {v7, v6, v8, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 4617
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v33, :cond_9

    if-eqz v12, :cond_9

    if-eqz v2, :cond_9

    .line 4618
    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 4619
    invoke-virtual {v15, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4620
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v33, v2

    goto :goto_a

    .line 4622
    :cond_9
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4625
    :cond_a
    :goto_a
    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v18, v5

    move-object/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    move/from16 v5, v37

    move/from16 v7, v38

    move/from16 v6, v47

    move/from16 v8, v48

    move/from16 v0, v49

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    :cond_b
    move-object/from16 v34, v2

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v34, v2

    goto/16 :goto_10

    :catchall_4
    move-exception v0

    move-object/from16 v34, v2

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v29, v3

    goto :goto_c

    :catchall_6
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    goto :goto_b

    :catchall_a
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-object/from16 v23, v7

    goto :goto_b

    :catchall_b
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v22, v8

    :goto_b
    move-object/from16 v26, v9

    :goto_c
    move-object/from16 v30, v17

    goto :goto_f

    :cond_c
    move-object/from16 v34, v2

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v22, v8

    move-object/from16 v26, v9

    move-object/from16 v30, v17

    goto/16 :goto_2

    :goto_d
    if-eqz v10, :cond_d

    .line 4634
    :try_start_10
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_12

    :catch_2
    move-exception v0

    move-object v2, v0

    goto :goto_11

    :catchall_c
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v22, v8

    move-object/from16 v26, v9

    goto :goto_e

    :catchall_d
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v29, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v22, v8

    move-object/from16 v26, v9

    move-object/from16 v28, v10

    :goto_e
    move-object/from16 v10, v17

    move-object/from16 v30, v10

    :goto_f
    move-object/from16 v31, v30

    move-object/from16 v32, v31

    .line 4630
    :goto_10
    :try_start_11
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_14

    if-eqz v10, :cond_d

    .line 4634
    :try_start_12
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_12

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 4636
    :goto_11
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_d
    :goto_12
    move-object/from16 v18, v30

    .line 4642
    :try_start_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_f

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_13

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_1c

    .line 4643
    :cond_f
    :goto_13
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x1c

    if-le v0, v8, :cond_10

    move-object/from16 v8, v16

    goto :goto_14

    :cond_10
    move-object/from16 v8, v19

    :goto_14
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v26

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_e

    move-object/from16 v2, v22

    .line 4645
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v3, v23

    .line 4646
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v4, v24

    .line 4647
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v5, v25

    .line 4648
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x1c

    if-le v0, v6, :cond_11

    move-object/from16 v11, v16

    goto :goto_15

    :cond_11
    move-object/from16 v11, v19

    .line 4649
    :goto_15
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v6, "duration"

    .line 4650
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v7, v27

    .line 4651
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v8, v29

    .line 4652
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v9, v34

    .line 4653
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 4655
    :goto_16
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 4656
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4657
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_12

    goto :goto_16

    .line 4661
    :cond_12
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v16, v2

    .line 4662
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v19, v3

    .line 4663
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4664
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 4665
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 4666
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 4667
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 4668
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    move/from16 v22, v0

    .line 4670
    new-instance v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const-wide/16 v23, 0x3e8

    move/from16 v25, v4

    move/from16 v26, v5

    div-long v4, v20, v23

    long-to-int v5, v4

    const/16 v40, 0x1

    move-object/from16 v33, v0

    move/from16 v34, v2

    move-object/from16 v38, v11

    move/from16 v39, v5

    invoke-direct/range {v33 .. v44}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    if-nez v17, :cond_15

    .line 4673
    new-instance v4, Lorg/telegram/messenger/MediaController$AlbumEntry;

    const-string v5, "AllVideos"

    move/from16 v20, v6

    sget v6, Lorg/telegram/messenger/R$string;->AllVideos:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    const/4 v5, 0x1

    .line 4674
    :try_start_14
    iput-boolean v5, v4, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    if-eqz v31, :cond_13

    goto :goto_17

    :cond_13
    const/4 v5, 0x0

    :goto_17
    if-eqz v18, :cond_14

    add-int/lit8 v5, v5, 0x1

    .line 4682
    :cond_14
    invoke-virtual {v14, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_18

    :cond_15
    move/from16 v20, v6

    move-object/from16 v4, v17

    :goto_18
    if-nez v31, :cond_16

    .line 4685
    new-instance v5, Lorg/telegram/messenger/MediaController$AlbumEntry;

    sget v6, Lorg/telegram/messenger/R$string;->AllMedia:I

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v1

    const/4 v1, 0x0

    invoke-direct {v5, v1, v6, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    .line 4686
    :try_start_15
    invoke-virtual {v14, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    goto :goto_19

    :catchall_e
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v31, v5

    goto/16 :goto_1d

    :catchall_f
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_1d

    :cond_16
    move-object/from16 v21, v1

    move-object/from16 v5, v31

    .line 4688
    :goto_19
    :try_start_16
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 4689
    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 4691
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_18

    .line 4693
    new-instance v1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {v1, v2, v3, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    .line 4694
    invoke-virtual {v13, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v32, :cond_17

    if-eqz v12, :cond_17

    if-eqz v11, :cond_17

    .line 4695
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    if-eqz v3, :cond_17

    const/4 v3, 0x0

    .line 4696
    :try_start_17
    invoke-virtual {v14, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4697
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v32, v2

    goto :goto_1a

    :cond_17
    const/4 v3, 0x0

    .line 4699
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_18
    const/4 v3, 0x0

    .line 4703
    :goto_1a
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaController$AlbumEntry;->addPhoto(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    move-object/from16 v17, v4

    move-object/from16 v31, v5

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v6, v20

    move-object/from16 v1, v21

    move/from16 v0, v22

    move/from16 v4, v25

    move/from16 v5, v26

    goto/16 :goto_16

    :catchall_10
    move-exception v0

    goto :goto_1b

    :catchall_11
    move-exception v0

    const/4 v3, 0x0

    :goto_1b
    move-object/from16 v17, v4

    move-object/from16 v31, v5

    goto :goto_1e

    :goto_1c
    if-eqz v10, :cond_19

    .line 4712
    :try_start_18
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4

    goto :goto_20

    :catch_4
    move-exception v0

    move-object v1, v0

    goto :goto_1f

    :catchall_12
    move-exception v0

    :goto_1d
    const/4 v3, 0x0

    .line 4708
    :goto_1e
    :try_start_19
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_13

    if-eqz v10, :cond_19

    .line 4712
    :try_start_1a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5

    goto :goto_20

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 4714
    :goto_1f
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    :goto_20
    move-object/from16 v19, v17

    move-object/from16 v17, v31

    move-object/from16 v16, v32

    const/4 v11, 0x0

    .line 4718
    :goto_21
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_1a

    .line 4719
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda41;->INSTANCE:Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda41;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    :cond_1a
    const/16 v20, 0x0

    move/from16 v13, p0

    .line 4728
    invoke-static/range {v13 .. v20}, Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void

    :catchall_13
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_1b

    .line 4712
    :try_start_1b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    goto :goto_22

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 4714
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4717
    :cond_1b
    :goto_22
    throw v1

    :catchall_14
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_1c

    .line 4634
    :try_start_1c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_7

    goto :goto_23

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 4636
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4639
    :cond_1c
    :goto_23
    throw v1
.end method

.method private synthetic lambda$loadMoreMusic$11(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 6

    .line 2151
    iget v0, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    if-ne v0, p1, :cond_6

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    .line 2157
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 2159
    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 2160
    iget v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput v0, p1, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->nextSearchRate:I

    .line 2161
    invoke-static {p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 2162
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2163
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2164
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 2167
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v3, p4, v4, p2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 2168
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 2171
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2172
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

    .line 2175
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->sortPlaylist()V

    .line 2176
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 2177
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget p4, p4, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->totalCount:I

    if-ne p3, p4, :cond_4

    const/4 p3, 0x1

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p1, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->endReached:Z

    .line 2178
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz p1, :cond_5

    .line 2179
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    :cond_5
    if-eqz v1, :cond_6

    .line 2182
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

    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$loadMoreMusic$12(IILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 2150
    new-instance v6, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda23;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/MediaController;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 495
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->hasRecordAudioFocus:Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    const v0, 0xbb80

    .line 945
    :try_start_0
    iput v0, p0, Lorg/telegram/messenger/MediaController;->sampleRate:I

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 946
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x500

    .line 950
    :cond_0
    iput v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 953
    iget v1, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 954
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 955
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 958
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 4

    const/16 v0, 0x20

    .line 963
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "playbackSpeed"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    .line 964
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "musicPlaybackSpeed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    .line 965
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fastPlaybackSpeed"

    const v3, 0x3fe66666    # 1.8f

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->fastPlaybackSpeed:F

    .line 966
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fastMusicPlaybackSpeed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->fastMusicPlaybackSpeed:F

    .line 967
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xa

    .line 968
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 969
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 970
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 971
    :cond_0
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_1

    const-string v1, "gravity or linear sensor not found"

    .line 972
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 974
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x0

    .line 975
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 976
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 978
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    .line 979
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "telegram:proximity_lock"

    .line 980
    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 982
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 986
    :goto_0
    :try_start_1
    new-instance v1, Lorg/telegram/messenger/MediaController$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$4;-><init>(Lorg/telegram/messenger/MediaController;)V

    .line 1013
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    .line 1015
    invoke-virtual {v2, v1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1018
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

    .line 1026
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1027
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1028
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1029
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1030
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1031
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1032
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1033
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

    .line 1074
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1075
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 1077
    :cond_0
    iput v0, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 1078
    iput v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    .line 1080
    iput p1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 1081
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    if-eqz p1, :cond_4

    .line 1082
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    .line 1083
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1084
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    :cond_2
    const/4 v2, -0x3

    if-ne p1, v2, :cond_3

    .line 1088
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    if-ne p1, v2, :cond_4

    .line 1090
    iput v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 1091
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1092
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 1093
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    .line 1096
    :cond_4
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    return-void
.end method

.method private synthetic lambda$playEmojiSound$17(Ljava/io/File;)V
    .locals 4

    const/4 v0, 0x1

    .line 2850
    :try_start_0
    iget v1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayerNum:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayerNum:I

    .line 2851
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_0

    .line 2852
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 2854
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;-><init>(Z)V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2855
    new-instance v3, Lorg/telegram/messenger/MediaController$8;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/MediaController$8;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 2900
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "other"

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2901
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    .line 2902
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2904
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2905
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_1

    .line 2906
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 p1, 0x0

    .line 2907
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->emojiSoundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$playEmojiSound$18(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    .line 2912
    invoke-virtual {p0}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    return-void
.end method

.method private synthetic lambda$playEmojiSound$19(Lorg/telegram/messenger/MessagesController$EmojiSound;Lorg/telegram/messenger/AccountInstance;Z)V
    .locals 3

    .line 2837
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 2838
    iget-wide v1, p1, Lorg/telegram/messenger/MessagesController$EmojiSound;->accessHash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 2839
    iget-wide v1, p1, Lorg/telegram/messenger/MessagesController$EmojiSound;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-string/jumbo v1, "sound/ogg"

    .line 2840
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 2841
    iget-object p1, p1, Lorg/telegram/messenger/MessagesController$EmojiSound;->fileReference:[B

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 2842
    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentDatacenterId()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 2843
    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    .line 2844
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    return-void

    .line 2848
    :cond_0
    new-instance p2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda25;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/MediaController;Ljava/io/File;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2912
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

    .line 3147
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    return-void
.end method

.method private static synthetic lambda$playMessage$21(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V
    .locals 4

    .line 3161
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

    .line 3264
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

    .line 1301
    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastChatAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->screenshotTook:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1302
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkScreenshots(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$saveFile$34([ZLandroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4122
    aput-boolean v0, p0, p1

    return-void
.end method

.method private static synthetic lambda$saveFile$35([ZLorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    .line 4124
    aget-boolean p0, p0, v0

    if-nez p0, :cond_0

    .line 4125
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$saveFile$36(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 4191
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4193
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$saveFile$37(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 4213
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4215
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$saveFile$38(Lorg/telegram/ui/ActionBar/AlertDialog;[Z)V
    .locals 1

    .line 4247
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4248
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 4250
    aput-boolean v0, p1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4253
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$saveFile$39(ILjava/io/File;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;[ZLjava/lang/String;Ljava/lang/Runnable;[Z)V
    .locals 20

    move/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 4140
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_0

    const/4 v2, 0x0

    .line 4141
    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/MediaController;->saveFileInternal(ILjava/io/File;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_12

    :cond_0
    const/4 v4, 0x2

    const-string v5, "Telegram"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_1

    .line 4145
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v2, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4146
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 4147
    new-instance v5, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    if-ne v1, v6, :cond_2

    .line 4149
    new-instance v2, Ljava/io/File;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v2, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4150
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 4151
    new-instance v5, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    if-ne v1, v4, :cond_3

    .line 4155
    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    goto :goto_0

    .line 4157
    :cond_3
    sget-object v8, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 4159
    :goto_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4160
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 4161
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4162
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x2e

    .line 4163
    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v10, 0x0

    :goto_1
    const/16 v11, 0xa

    if-ge v10, v11, :cond_6

    const/4 v5, -0x1

    const-string v11, ")"

    const-string v12, "("

    if-eq v8, v5, :cond_4

    .line 4167
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 4169
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4171
    :goto_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4172
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    move-object v5, v11

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object v5, v11

    goto :goto_1

    .line 4178
    :cond_6
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 4179
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 4181
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v10, 0x1f4

    sub-long/2addr v8, v10

    .line 4182
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 4183
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 4185
    :try_start_7
    const-class v0, Ljava/io/FileDescriptor;

    const-string v12, "getInt$"

    new-array v13, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4186
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4187
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(I)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v3, :cond_8

    .line 4189
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda37;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_8
    if-eqz v19, :cond_9

    .line 4221
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object/from16 p2, v5

    goto/16 :goto_a

    :cond_9
    :goto_4
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object/from16 p2, v5

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    .line 4200
    :try_start_b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a
    const-wide/16 v12, 0x0

    :goto_5
    cmp-long v0, v12, v14

    if-gez v0, :cond_d

    .line 4203
    aget-boolean v0, p4, v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    move-object/from16 p2, v5

    sub-long v4, v14, v12

    const-wide/16 v6, 0x1000

    .line 4206
    :try_start_c
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    move-wide v4, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v18

    move-wide v6, v14

    move-wide v14, v4

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    if-eqz v3, :cond_c

    .line 4208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    cmp-long v0, v8, v12

    if-gtz v0, :cond_c

    .line 4209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-float v0, v4

    long-to-float v12, v6

    div-float/2addr v0, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v0, v0, v12

    float-to-int v0, v0

    .line 4211
    new-instance v12, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;

    invoke-direct {v12, v3, v0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_c
    const-wide/16 v12, 0x1000

    add-long/2addr v12, v4

    move-object/from16 v5, p2

    move-wide v14, v6

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_d
    :goto_6
    move-object/from16 p2, v5

    if-eqz v19, :cond_e

    .line 4221
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :cond_e
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object/from16 p2, v5

    :goto_7
    move-object v4, v0

    if-eqz v19, :cond_f

    .line 4182
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_11
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_8
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object/from16 p2, v5

    :goto_9
    move-object v4, v0

    :goto_a
    if-eqz v18, :cond_10

    :try_start_12
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v5, v0

    :try_start_13
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_b
    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_c

    :catchall_a
    move-exception v0

    move-object/from16 p2, v5

    :goto_c
    move-object v4, v0

    :goto_d
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception v0

    move-object v2, v0

    :try_start_15
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    move-object/from16 p2, v5

    .line 4222
    :goto_f
    :try_start_16
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 4225
    :goto_10
    aget-boolean v0, p4, v2

    if-eqz v0, :cond_11

    .line 4226
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    goto :goto_11

    :cond_11
    move v0, v6

    :goto_11
    if-eqz v0, :cond_13

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 4231
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/DownloadManager;

    .line 4232
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v10

    const/4 v12, 0x1

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v12}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    goto :goto_12

    .line 4234
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/io/File;)V

    :cond_13
    :goto_12
    if-eqz v0, :cond_14

    if-eqz p6, :cond_14

    .line 4239
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    .line 4242
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_14
    :goto_13
    if-eqz v3, :cond_15

    .line 4245
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda39;

    move-object/from16 v1, p7

    invoke-direct {v0, v3, v1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;[Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method

.method private synthetic lambda$setCurrentVideoVisible$14()V
    .locals 1

    const/4 v0, 0x1

    .line 2534
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    return-void
.end method

.method private synthetic lambda$setPlaybackSpeed$16(Lorg/telegram/messenger/MessageObject;F)V
    .locals 1

    .line 2612
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_1

    .line 2613
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2614
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 2616
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setTextureView$15()V
    .locals 1

    const/4 v0, 0x1

    .line 2569
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    return-void
.end method

.method private static synthetic lambda$sortPlaylist$13(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)I
    .locals 7

    .line 2260
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    .line 2261
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    .line 2262
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    .line 2263
    iget-object p0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    const-wide/16 v4, 0x0

    if-gez v0, :cond_1

    if-gez v1, :cond_1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    cmp-long v4, v2, p0

    if-nez v4, :cond_0

    .line 2266
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 2268
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_1
    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v4, v2, p0

    if-nez v4, :cond_2

    .line 2271
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 2273
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$startAudioAgain$7(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 1798
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method

.method private synthetic lambda$startRaiseToEarSensors$8()V
    .locals 3

    .line 1838
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    const/16 v1, 0x7530

    if-eqz v0, :cond_0

    .line 1839
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1841
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 1842
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1844
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 1845
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1847
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private synthetic lambda$startRecording$23(II)V
    .locals 3

    const/4 v0, 0x0

    .line 3614
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 3615
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

.method private synthetic lambda$startRecording$24(II)V
    .locals 3

    const/4 v0, 0x0

    .line 3639
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 3640
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

.method private synthetic lambda$startRecording$25(II)V
    .locals 3

    const/4 v0, 0x0

    .line 3672
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 3673
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

.method private synthetic lambda$startRecording$26(II)V
    .locals 3

    const/4 v0, 0x0

    .line 3680
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 3681
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

.method private synthetic lambda$startRecording$27(IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    .line 3612
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 3613
    new-instance p3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda20;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/MediaController;II)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3620
    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->setBluetoothScoOn(Z)V

    const/4 v0, 0x0

    .line 3622
    iput v0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    .line 3623
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3624
    iput p2, p0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    new-array v2, v0, [B

    .line 3625
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    const/high16 v2, -0x80000000

    .line 3626
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 3627
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 3628
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->user_id:J

    .line 3629
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    const-string v2, "audio/ogg"

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    new-array v2, v0, [B

    .line 3630
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 3631
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 3633
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 3634
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->lockFile(Ljava/io/File;)V

    .line 3637
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/MediaController;->sampleRate:I

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/MediaController;->startRecord(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 3638
    new-instance p3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda21;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/MediaController;II)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 3645
    :cond_1
    new-instance v7, Landroid/media/AudioRecord;

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/messenger/MediaController;->sampleRate:I

    const/16 v4, 0x10

    const/4 v5, 0x2

    iget v6, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    .line 3646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    const-wide/16 v1, 0x0

    .line 3647
    iput-wide v1, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    .line 3648
    iput-wide v1, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    .line 3649
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    .line 3650
    iput p1, p0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    .line 3651
    iput-object p5, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMsg:Lorg/telegram/messenger/MessageObject;

    .line 3652
    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->recordReplyingTopMsg:Lorg/telegram/messenger/MessageObject;

    .line 3653
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 3655
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p3}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3678
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3679
    new-instance p3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda19;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/MediaController;II)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception p3

    .line 3657
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p3, 0x0

    .line 3658
    iput-object p3, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3659
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopRecord()V

    .line 3660
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-static {p4}, Lorg/telegram/messenger/SharedConfig;->unlockFile(Ljava/io/File;)V

    .line 3661
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 3662
    iput-object p3, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 3664
    :try_start_1
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p4}, Landroid/media/AudioRecord;->release()V

    .line 3665
    iput-object p3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p3

    .line 3667
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3669
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->setBluetoothScoOn(Z)V

    .line 3671
    new-instance p3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda18;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/MediaController;II)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$stopRaiseToEarSensors$9()V
    .locals 2

    .line 1869
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 1870
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1872
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 1873
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1875
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 1876
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1878
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method private synthetic lambda$stopRecording$32(I)V
    .locals 6

    .line 3809
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

    const/4 v5, 0x1

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$stopRecording$33(IZILjava/lang/String;)V
    .locals 3

    .line 3780
    iget v0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3781
    iput v2, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    .line 3782
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(IZILjava/lang/String;)V

    return-void

    .line 3785
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    return-void

    .line 3789
    :cond_1
    :try_start_0
    iput p1, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    .line 3790
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneNotify:Z

    .line 3791
    iput p3, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneScheduleDate:I

    .line 3792
    iput-object p4, p0, Lorg/telegram/messenger/MediaController;->sendAfterDoneTemplateName:Ljava/lang/String;

    .line 3793
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 3794
    invoke-direct {p0, v2}, Lorg/telegram/messenger/MediaController;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3796
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3797
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    if-eqz p2, :cond_2

    .line 3798
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    const/4 p2, 0x0

    .line 3802
    invoke-direct {p0, v2, v2, v2, p2}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(IZILjava/lang/String;)V

    .line 3805
    :cond_3
    :try_start_1
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->feedbackView:Landroid/view/View;

    const/4 p3, 0x2

    invoke-virtual {p2, v1, p3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3809
    :catch_1
    new-instance p2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$stopRecordingInternal$30(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;IZILjava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v13, p3

    .line 3731
    iget v1, v0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 3732
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-long v1, v2

    iput-wide v1, v14, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 3733
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    const/4 v2, 0x1

    .line 3734
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->voice:Z

    .line 3735
    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    array-length v4, v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MediaController;->getWaveform2([SI)[B

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    if-eqz v3, :cond_0

    .line 3737
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 3739
    :cond_0
    iget-wide v3, v0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    const-wide/16 v5, 0x3e8

    .line 3740
    div-long v5, v3, v5

    long-to-int v6, v5

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 3741
    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x2bc

    const/4 v15, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    if-ne v13, v2, :cond_1

    .line 3744
    iget v1, v0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    iget-object v7, v0, Lorg/telegram/messenger/MediaController;->recordReplyingMsg:Lorg/telegram/messenger/MessageObject;

    iget-object v8, v0, Lorg/telegram/messenger/MediaController;->recordReplyingTopMsg:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v2, p1

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v19, p6

    invoke-virtual/range {v1 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v20, 0x1

    .line 3746
    :goto_0
    iget v1, v0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioDidSent:I

    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, v0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const/4 v4, 0x0

    move/from16 v5, p3

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    move-object/from16 v8, p1

    goto :goto_1

    :cond_2
    move-object v8, v4

    :goto_1
    aput-object v8, v3, v20

    if-ne v5, v7, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :cond_3
    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/16 v20, 0x1

    .line 3748
    iget v1, v0, Lorg/telegram/messenger/MediaController;->recordingCurrentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->audioRecordTooShort:I

    new-array v5, v5, [Ljava/lang/Object;

    iget v8, v0, Lorg/telegram/messenger/MediaController;->recordingGuid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v5, v20

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3749
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/SharedConfig;->unlockFile(Ljava/io/File;)V

    .line 3750
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    .line 3752
    :goto_2
    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    return-void
.end method

.method private synthetic lambda$stopRecordingInternal$31(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;IZILjava/lang/String;)V
    .locals 9

    .line 3728
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopRecord()V

    .line 3729
    new-instance v8, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda32;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;IZILjava/lang/String;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadGalleryPhotosAlbums(I)V
    .locals 2

    .line 4541
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    .line 4730
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 4731
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static makeVideoBitrate(IIIII)I
    .locals 5

    .line 5137
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x438

    if-lt v0, v2, :cond_0

    const v0, 0x67c280

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 5141
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x2d0

    if-lt v0, v2, :cond_1

    const v0, 0x27ac40

    goto :goto_0

    .line 5145
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

    .line 5154
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    div-float/2addr v3, p0

    float-to-int p0, v3

    int-to-float p0, p0

    mul-float p0, p0, v1

    float-to-int p0, p0

    .line 5156
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->getVideoBitrateWithFactor(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x49610000    # 921600.0f

    mul-int p4, p4, p3

    int-to-float p3, p4

    div-float/2addr v1, p3

    div-float/2addr p1, v1

    float-to-int p1, p1

    if-ge p2, p1, :cond_3

    return p0

    :cond_3
    if-le p0, v0, :cond_4

    return v0

    .line 5163
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private playNextMessageWithoutOrder(Z)V
    .locals 7

    .line 2306
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

    .line 2308
    sget v5, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-eq v5, v2, :cond_1

    if-ne v5, v4, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_2

    :cond_1
    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v5, :cond_2

    .line 2309
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2310
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 2311
    iput v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2312
    iput v3, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2313
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 2318
    :cond_2
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v5, :cond_3

    .line 2319
    iget v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2320
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_4

    .line 2321
    iput v3, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto :goto_1

    .line 2325
    :cond_3
    iget v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    sub-int/2addr v5, v4

    iput v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-gez v5, :cond_4

    .line 2327
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    iput v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_8

    if-eqz p1, :cond_8

    .line 2331
    sget p1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez p1, :cond_8

    .line 2332
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez p1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 2335
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2337
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2339
    :goto_3
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2340
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->unrefAudioVisualizeDrawable(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_5

    .line 2342
    :cond_6
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2343
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 2344
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 2345
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 2346
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 2347
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2349
    :try_start_1
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 2351
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2353
    :goto_4
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2354
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 2356
    :goto_5
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    const-wide/16 v5, 0x0

    .line 2357
    iput-wide v5, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 2358
    iput-boolean v4, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2359
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2360
    iput v3, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2361
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

    .line 2362
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

    :cond_7
    return-void

    .line 2366
    :cond_8
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz p1, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_9

    goto :goto_6

    .line 2369
    :cond_9
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_a

    .line 2370
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 2372
    :cond_a
    iput-boolean v4, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2373
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_b
    :goto_6
    return-void
.end method

.method private processMediaObserver(Landroid/net/Uri;)V
    .locals 13

    const/4 v0, 0x0

    .line 1263
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v1

    .line 1265
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

    .line 1266
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    .line 1268
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 1270
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1271
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 1272
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 1273
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x4

    .line 1274
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    .line 1275
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x6

    .line 1276
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v11, "screenshot"

    if-eqz v2, :cond_1

    .line 1277
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_1
    if-eqz v4, :cond_2

    .line 1278
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    if-eqz v5, :cond_3

    .line 1279
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    if-eqz v8, :cond_0

    .line 1280
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

    .line 1283
    :cond_5
    :try_start_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1284
    iput-boolean v3, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1285
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1286
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1287
    iget v10, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_6
    if-lez v9, :cond_8

    if-lez v10, :cond_8

    .line 1289
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-ne v9, v2, :cond_7

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-eq v10, v3, :cond_8

    :cond_7
    if-ne v10, v2, :cond_0

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-ne v9, v2, :cond_0

    .line 1290
    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1293
    :catch_0
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1297
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1299
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1300
    new-instance v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    if-eqz v0, :cond_c

    .line 1310
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

    .line 1306
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

    .line 1310
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1315
    :catch_3
    :cond_d
    throw p1
.end method

.method private resumeAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 6

    .line 3508
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

    .line 3513
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 3514
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 3515
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3516
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3518
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

    .line 3519
    iget v4, p0, Lorg/telegram/messenger/MediaController;->audioVolume:F

    aput v4, v0, v1

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    .line 3520
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioVolumeUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3521
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3522
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3524
    :cond_3
    iput v2, p0, Lorg/telegram/messenger/MediaController;->audioVolume:F

    .line 3525
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 3527
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_4

    .line 3528
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_1

    .line 3529
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_5

    .line 3530
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 3532
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 3533
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 3534
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

    .line 3536
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

    .line 4090
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 4099
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 4100
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4101
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

    .line 4112
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    new-array v12, v0, [Z

    if-eqz p2, :cond_4

    .line 4118
    :try_start_0
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v5, 0x2

    invoke-direct {v4, p1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string v1, "Loading"

    .line 4119
    sget v5, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4120
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4121
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4122
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda1;

    invoke-direct {v0, v9}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda1;-><init>([Z)V

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4123
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda40;

    invoke-direct {v0, v12, v4}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda40;-><init>([ZLorg/telegram/ui/ActionBar/AlertDialog;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v4

    goto :goto_2

    :catch_0
    move-exception v0

    .line 4130
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    move-object v8, v3

    .line 4136
    :goto_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda5;

    move-object v4, v1

    move v5, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v12}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda5;-><init>(ILjava/io/File;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;[ZLjava/lang/String;Ljava/lang/Runnable;[Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4257
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_5
    :goto_3
    return-void
.end method

.method private static saveFileInternal(ILjava/io/File;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    .line 4264
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4265
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4268
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v4, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v4, :cond_3

    :cond_1
    if-eqz v3, :cond_3

    const-string v5, "image"

    .line 4272
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x0

    :cond_2
    const-string/jumbo v5, "video"

    .line 4275
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3

    const/4 p0, 0x1

    :cond_3
    const-string v5, "mime_type"

    const-string v6, "_display_name"

    const-string v7, "relative_path"

    const-string v8, "Telegram"

    const-string v9, "external_primary"

    if-nez p0, :cond_5

    if-nez p2, :cond_4

    .line 4281
    :try_start_1
    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4283
    :cond_4
    invoke-static {v9}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4284
    new-instance v2, Ljava/io/File;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4285
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4286
    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4287
    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    if-ne p0, v4, :cond_7

    if-nez p2, :cond_6

    .line 4290
    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4292
    :cond_6
    new-instance p0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-direct {p0, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v7, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4294
    invoke-static {v9}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4295
    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    if-ne p0, v2, :cond_9

    if-nez p2, :cond_8

    .line 4298
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 4300
    :cond_8
    new-instance p0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-direct {p0, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v7, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4302
    invoke-static {v9}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4303
    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    if-nez p2, :cond_a

    .line 4306
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 4308
    :cond_a
    new-instance p0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-direct {p0, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v7, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4310
    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 4311
    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4314
    :goto_0
    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4316
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 4318
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4319
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    .line 4320
    invoke-static {p2, p0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 4321
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    return v4

    :catch_0
    move-exception p0

    .line 4325
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
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

    .line 4083
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4086
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

    .line 4831
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 4834
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 4835
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 4838
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 4839
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 4840
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4842
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v8, "OMX.SEC.avc.enc"

    .line 4844
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    return-object v4

    :cond_1
    const-string v8, "OMX.SEC.AVC.Encoder"

    .line 4846
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

    .line 4871
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4873
    :goto_0
    iget-object v2, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 4874
    aget v2, v2, v0

    .line 4875
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->isRecognizedFormat(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4877
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

    .line 2938
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2939
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_5

    .line 2940
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 2942
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

    .line 2943
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2944
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 2945
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2946
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2951
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method

.method private setPlayerVolume()V
    .locals 3

    .line 1103
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isSilent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1105
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    .line 1110
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_2

    .line 1111
    iget v2, p0, Lorg/telegram/messenger/MediaController;->audioVolume:F

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    goto :goto_1

    .line 1112
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_3

    .line 1113
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1116
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setUseFrontSpeaker(Z)V
    .locals 1

    .line 1749
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1750
    sget-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1752
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1753
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1755
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :goto_0
    return-void
.end method

.method private sortPlaylist()V
    .locals 2

    .line 2259
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    sget-object v1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda42;->INSTANCE:Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda42;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private startAudioAgain(Z)V
    .locals 7

    .line 1769
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 1773
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

    .line 1774
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_4

    .line 1775
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    :goto_0
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    if-nez p1, :cond_3

    .line 1777
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 1778
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 1780
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_4

    .line 1782
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_4

    .line 1785
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 1786
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1787
    iget v4, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1788
    iget v6, v3, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    .line 1789
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    int-to-float v0, v6

    mul-float v0, v0, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v6

    if-lez v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 1792
    iput v0, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    goto :goto_3

    .line 1790
    :cond_7
    :goto_2
    iput v4, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1794
    :goto_3
    invoke-virtual {p0, v5, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1795
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    if-eqz p1, :cond_9

    if-eqz v1, :cond_8

    .line 1798
    new-instance p1, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda29;

    invoke-direct {p1, p0, v3}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_4

    .line 1800
    :cond_8
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_9
    :goto_4
    return-void
.end method

.method private startProgressTimer(Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    .line 1125
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1126
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1128
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 1129
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1131
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1134
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    .line 1135
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 1136
    new-instance v2, Lorg/telegram/messenger/MediaController$5;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/MediaController$5;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x11

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1189
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
    .locals 6

    .line 4795
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 4796
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    .line 4797
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 4798
    iget-object v3, v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 4799
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v4

    if-eqz v3, :cond_0

    .line 4801
    :try_start_0
    iput-boolean v1, v3, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    .line 4803
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4804
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/messenger/VideoEncodingService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "path"

    .line 4805
    iget-object v5, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "currentAccount"

    .line 4806
    iget v5, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4807
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 4808
    :goto_0
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 4809
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 4810
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v4, :cond_1

    const-string v1, "gif"

    .line 4811
    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4816
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 4818
    :try_start_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 4820
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4823
    :cond_3
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MediaController$VideoConvertMessage;)V

    return v5

    :catchall_1
    move-exception v0

    .line 4803
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    return v1
.end method

.method private stopProgressTimer()V
    .locals 2

    .line 1193
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1196
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 1197
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1199
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1202
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

.method private stopRecordingInternal(IZILjava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_1

    .line 3722
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3723
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 3724
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stop recording internal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3727
    :cond_0
    iget-object v8, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v9, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda33;

    move-object v0, v9

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;IZILjava/lang/String;)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3756
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->unlockFile(Ljava/io/File;)V

    .line 3757
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    if-eqz p1, :cond_2

    .line 3758
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 p1, 0x0

    .line 3760
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    :goto_0
    const/4 p1, 0x0

    .line 3763
    :try_start_0
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz p2, :cond_3

    .line 3764
    invoke-virtual {p2}, Landroid/media/AudioRecord;->release()V

    .line 3765
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 3768
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3770
    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3771
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-void
.end method

.method private updateVideoState(Lorg/telegram/messenger/MessageObject;[IZZI)V
    .locals 4

    .line 2650
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x80

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p5, v1, :cond_1

    if-eq p5, v2, :cond_1

    .line 2655
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

    .line 2657
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2661
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

    .line 2663
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x3

    const/4 v3, 0x0

    if-ne p5, v0, :cond_4

    .line 2667
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playerWasReady:Z

    .line 2668
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2669
    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2670
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 2672
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    goto :goto_1

    :cond_4
    const/4 p1, 0x2

    if-ne p5, p1, :cond_7

    if-eqz p4, :cond_a

    .line 2674
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2675
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->playerWasReady:Z

    if-eqz p1, :cond_6

    .line 2676
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 2678
    :cond_6
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x3e8

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 2681
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_a

    if-ne p5, v1, :cond_a

    .line 2682
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_9

    if-nez p3, :cond_9

    if-eqz p2, :cond_8

    aget p1, p2, v3

    if-ge p1, v1, :cond_9

    .line 2683
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    if-eqz p2, :cond_a

    .line 2685
    aget p1, p2, v3

    add-int/2addr p1, v2

    aput p1, p2, v3

    goto :goto_1

    .line 2688
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

    .line 4775
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 4776
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4777
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    .line 4778
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 4779
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessageObject;->equals(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iget v3, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    if-ne v2, v3, :cond_1

    if-nez v0, :cond_0

    .line 4781
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter p1

    .line 4782
    :try_start_0
    iget-object v0, v1, Lorg/telegram/messenger/MediaController$VideoConvertMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/VideoEditedInfo;->canceled:Z

    .line 4783
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4785
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

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

    .line 2406
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2409
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->checkIsNextMusicFileDownloaded(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkVolumeBarUI()V
    .locals 7

    .line 2919
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isSilent:Z

    if-eqz v0, :cond_0

    return-void

    .line 2923
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2924
    sget-wide v2, Lorg/telegram/messenger/MediaController;->volumeBarLastTimeShown:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    return-void

    .line 2927
    :cond_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 2928
    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    .line 2929
    :goto_0
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v5, 0x1

    .line 2931
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 2932
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

    .line 1206
    invoke-virtual {p0, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    const/4 v0, 0x0

    .line 1207
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    const/4 v1, 0x0

    .line 1208
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1210
    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->cleanup()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1212
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1213
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1214
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 1215
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    .line 1216
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    .line 1217
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public cleanupPlayer(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1886
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZZ)V

    return-void
.end method

.method public cleanupPlayer(ZZZZ)V
    .locals 10

    .line 1890
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 1891
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_0

    .line 1892
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1893
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1896
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

    .line 1897
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-array v0, v3, [F

    .line 1898
    iget v7, p0, Lorg/telegram/messenger/MediaController;->audioVolume:F

    aput v7, v0, v6

    const/4 v7, 0x0

    aput v7, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1899
    new-instance v7, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p4}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/VideoPlayer;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1908
    new-instance v7, Lorg/telegram/messenger/MediaController$6;

    invoke-direct {v7, p0, p4}, Lorg/telegram/messenger/MediaController$6;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/VideoPlayer;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v7, 0x12c

    .line 1918
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1919
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1922
    :cond_1
    :try_start_0
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p4, v4}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 1924
    invoke-static {p4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1927
    :goto_0
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1928
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/Theme;->unrefAudioVisualizeDrawable(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_3

    .line 1929
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_5

    .line 1930
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1931
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 1932
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 1933
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    .line 1934
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 1935
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->goingToShowMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_3

    .line 1937
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/PhotoViewer;->injectVideoPlayer(Lorg/telegram/ui/Components/VideoPlayer;)V

    .line 1938
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->goingToShowMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1939
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

    .line 1941
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v7

    .line 1942
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    cmp-long v0, v7, v1

    if-lez v0, :cond_4

    .line 1943
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    long-to-int v8, v7

    iput v8, v0, Lorg/telegram/messenger/MessageObject;->audioProgressMs:I

    .line 1944
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

    .line 1946
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 1947
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1950
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

    .line 1952
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1954
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_5

    if-nez p4, :cond_5

    .line 1955
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->setLoadingRunnable:Ljava/lang/Runnable;

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1956
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget p4, p4, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {p4, v0, v4, v6}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 1959
    :cond_5
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 1960
    iput-wide v1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 1961
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 1962
    iget-boolean p4, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez p4, :cond_6

    sget-boolean p4, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    if-nez p4, :cond_6

    .line 1963
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1964
    invoke-virtual {p0, p4, v6}, Lorg/telegram/messenger/MediaController;->stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;Z)V

    .line 1965
    iput-object p4, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1967
    :cond_6
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p4

    if-eqz p4, :cond_7

    iget-boolean p4, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez p4, :cond_7

    .line 1968
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1970
    :cond_7
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_10

    .line 1971
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_8

    .line 1972
    iget p4, p4, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1974
    :cond_8
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_9

    .line 1976
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 1977
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

    .line 1979
    :cond_9
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1980
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz p1, :cond_f

    .line 1982
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1983
    iput v6, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    const/4 p1, -0x1

    .line 1985
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    if-eqz p3, :cond_a

    .line 1986
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_a

    .line 1987
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1988
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1989
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1990
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 1991
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    goto :goto_4

    .line 1994
    :cond_a
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 1995
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    .line 1999
    :cond_b
    :goto_4
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_c

    .line 2000
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 2001
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 2002
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz p1, :cond_f

    .line 2003
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 2004
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    goto :goto_5

    .line 2007
    :cond_c
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-eqz p1, :cond_e

    .line 2008
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->startRecordingIfFromSpeaker()V

    .line 2010
    :cond_e
    iget p1, p4, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    aput-object p4, v0, v4

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2011
    iput v6, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2012
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz p1, :cond_f

    .line 2013
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 2014
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    :cond_f
    :goto_5
    if-eqz p2, :cond_10

    .line 2019
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class p3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2020
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_10
    return-void
.end method

.method public currentPlaylistIsGlobalSearch()Z
    .locals 1

    .line 5197
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

    .line 1359
    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_16

    sget v0, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_7

    .line 1377
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v0, 0x2

    if-ne p1, p2, :cond_4

    .line 1378
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1382
    :cond_1
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1383
    aget-object p3, p3, v2

    check-cast p3, Ljava/util/ArrayList;

    .line 1384
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    .line 1385
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v5, p1, v3

    if-nez v5, :cond_2

    .line 1386
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1387
    invoke-virtual {p0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1391
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1392
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1393
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v3, p1, v0

    if-nez v3, :cond_18

    .line 1394
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_18

    .line 1395
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1396
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 1397
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p2, :cond_3

    .line 1399
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1404
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    if-ne p1, p2, :cond_5

    .line 1405
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1406
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    cmp-long p3, v3, p1

    if-nez p3, :cond_18

    .line 1407
    invoke-virtual {p0, v2, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto/16 :goto_8

    .line 1409
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    if-ne p1, p2, :cond_9

    .line 1410
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1411
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_18

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean p1, p1, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez p1, :cond_18

    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->isFromMusicPlaylist:Z

    if-nez p1, :cond_18

    .line 1412
    aget-object p1, p3, v1

    check-cast p1, Ljava/util/ArrayList;

    .line 1413
    aget-object p2, p3, v0

    check-cast p2, Ljava/util/ArrayList;

    .line 1414
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p3, v2, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1415
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1416
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_6

    .line 1417
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject;

    .line 1418
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistMaxId:[I

    aget v1, v0, v2

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    aput p3, v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1421
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->sortPlaylist()V

    .line 1422
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz p1, :cond_7

    .line 1423
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    goto :goto_2

    .line 1424
    :cond_7
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_8

    .line 1425
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    .line 1427
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 1430
    :cond_8
    :goto_2
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    goto/16 :goto_8

    .line 1432
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoad:I

    if-ne p1, p2, :cond_10

    const/4 p1, 0x3

    .line 1433
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1434
    iget p2, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    if-ne p1, p2, :cond_18

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_18

    .line 1435
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v3, 0x4

    .line 1436
    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1438
    aget-object v0, p3, v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1439
    invoke-static {p1, p2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    .line 1440
    iget-wide v3, p0, Lorg/telegram/messenger/MediaController;->playlistMergeDialogId:J

    cmp-long v5, p1, v3

    if-nez v5, :cond_a

    const/4 p1, 0x1

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    .line 1441
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 1442
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playlistEndReached:[Z

    const/4 v3, 0x5

    aget-object p3, p3, v3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    aput-boolean p3, p2, p1

    :cond_b
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 1445
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_d

    .line 1446
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1447
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 p3, p3, 0x1

    .line 1451
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1452
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
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

    .line 1455
    :cond_d
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->sortPlaylist()V

    .line 1456
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_e

    .line 1458
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 1460
    :cond_e
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 1461
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz p1, :cond_f

    .line 1462
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    :cond_f
    if-eqz p3, :cond_18

    .line 1465
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

    .line 1468
    :cond_10
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    if-ne p1, p2, :cond_15

    .line 1469
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    .line 1473
    :cond_11
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    .line 1474
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1475
    aget-object p2, p3, v2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1476
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-nez v0, :cond_18

    .line 1477
    aget-object p1, p3, v1

    check-cast p1, Ljava/util/ArrayList;

    .line 1478
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_18

    .line 1479
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 1480
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p3

    if-nez p3, :cond_12

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p3

    if-eqz p3, :cond_14

    :cond_12
    iget-boolean p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    if-eqz p3, :cond_13

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result p3

    if-eqz p3, :cond_14

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result p3

    if-nez p3, :cond_14

    .line 1481
    :cond_13
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p3, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1487
    :cond_15
    sget p2, Lorg/telegram/messenger/NotificationCenter;->playerDidStartPlaying:I

    if-ne p1, p2, :cond_18

    .line 1488
    aget-object p1, p3, v2

    check-cast p1, Lorg/telegram/ui/Components/VideoPlayer;

    .line 1489
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MediaController;->isCurrentPlayer(Lorg/telegram/ui/Components/VideoPlayer;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 1490
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_8

    .line 1360
    :cond_16
    :goto_7
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 1361
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p3, :cond_18

    iget v0, p3, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    if-ne v0, p2, :cond_18

    .line 1362
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p2

    .line 1363
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1364
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz p1, :cond_17

    .line 1365
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 1366
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_8

    .line 1367
    :cond_17
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    if-nez p1, :cond_18

    .line 1369
    :try_start_0
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p1

    .line 1370
    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 1372
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_18
    :goto_8
    return-void
.end method

.method public exportAnimatedSticker(ILorg/telegram/tgnet/TLRPC$Document;JLjava/lang/String;)V
    .locals 3

    .line 130
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    const-wide/16 v1, 0x1

    .line 131
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 132
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    iput-object p5, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 133
    new-instance p5, Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    invoke-direct {p5, v1, v0, v1, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 134
    iput p1, p5, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    .line 136
    new-instance p1, Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    new-instance v0, Lorg/fork/utils/AnimatedStickerEditedInfo;

    invoke-direct {v0, p2, p3, p4}, Lorg/fork/utils/AnimatedStickerEditedInfo;-><init>(Lorg/telegram/tgnet/TLRPC$Document;J)V

    invoke-direct {p1, p5, v0}, Lorg/telegram/messenger/MediaController$VideoConvertMessage;-><init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 137
    invoke-static {p1}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MediaController$VideoConvertMessage;)V

    return-void
.end method

.method public findMessageInPlaylistAndPlay(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    .line 2283
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2285
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1

    .line 2287
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessageAtIndex(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public generateWaveform(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 3687
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

    .line 3688
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3689
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 3692
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3693
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0, v1, v0, p1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;
    .locals 1

    .line 3438
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 2064
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2067
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFastPlaybackSpeed(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 2646
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

    .line 2642
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    :goto_0
    return p1
.end method

.method public getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 2071
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPlayingMessageObjectNum()I
    .locals 1

    .line 2075
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

    .line 3547
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1

    .line 1121
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method public native getWaveform(Ljava/lang/String;)[B
.end method

.method public native getWaveform2([SI)[B
.end method

.method public injectVideoPlayer(Lorg/telegram/ui/Components/VideoPlayer;Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 2697
    :cond_0
    iget v0, p2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/FileLoader;->setLoadingVideoForPlayer(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    const/4 v0, 0x0

    .line 2698
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playerWasReady:Z

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2701
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    .line 2702
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2703
    iput-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2704
    iget v1, p0, Lorg/telegram/messenger/MediaController;->playerNum:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lorg/telegram/messenger/MediaController;->playerNum:I

    .line 2705
    new-instance v1, Lorg/telegram/messenger/MediaController$7;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/messenger/MediaController$7;-><init>(Lorg/telegram/messenger/MediaController;ILorg/telegram/messenger/MessageObject;[IZ)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 2794
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 2795
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_1

    .line 2796
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2799
    :cond_1
    invoke-direct {p0, p2}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 2800
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 2802
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const-wide/16 v3, 0x0

    .line 2803
    iput-wide v3, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 2804
    iput-object p2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2805
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    if-nez p1, :cond_2

    .line 2806
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2808
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 2809
    iget p1, p2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isBuffering()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isBuffering()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentPlayer(Lorg/telegram/ui/Components/VideoPlayer;)Z
    .locals 1

    .line 3464
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

    .line 3573
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    return v0
.end method

.method public isGoingToShowMessageObject(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 2026
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

    .line 3569
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

    .line 2508
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
    .locals 6

    .line 3551
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3554
    :cond_1
    iget-wide v2, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v4, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 3555
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 3557
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3558
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public isPlayingMessageAndReadyToDraw(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 3565
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

    .line 1496
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

    .line 1504
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

    .line 3460
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio:Z

    return v0
.end method

.method public isVideoDrawingReady()Z
    .locals 1

    .line 3543
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
    .locals 14

    .line 2099
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

    .line 2102
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_9

    .line 2104
    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->endReached:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2105
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    .line 2107
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-wide v6, v2, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->dialogId:J

    const/16 v2, 0x14

    const-wide/16 v8, 0x3e8

    cmp-long v10, v6, v4

    if-eqz v10, :cond_3

    .line 2108
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 2109
    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-object v10, v7, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->query:Ljava/lang/String;

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 2110
    iput v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 2111
    iget-object v2, v7, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->filter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    if-nez v2, :cond_1

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :goto_0
    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 2112
    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-wide v10, v7, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->dialogId:J

    invoke-virtual {v2, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2113
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 2114
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 2115
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-wide v10, v2, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->minDate:J

    cmp-long v7, v10, v4

    if-lez v7, :cond_2

    .line 2116
    div-long/2addr v10, v8

    long-to-int v7, v10

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_date:I

    .line 2118
    :cond_2
    iget-wide v10, v2, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->maxDate:J

    cmp-long v2, v10, v4

    if-lez v2, :cond_7

    .line 2119
    div-long/2addr v10, v8

    long-to-int v2, v10

    iput v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_date:I

    goto :goto_3

    .line 2123
    :cond_3
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    .line 2124
    iput v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 2125
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-object v7, v2, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->query:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    .line 2126
    iget-object v2, v2, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->filter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-object v2, v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 2127
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 2128
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 2129
    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget v10, v7, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->nextSearchRate:I

    iput v10, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 2130
    iget v10, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    or-int/2addr v10, v3

    iput v10, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    .line 2131
    iget v7, v7, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->folderId:I

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->folder_id:I

    .line 2133
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v7, v10, v4

    if-eqz v7, :cond_4

    :goto_1
    neg-long v10, v10

    goto :goto_2

    .line 2135
    :cond_4
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v7, v10, v4

    if-eqz v7, :cond_5

    goto :goto_1

    .line 2138
    :cond_5
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 2140
    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2141
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    iget-wide v10, v2, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->minDate:J

    cmp-long v7, v10, v4

    if-lez v7, :cond_6

    .line 2142
    div-long/2addr v10, v8

    long-to-int v7, v10

    iput v7, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->min_date:I

    .line 2144
    :cond_6
    iget-wide v10, v2, Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;->maxDate:J

    cmp-long v2, v10, v4

    if-lez v2, :cond_7

    .line 2145
    div-long/2addr v10, v8

    long-to-int v2, v10

    iput v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->min_date:I

    .line 2149
    :cond_7
    :goto_3
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 2150
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda43;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/messenger/MediaController;II)V

    invoke-virtual {v2, v6, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_8
    return-void

    .line 2189
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlistEndReached:[Z

    aget-boolean v1, v0, v2

    if-nez v1, :cond_a

    .line 2190
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 2191
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

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget v12, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

    goto :goto_4

    .line 2192
    :cond_a
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->playlistMergeDialogId:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_b

    aget-boolean v0, v0, v3

    if-nez v0, :cond_b

    .line 2193
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->loadingPlaylist:Z

    .line 2194
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

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget v12, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/MediaDataController;->loadMedia(JIIIIIIII)V

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

    .line 1072
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1509
    iget-boolean v1, v7, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-eqz v1, :cond_2c

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_0

    goto/16 :goto_a

    .line 1512
    :cond_0
    iget-object v1, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v2, v7, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    const-wide/16 v8, 0x0

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v1, v2, :cond_4

    .line 1513
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_1

    .line 1514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximity changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " max value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1516
    :cond_1
    iget v1, v7, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    const/high16 v2, -0x3d380000    # -100.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2

    .line 1517
    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v11

    iput v1, v7, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    goto :goto_0

    .line 1518
    :cond_2
    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v11

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 1519
    iput-boolean v10, v7, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    .line 1521
    :cond_3
    :goto_0
    iget-boolean v1, v7, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v1, :cond_8

    .line 1522
    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v11

    invoke-direct {v7, v1}, Lorg/telegram/messenger/MediaController;->isNearToSensor(F)Z

    move-result v1

    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    goto/16 :goto_2

    .line 1524
    :cond_4
    iget-object v2, v7, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v1, v2, :cond_6

    .line 1525
    iget-wide v1, v7, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmp-long v6, v1, v8

    if-nez v6, :cond_5

    const-wide v1, 0x3fef5c2900000000L    # 0.9800000190734863

    goto :goto_1

    :cond_5
    iget-wide v12, v0, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v12, v1

    long-to-double v1, v12

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, v12

    add-double/2addr v1, v4

    div-double v1, v4, v1

    .line 1527
    :goto_1
    iget-wide v12, v0, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v12, v7, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1528
    iget-object v6, v7, Lorg/telegram/messenger/MediaController;->gravity:[F

    aget v12, v6, v11

    float-to-double v12, v12

    mul-double v12, v12, v1

    sub-double/2addr v4, v1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v15, v14, v11

    float-to-double v8, v15

    mul-double v8, v8, v4

    add-double/2addr v12, v8

    double-to-float v8, v12

    aput v8, v6, v11

    .line 1529
    aget v8, v6, v10

    float-to-double v8, v8

    mul-double v8, v8, v1

    aget v12, v14, v10

    float-to-double v12, v12

    mul-double v12, v12, v4

    add-double/2addr v8, v12

    double-to-float v8, v8

    aput v8, v6, v10

    .line 1530
    aget v8, v6, v3

    float-to-double v8, v8

    mul-double v1, v1, v8

    aget v8, v14, v3

    float-to-double v8, v8

    mul-double v4, v4, v8

    add-double/2addr v1, v4

    double-to-float v1, v1

    aput v1, v6, v3

    .line 1531
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aget v2, v6, v11

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v4

    aget v5, v14, v11

    const v8, 0x3e4ccccc    # 0.19999999f

    mul-float v5, v5, v8

    add-float/2addr v2, v5

    aput v2, v1, v11

    .line 1532
    aget v2, v6, v10

    mul-float v2, v2, v4

    aget v5, v14, v10

    mul-float v5, v5, v8

    add-float/2addr v2, v5

    aput v2, v1, v10

    .line 1533
    aget v2, v6, v3

    mul-float v2, v2, v4

    aget v4, v14, v3

    mul-float v4, v4, v8

    add-float/2addr v2, v4

    aput v2, v1, v3

    .line 1535
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aget v2, v14, v11

    aget v4, v6, v11

    sub-float/2addr v2, v4

    aput v2, v1, v11

    .line 1536
    aget v2, v14, v10

    aget v4, v6, v10

    sub-float/2addr v2, v4

    aput v2, v1, v10

    .line 1537
    aget v2, v14, v3

    aget v4, v6, v3

    sub-float/2addr v2, v4

    aput v2, v1, v3

    goto :goto_2

    .line 1538
    :cond_6
    iget-object v2, v7, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-ne v1, v2, :cond_7

    .line 1539
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v2, v11

    aput v4, v1, v11

    .line 1540
    aget v4, v2, v10

    aput v4, v1, v10

    .line 1541
    aget v2, v2, v3

    aput v2, v1, v3

    goto :goto_2

    .line 1542
    :cond_7
    iget-object v2, v7, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-ne v1, v2, :cond_8

    .line 1543
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v2, v7, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v4, v11

    aput v5, v2, v11

    aput v5, v1, v11

    .line 1544
    aget v5, v4, v10

    aput v5, v2, v10

    aput v5, v1, v10

    .line 1545
    aget v4, v4, v3

    aput v4, v2, v3

    aput v4, v1, v3

    .line 1550
    :cond_8
    :goto_2
    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    const/4 v8, 0x6

    if-eq v0, v1, :cond_9

    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eq v0, v1, :cond_9

    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_19

    .line 1551
    :cond_9
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->gravity:[F

    aget v1, v0, v11

    iget-object v2, v7, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aget v4, v2, v11

    mul-float v1, v1, v4

    aget v4, v0, v10

    aget v5, v2, v10

    mul-float v4, v4, v5

    add-float/2addr v1, v4

    aget v0, v0, v3

    aget v2, v2, v3

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    .line 1552
    iget v0, v7, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eq v0, v8, :cond_17

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_a

    .line 1553
    iget v5, v7, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    cmpl-float v5, v5, v2

    if-gtz v5, :cond_b

    :cond_a
    cmpg-float v5, v1, v2

    if-gez v5, :cond_17

    iget v5, v7, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    cmpg-float v2, v5, v2

    if-gez v2, :cond_17

    :cond_b
    if-lez v4, :cond_d

    const/high16 v2, 0x41700000    # 15.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    :goto_3
    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const/high16 v2, -0x3e900000    # -15.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_4

    :cond_e
    const/4 v2, 0x0

    :goto_4
    const/4 v4, 0x2

    .line 1563
    :goto_5
    iget v5, v7, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    const/16 v6, 0xa

    if-eqz v5, :cond_12

    if-eq v5, v4, :cond_12

    .line 1564
    iget v4, v7, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    if-ne v4, v8, :cond_f

    if-eqz v2, :cond_f

    if-ge v0, v8, :cond_17

    add-int/2addr v0, v10

    .line 1566
    iput v0, v7, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-ne v0, v8, :cond_17

    .line 1568
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1569
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1570
    iput v11, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v7, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    .line 1572
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_17

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v0, :cond_17

    const-string v0, "motion detected"

    .line 1573
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    if-nez v2, :cond_10

    .line 1579
    iget v2, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/2addr v2, v10

    iput v2, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1581
    :cond_10
    iget v2, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    if-eq v2, v6, :cond_11

    if-ne v4, v8, :cond_11

    if-eqz v0, :cond_17

    .line 1582
    :cond_11
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1583
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1584
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1585
    iput v11, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    goto :goto_6

    :cond_12
    if-eqz v2, :cond_14

    if-nez v0, :cond_14

    if-eqz v5, :cond_13

    if-ne v5, v4, :cond_14

    .line 1590
    :cond_13
    iget v0, v7, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    if-ge v0, v8, :cond_17

    iget-boolean v2, v7, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v2, :cond_17

    .line 1591
    iput v4, v7, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    add-int/2addr v0, v10

    .line 1592
    iput v0, v7, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    if-ne v0, v8, :cond_17

    .line 1594
    iput v11, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    goto :goto_6

    :cond_14
    if-nez v2, :cond_15

    .line 1599
    iget v2, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/2addr v2, v10

    iput v2, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    :cond_15
    if-ne v5, v4, :cond_16

    .line 1601
    iget v2, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    if-eq v2, v6, :cond_16

    iget v2, v7, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    if-ne v2, v8, :cond_16

    if-eqz v0, :cond_17

    .line 1602
    :cond_16
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1603
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1604
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1605
    iput v11, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1656
    :cond_17
    :goto_6
    iput v1, v7, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1657
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aget v1, v0, v10

    const/high16 v2, 0x40200000    # 2.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_18

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_7

    :cond_18
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v7, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1662
    :cond_19
    iget v0, v7, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-ne v0, v8, :cond_23

    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    if-eqz v0, :cond_23

    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v0, :cond_23

    sget-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1663
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "sensor values reached"

    .line 1664
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1666
    :cond_1a
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1e

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1e

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v0, :cond_1e

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    if-nez v0, :cond_1e

    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-eqz v0, :cond_1e

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1e

    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    if-nez v0, :cond_1e

    .line 1667
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-nez v0, :cond_22

    .line 1668
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "start record"

    .line 1669
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1671
    :cond_1b
    iput-boolean v10, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1672
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->playFirstUnreadVoiceMessage()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1673
    iput-boolean v10, v7, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1674
    iput-boolean v11, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1675
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaController;->startRecording(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;I)V

    .line 1677
    :cond_1c
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_1d

    .line 1678
    invoke-direct {v7, v10}, Lorg/telegram/messenger/MediaController;->setUseFrontSpeaker(Z)V

    .line 1680
    :cond_1d
    iput-boolean v10, v7, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1681
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_22

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1682
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_8

    .line 1685
    :cond_1e
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1686
    :cond_1f
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v0, :cond_22

    .line 1687
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "start listen"

    .line 1688
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1690
    :cond_20
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_21

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1691
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1693
    :cond_21
    invoke-direct {v7, v10}, Lorg/telegram/messenger/MediaController;->setUseFrontSpeaker(Z)V

    .line 1694
    invoke-direct {v7, v11}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1695
    iput-boolean v10, v7, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1698
    :cond_22
    :goto_8
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1699
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1700
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1701
    iput v11, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_9

    .line 1702
    :cond_23
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v0, :cond_27

    .line 1703
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2b

    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v0, :cond_2b

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1704
    :cond_24
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v0, :cond_2b

    sget-object v0, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1705
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "start listen by proximity only"

    .line 1706
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1708
    :cond_25
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_26

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1709
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1711
    :cond_26
    invoke-direct {v7, v10}, Lorg/telegram/messenger/MediaController;->setUseFrontSpeaker(Z)V

    .line 1712
    invoke-direct {v7, v11}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1713
    iput-boolean v10, v7, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto :goto_9

    :cond_27
    if-nez v0, :cond_2b

    .line 1717
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-eqz v0, :cond_29

    .line 1718
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_28

    const-string/jumbo v0, "stop record"

    .line 1719
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_28
    const/4 v0, 0x0

    .line 1721
    invoke-virtual {v7, v3, v11, v11, v0}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 1722
    iput-boolean v11, v7, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1723
    iput-boolean v11, v7, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1724
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_2b

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1725
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_9

    .line 1727
    :cond_29
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_2b

    .line 1728
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "stop listen"

    .line 1729
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1731
    :cond_2a
    iput-boolean v11, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1732
    invoke-direct {v7, v10}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1733
    iput-boolean v11, v7, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1734
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_2b

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1735
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1739
    :cond_2b
    :goto_9
    iget-wide v0, v7, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2c

    iget v0, v7, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-ne v0, v8, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v7, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_2c

    .line 1740
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1741
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1742
    iput v11, v7, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1743
    iput v11, v7, Lorg/telegram/messenger/MediaController;->countLess:I

    const-wide/16 v0, 0x0

    .line 1744
    iput-wide v0, v7, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    :cond_2c
    :goto_a
    return-void
.end method

.method public pauseByRewind()V
    .locals 1

    .line 4938
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 4939
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public pauseMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 5

    .line 3468
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

    .line 3471
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 3473
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 3474
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float p1, p1, v2

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3

    .line 3475
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 3476
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3477
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    aput v3, p1, v1

    const/4 v2, 0x0

    aput v2, p1, v0

    .line 3479
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    .line 3480
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioVolumeUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3481
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3482
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/messenger/MediaController$12;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MediaController$12;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3490
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3492
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    .line 3494
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_5

    .line 3495
    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 3497
    :cond_5
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 3498
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

    .line 3500
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3501
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    :cond_6
    :goto_1
    return v1
.end method

.method public playEmojiSound(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/MessagesController$EmojiSound;Z)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 2836
    :cond_0
    sget-object p2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p3, p1, p4}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessagesController$EmojiSound;Lorg/telegram/messenger/AccountInstance;Z)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2957
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result p1

    return p1
.end method

.method public playMessage(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v0, p2

    const/4 v9, 0x0

    .line 2985
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-nez v8, :cond_0

    return v9

    .line 2964
    :cond_0
    iput-boolean v0, v7, Lorg/telegram/messenger/MediaController;->isSilent:Z

    .line 2965
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkVolumeBarUI()V

    .line 2966
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v11, 0x1

    if-nez v1, :cond_1

    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_4

    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2967
    iget-boolean v0, v7, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-eqz v0, :cond_2

    .line 2968
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->resumeAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2970
    :cond_2
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    if-nez v0, :cond_3

    .line 2971
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    :cond_3
    return v11

    .line 2976
    :cond_4
    iget-boolean v1, v7, Lorg/telegram/messenger/MediaController;->needHiddenPlay:Z

    if-nez v1, :cond_5

    .line 2977
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2978
    iget v1, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    .line 2980
    :cond_5
    iget-boolean v1, v7, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    xor-int/lit8 v2, v1, 0x1

    .line 2981
    iget-object v3, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x2

    if-eqz v3, :cond_7

    if-nez v1, :cond_6

    .line 2984
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 2985
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    new-array v3, v12, [Ljava/lang/Object;

    iget-object v4, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object v10, v3, v11

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    const/4 v2, 0x0

    .line 2988
    :cond_7
    invoke-virtual {v7, v2, v9}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    const/4 v13, 0x0

    .line 2989
    iput-object v13, v7, Lorg/telegram/messenger/MediaController;->shouldSavePositionForCurrentAudio:Ljava/lang/String;

    const-wide/16 v14, 0x0

    .line 2990
    iput-wide v14, v7, Lorg/telegram/messenger/MediaController;->lastSaveTime:J

    .line 2991
    iput-boolean v9, v7, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    const/4 v6, 0x0

    .line 2992
    iput v6, v7, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    .line 2995
    iget-object v1, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 2996
    new-instance v1, Ljava/io/File;

    iget-object v2, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2997
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    move-object v5, v13

    goto :goto_0

    :cond_8
    move-object v5, v1

    goto :goto_0

    :cond_9
    move-object v5, v13

    const/4 v2, 0x0

    :goto_0
    if-eqz v5, :cond_a

    move-object v4, v5

    goto :goto_1

    .line 3002
    :cond_a
    iget v1, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    move-object v4, v1

    .line 3003
    :goto_1
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
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    :goto_2
    if-eq v4, v5, :cond_e

    .line 3004
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    if-nez v1, :cond_e

    .line 3005
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9, v9}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 3006
    iput-boolean v11, v7, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 3007
    iput-boolean v9, v7, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 3008
    iput-wide v14, v7, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 3009
    iput-object v13, v7, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 3010
    iput-object v8, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3011
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3012
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3017
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 3020
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3023
    :cond_d
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3024
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 3026
    :goto_3
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

    :cond_e
    move/from16 v16, v2

    .line 3029
    iput-boolean v9, v7, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 3031
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3032
    iget v1, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-direct {v7, v1}, Lorg/telegram/messenger/MediaController;->checkIsNextMusicFileDownloaded(I)V

    goto :goto_4

    .line 3034
    :cond_f
    iget v1, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-direct {v7, v1}, Lorg/telegram/messenger/MediaController;->checkIsNextVoiceFileDownloaded(I)V

    .line 3036
    :goto_4
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v1, :cond_10

    .line 3037
    iput-boolean v9, v7, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    .line 3038
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setDrawingReady(Z)V

    .line 3040
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v1

    .line 3041
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    const-string v3, "&rid="

    const-string v14, "&mime="

    const-string v15, "&size="

    const-string v12, "&dc="

    const-string v6, "&hash="

    const-string v9, "&id="

    const-string v13, "?account="

    const v19, 0x3a83126f    # 0.001f

    const-string v11, "UTF-8"

    move-object/from16 v20, v10

    const-string v10, "other"

    move-object/from16 v21, v3

    if-nez v2, :cond_22

    if-eqz v1, :cond_11

    move-object/from16 v22, v4

    move-object/from16 v3, v21

    const/4 v2, 0x0

    goto/16 :goto_c

    .line 3197
    :cond_11
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    .line 3198
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    const/4 v1, 0x0

    .line 3199
    iput-object v1, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 3202
    :cond_12
    :try_start_1
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 3203
    iget v1, v7, Lorg/telegram/messenger/MediaController;->playerNum:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Lorg/telegram/messenger/MediaController;->playerNum:I

    .line 3204
    new-instance v2, Lorg/telegram/messenger/MediaController$10;

    invoke-direct {v2, v7, v1, v8}, Lorg/telegram/messenger/MediaController$10;-><init>(Lorg/telegram/messenger/MediaController;ILorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 3251
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v1, Lorg/telegram/messenger/MediaController$11;

    invoke-direct {v1, v7}, Lorg/telegram/messenger/MediaController$11;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setAudioVisualizerDelegate(Lorg/telegram/ui/Components/VideoPlayer$AudioVisualizerDelegate;)V

    if-eqz v16, :cond_14

    .line 3263
    iget-boolean v0, v8, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v0, :cond_13

    if-eq v4, v5, :cond_13

    .line 3264
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda36;

    invoke-direct {v0, v8, v4}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3266
    :cond_13
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3267
    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio:Z

    move-object/from16 v22, v4

    goto/16 :goto_6

    .line 3269
    :cond_14
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v0

    .line 3270
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 3271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v4

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 3276
    invoke-static {v3, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&name="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3278
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reference="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3279
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v0, :cond_15

    goto :goto_5

    :cond_15
    const/4 v1, 0x0

    new-array v0, v1, [B

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3280
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

    .line 3281
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1, v0, v10}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3282
    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio:Z

    .line 3284
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "media_saved_pos"

    if-eqz v0, :cond_19

    .line 3285
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3286
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_17

    .line 3287
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    .line 3288
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_16

    const v2, 0x3f7d70a4    # 0.99f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_16

    .line 3290
    iput v1, v7, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    iput v1, v8, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 3292
    :cond_16
    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->shouldSavePositionForCurrentAudio:Ljava/lang/String;

    .line 3294
    :cond_17
    iget v0, v7, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v19

    if-lez v0, :cond_18

    .line 3295
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget v1, v7, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    :cond_18
    const/4 v1, 0x0

    .line 3297
    iput-object v1, v7, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 3298
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    .line 3301
    :cond_19
    :try_start_3
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 3303
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3305
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 3306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v2

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1b

    .line 3307
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    .line 3308
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1a

    const v2, 0x3f7fbe77    # 0.999f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1a

    .line 3310
    iput v1, v7, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    iput v1, v8, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 3312
    :cond_1a
    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->shouldSavePositionForCurrentAudio:Ljava/lang/String;

    .line 3313
    iget v0, v7, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v19

    if-lez v0, :cond_1b

    .line 3314
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget v1, v7, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    .line 3318
    :cond_1b
    :goto_8
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->forceSeekTo:F

    const/16 v18, 0x0

    cmpl-float v1, v0, v18

    if-ltz v1, :cond_1c

    .line 3319
    iput v0, v7, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    iput v0, v8, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 3320
    iput v1, v8, Lorg/telegram/messenger/MessageObject;->forceSeekTo:F

    .line 3322
    :cond_1c
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_9

    :cond_1d
    const/4 v1, 0x3

    :goto_9
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    .line 3323
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 3324
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3325
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1e

    .line 3326
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3327
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1e
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 3329
    iget v1, v7, Lorg/telegram/messenger/MediaController;->audioVolume:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    .line 3330
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->audioVolumeUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3331
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3332
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a

    :cond_1f
    const/high16 v4, 0x3f800000    # 1.0f

    .line 3334
    iput v4, v7, Lorg/telegram/messenger/MediaController;->audioVolume:F

    .line 3335
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_a
    const/4 v1, 0x0

    goto/16 :goto_16

    :catch_1
    move-exception v0

    .line 3338
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3339
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_20

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    goto :goto_b

    :cond_20
    const/4 v4, 0x0

    :goto_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3340
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_21

    .line 3341
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 v1, 0x0

    .line 3342
    iput-object v1, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 3343
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->unrefAudioVisualizeDrawable(Lorg/telegram/messenger/MessageObject;)V

    .line 3344
    iput-boolean v5, v7, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 3345
    iput-object v1, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3346
    iput-boolean v5, v7, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    :cond_21
    return v5

    :cond_22
    move-object/from16 v22, v4

    move-object/from16 v3, v21

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_c
    const/16 v18, 0x0

    .line 3042
    iget v4, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    move-object/from16 v21, v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    move-object/from16 v24, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/telegram/messenger/FileLoader;->setLoadingVideoForPlayer(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    .line 3043
    iput-boolean v2, v7, Lorg/telegram/messenger/MediaController;->playerWasReady:Z

    if-eqz v1, :cond_24

    .line 3044
    iget-object v2, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v4, 0x0

    cmp-long v25, v2, v4

    if-nez v25, :cond_23

    iget v2, v8, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_23

    goto :goto_d

    :cond_23
    const/16 v25, 0x0

    goto :goto_e

    :cond_24
    :goto_d
    const/16 v25, 0x1

    :goto_e
    if-eqz v1, :cond_25

    .line 3045
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_25

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    move-object v5, v2

    goto :goto_f

    :cond_25
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 3046
    :goto_f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    .line 3047
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 3048
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 3049
    iget v0, v7, Lorg/telegram/messenger/MediaController;->playerNum:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v7, Lorg/telegram/messenger/MediaController;->playerNum:I

    .line 3050
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v4, Lorg/telegram/messenger/MediaController$9;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v26, v21

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v23, v11

    move-object/from16 v11, v22

    move-object/from16 v22, v14

    move-object v14, v4

    move-object/from16 v4, p1

    move-object/from16 v27, v15

    move-object/from16 v15, v24

    move-object/from16 v24, v12

    move-object v12, v6

    move/from16 v6, v25

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MediaController$9;-><init>(Lorg/telegram/messenger/MediaController;ILorg/telegram/messenger/MessageObject;[IZ)V

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    const/4 v1, 0x0

    .line 3142
    iput-boolean v1, v7, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 3143
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez v0, :cond_27

    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    iget-boolean v3, v8, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->isDialogVisible(JZ)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_10

    .line 3155
    :cond_26
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_29

    .line 3156
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_12

    .line 3144
    :cond_27
    :goto_10
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez v0, :cond_28

    .line 3146
    :try_start_5
    new-instance v0, Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;-><init>()V

    iput-object v0, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 3147
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    new-instance v2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda11;

    invoke-direct {v2, v7}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_11

    :catch_2
    const/4 v1, 0x0

    .line 3149
    iput-object v1, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 3152
    :cond_28
    :goto_11
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v0, :cond_29

    .line 3153
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    :cond_29
    :goto_12
    if-eqz v16, :cond_2b

    .line 3160
    iget-boolean v0, v8, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v0, :cond_2a

    if-eq v11, v15, :cond_2a

    .line 3161
    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda35;

    invoke-direct {v0, v8, v11}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/MessageObject;Ljava/io/File;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3163
    :cond_2a
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 3166
    :cond_2b
    :try_start_6
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/FileLoader;->getFileReference(Ljava/lang/Object;)I

    move-result v0

    .line 3167
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 3168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v4, v23

    .line 3173
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&name="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3175
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&reference="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3176
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    if-eqz v0, :cond_2c

    goto :goto_13

    :cond_2c
    const/4 v1, 0x0

    new-array v0, v1, [B

    :goto_13
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3177
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

    .line 3178
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1, v0, v10}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_14

    :catch_3
    move-exception v0

    .line 3180
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3183
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3184
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, v7, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    goto :goto_15

    :cond_2d
    const/4 v1, 0x3

    :goto_15
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    .line 3185
    iget v0, v7, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    sub-float v0, v0, v21

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v19

    if-lez v0, :cond_2e

    .line 3186
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget v1, v7, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    .line 3189
    :cond_2e
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->forceSeekTo:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_30

    .line 3190
    iput v0, v7, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    iput v0, v8, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 3191
    iput v2, v8, Lorg/telegram/messenger/MessageObject;->forceSeekTo:F

    goto :goto_16

    :cond_2f
    const/4 v1, 0x0

    .line 3194
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    .line 3351
    :cond_30
    :goto_16
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 3352
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    const/4 v2, 0x0

    .line 3354
    iput-boolean v2, v7, Lorg/telegram/messenger/MediaController;->isPaused:Z

    const-wide/16 v2, 0x0

    .line 3355
    iput-wide v2, v7, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 3356
    iput-object v8, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 3357
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    if-nez v0, :cond_31

    .line 3358
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 3361
    :cond_31
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isRaiseToSwitchSpeakerEnabled:Z

    if-eqz v0, :cond_33

    .line 3362
    sget-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v0, :cond_33

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3363
    :cond_32
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3365
    :cond_33
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {v7, v0}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 3366
    iget v0, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3368
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v2, 0x3e8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_37

    .line 3370
    :try_start_7
    iget-object v6, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v6, v6, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    cmpl-float v6, v6, v1

    if-eqz v6, :cond_36

    .line 3371
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v9

    cmp-long v0, v9, v4

    if-nez v0, :cond_34

    .line 3373
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v0

    int-to-long v4, v0

    mul-long v9, v4, v2

    :cond_34
    long-to-float v0, v9

    .line 3375
    iget-object v2, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 3376
    iget v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgressMs:I

    if-eqz v3, :cond_35

    const/4 v4, 0x0

    .line 3378
    iput v4, v2, Lorg/telegram/messenger/MessageObject;->audioProgressMs:I

    move v0, v3

    .line 3380
    :cond_35
    iget-object v2, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_17

    :catch_4
    move-exception v0

    .line 3383
    iget-object v2, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v1, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v1, 0x0

    .line 3384
    iput v1, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 3385
    iget v2, v8, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object v20, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3386
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3388
    :cond_36
    :goto_17
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_18

    .line 3389
    :cond_37
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_39

    .line 3391
    :try_start_8
    iget-object v6, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v6, v6, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    cmpl-float v1, v6, v1

    if-eqz v1, :cond_39

    .line 3392
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-nez v6, :cond_38

    .line 3394
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    :cond_38
    long-to-float v0, v0

    .line 3396
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 3397
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_18

    :catch_5
    move-exception v0

    .line 3400
    iget-object v1, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 3401
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

    .line 3402
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3406
    :cond_39
    :goto_18
    iget-object v0, v7, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3407
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3412
    :try_start_9
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_19

    :catchall_1
    move-exception v0

    .line 3415
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_19

    .line 3418
    :cond_3a
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v2, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3419
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_19
    const/4 v1, 0x1

    return v1
.end method

.method public playMessageAtIndex(I)V
    .locals 2

    .line 2293
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2296
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v0, 0x1

    .line 2297
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2298
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 2299
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2300
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 2302
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public playNextMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 2279
    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->playNextMessageWithoutOrder(Z)V

    return-void
.end method

.method public playPreviousMessage()V
    .locals 4

    .line 2377
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    .line 2378
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v1, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_2

    .line 2381
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2382
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    const/4 v0, 0x0

    .line 2383
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    return-void

    .line 2387
    :cond_2
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 2388
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-gez v1, :cond_4

    .line 2390
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto :goto_1

    .line 2393
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2394
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_4

    const/4 v1, 0x0

    .line 2395
    iput v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2398
    :cond_4
    :goto_1
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_5

    return-void

    .line 2401
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2402
    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public requestAudioFocus(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3583
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->hasRecordAudioFocus:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    if-eqz p1, :cond_1

    .line 3584
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecordFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3586
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->hasRecordAudioFocus:Z

    goto :goto_0

    .line 3590
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->hasRecordAudioFocus:Z

    if-eqz p1, :cond_1

    .line 3591
    sget-object p1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecordFocusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 p1, 0x0

    .line 3592
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->hasRecordAudioFocus:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public resetGoingToShowMessageObject()V
    .locals 1

    const/4 v0, 0x0

    .line 2030
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->goingToShowMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method public resumeByRewind()V
    .locals 2

    .line 4944
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v1, :cond_1

    .line 4945
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4946
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    .line 4947
    invoke-virtual {p0, v1, v1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 4948
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 4950
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 4754
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    return-void
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 4758
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 4761
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 4764
    new-instance p2, Ljava/io/File;

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 4766
    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/messenger/MediaController$VideoConvertMessage;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v0, p1, v1}, Lorg/telegram/messenger/MediaController$VideoConvertMessage;-><init>(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4767
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 4768
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    :cond_3
    return p2

    :cond_4
    :goto_0
    return v0
.end method

.method public seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z
    .locals 6

    .line 2038
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_5

    :cond_0
    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->isSamePlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2042
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    .line 2043
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 2045
    iput p2, p0, Lorg/telegram/messenger/MediaController;->seekToProgressPending:F

    goto :goto_0

    .line 2047
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput p2, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    long-to-float v0, v2

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 2049
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 2050
    iput-wide v3, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    goto :goto_0

    .line 2052
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_4

    .line 2053
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float v2, v2, p2

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2059
    :cond_4
    :goto_0
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidSeek:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return v1

    :catch_0
    move-exception p1

    .line 2056
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return v1
.end method

.method public setAllowStartRecord(Z)V
    .locals 0

    .line 1816
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    return-void
.end method

.method public setBaseActivity(Landroid/app/Activity;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2591
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    goto :goto_0

    .line 2592
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 2593
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentVideoVisible(Z)V
    .locals 3

    .line 2512
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 2516
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 2517
    iput v0, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2518
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 2519
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    goto :goto_1

    .line 2521
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    .line 2522
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2524
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_1

    .line 2527
    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2528
    iput v2, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2529
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 2531
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez p1, :cond_5

    .line 2533
    :try_start_0
    new-instance p1, Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2534
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    new-instance v2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2536
    :catch_0
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2539
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz p1, :cond_6

    .line 2540
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

    .line 2599
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->feedbackView:Landroid/view/View;

    goto :goto_0

    .line 2600
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->feedbackView:Landroid/view/View;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 2601
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->feedbackView:Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method

.method public setInputFieldHasText(Z)V
    .locals 0

    .line 1812
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

    .line 1347
    iput-wide p2, p0, Lorg/telegram/messenger/MediaController;->lastChatEnterTime:J

    .line 1348
    iput-wide p4, p0, Lorg/telegram/messenger/MediaController;->lastChatLeaveTime:J

    .line 1349
    iput p1, p0, Lorg/telegram/messenger/MediaController;->lastChatAccount:I

    .line 1350
    iput-object p7, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1351
    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1352
    iput p9, p0, Lorg/telegram/messenger/MediaController;->lastMessageId:I

    .line 1353
    iput-object p8, p0, Lorg/telegram/messenger/MediaController;->lastChatVisibleMessages:Ljava/util/ArrayList;

    return-void
.end method

.method public setNeedHiddenPlay(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->needHiddenPlay:Z

    return-void
.end method

.method public setPlaybackOrderType(I)V
    .locals 1

    .line 3442
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    .line 3443
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setPlaybackOrderType(I)V

    .line 3444
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 3446
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    goto :goto_0

    .line 3448
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_1

    .line 3449
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 3451
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    const/4 p1, 0x1

    .line 3452
    invoke-virtual {p0, p1, p1}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaybackSpeed(ZF)V
    .locals 5

    const v0, 0x3a83126f    # 0.001f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 2607
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    cmpl-float v2, p2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_0

    .line 2608
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 2609
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2611
    new-instance v4, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda30;

    invoke-direct {v4, p0, v2, v3}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;F)V

    const-wide/16 v2, 0x32

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2620
    :cond_0
    iput p2, p0, Lorg/telegram/messenger/MediaController;->currentMusicPlaybackSpeed:F

    sub-float v1, p2, v1

    .line 2621
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 2622
    iput p2, p0, Lorg/telegram/messenger/MediaController;->fastMusicPlaybackSpeed:F

    goto :goto_0

    .line 2625
    :cond_1
    iput p2, p0, Lorg/telegram/messenger/MediaController;->currentPlaybackSpeed:F

    sub-float v1, p2, v1

    .line 2626
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 2627
    iput p2, p0, Lorg/telegram/messenger/MediaController;->fastPlaybackSpeed:F

    .line 2630
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    .line 2631
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    goto :goto_1

    .line 2632
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_4

    .line 2633
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    .line 2635
    :cond_4
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_5

    const-string v1, "musicPlaybackSpeed"

    goto :goto_2

    :cond_5
    const-string v1, "playbackSpeed"

    .line 2636
    :goto_2
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    if-eqz p1, :cond_6

    const-string v0, "fastMusicPlaybackSpeed"

    goto :goto_3

    :cond_6
    const-string v0, "fastPlaybackSpeed"

    :goto_3
    if-eqz p1, :cond_7

    .line 2637
    iget p1, p0, Lorg/telegram/messenger/MediaController;->fastMusicPlaybackSpeed:F

    goto :goto_4

    :cond_7
    iget p1, p0, Lorg/telegram/messenger/MediaController;->fastPlaybackSpeed:F

    :goto_4
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2638
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

    .line 121
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

    .line 2199
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

    .line 2203
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

    .line 126
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

    .line 2207
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, p2, :cond_1

    .line 2208
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2210
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2212
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1

    .line 2214
    :cond_1
    iput-boolean p7, p0, Lorg/telegram/messenger/MediaController;->isFromMusicPlaylist:Z

    xor-int/lit8 p7, p5, 0x1

    .line 2215
    iput-boolean p7, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    .line 2216
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController;->playlistMergeDialogId:J

    .line 2217
    iget-object p3, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 p4, 0x1

    xor-int/2addr p3, p4

    iput-boolean p3, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2218
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    .line 2219
    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    .line 2220
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

    const/4 p6, 0x1

    :cond_2
    const p3, 0x7fffffff

    const/high16 p7, -0x80000000

    .line 2223
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p4

    :goto_0
    if-ltz v0, :cond_6

    .line 2224
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessageObject;

    .line 2225
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2226
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-gtz v1, :cond_3

    if-eqz p6, :cond_4

    .line 2228
    :cond_3
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2229
    invoke-static {p7, v1}, Ljava/lang/Math;->max(II)I

    move-result p7

    .line 2231
    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2232
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2235
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->sortPlaylist()V

    .line 2236
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 p4, -0x1

    if-ne p1, p4, :cond_7

    .line 2238
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->clearPlaylist()V

    .line 2239
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2240
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2241
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlistMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    :cond_7
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-boolean p1, p2, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->isFromMusicPlaylist:Z

    if-nez p1, :cond_a

    .line 2244
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz p1, :cond_8

    .line 2245
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    :cond_8
    if-eqz p5, :cond_a

    .line 2248
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playlistGlobalSearchParams:Lorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;

    if-nez p1, :cond_9

    .line 2249
    iget p1, p2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    int-to-long v3, p3

    int-to-long v5, p7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MediaDataController;->loadMusic(JJJ)V

    goto :goto_1

    .line 2251
    :cond_9
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/MediaController;->playlistClassGuid:I

    .line 2255
    :cond_a
    :goto_1
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    return p1
.end method

.method public setReplyingMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 3577
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMsg:Lorg/telegram/messenger/MessageObject;

    .line 3578
    iput-object p2, p0, Lorg/telegram/messenger/MediaController;->recordReplyingTopMsg:Lorg/telegram/messenger/MessageObject;

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

    .line 2547
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

    .line 2554
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-ne p4, p1, :cond_1

    .line 2555
    iput v0, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2556
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 2557
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2558
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    return-void

    .line 2561
    :cond_1
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p4, :cond_6

    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-ne p1, p4, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 2564
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->isDrawingReady()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    .line 2565
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-eqz p5, :cond_4

    .line 2566
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez p1, :cond_4

    .line 2568
    :try_start_0
    new-instance p1, Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2569
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    new-instance p5, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda9;

    invoke-direct {p5, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {p1, p4, p5}, Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2571
    :catch_0
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2574
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz p1, :cond_5

    .line 2575
    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_2

    .line 2577
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p4, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2579
    :goto_2
    iput-object p2, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2580
    iput-object p3, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 2581
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 2582
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

    .line 2471
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 2473
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    .line 2474
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 2475
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 2476
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 2477
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startMediaObserver()V
    .locals 4

    .line 1234
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1235
    iget v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    const/4 v0, 0x0

    .line 1237
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    if-nez v1, :cond_0

    .line 1238
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

    .line 1241
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1244
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    if-nez v1, :cond_1

    .line 1245
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

    .line 1248
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1820
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1823
    :cond_1
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1824
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isRaiseToSwitchSpeakerEnabled:Z

    if-nez p1, :cond_2

    return-void

    .line 1827
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez p1, :cond_3

    .line 1828
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v2, 0x1

    aput v1, p1, v2

    const/4 v3, 0x0

    aput v1, p1, v3

    .line 1829
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aput v1, p1, v0

    aput v1, p1, v2

    aput v1, p1, v3

    .line 1830
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aput v1, p1, v0

    aput v1, p1, v2

    aput v1, p1, v3

    const-wide/16 v4, 0x0

    .line 1831
    iput-wide v4, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1832
    iput v1, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1833
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1834
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToTopSign:I

    .line 1835
    iput v3, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1836
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1837
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1849
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public startRecording(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;I)V
    .locals 12

    move-object v8, p0

    .line 3599
    iget-object v0, v8, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 3603
    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->requestAudioFocus(Z)V

    .line 3606
    :try_start_0
    iget-object v0, v8, Lorg/telegram/messenger/MediaController;->feedbackView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 3611
    :goto_1
    iget-object v10, v8, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v11, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move/from16 v3, p6

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/MediaController;IIJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;)V

    iput-object v11, v8, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v9, :cond_1

    const-wide/16 v0, 0x1f4

    goto :goto_2

    :cond_1
    const-wide/16 v0, 0x32

    :goto_2
    invoke-virtual {v10, v11, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startRecordingIfFromSpeaker()V
    .locals 9

    .line 1760
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1763
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1764
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v8

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MediaController;->startRecording(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;I)V

    .line 1765
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stopMediaObserver()V
    .locals 4

    .line 1253
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    if-nez v0, :cond_0

    .line 1254
    new-instance v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    .line 1256
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    .line 1257
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;Z)V
    .locals 2

    .line 1854
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1855
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 1858
    invoke-virtual {p0, p2, v1, v1, v0}, Lorg/telegram/messenger/MediaController;->stopRecording(IZILjava/lang/String;)V

    .line 1859
    iget-boolean p2, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz p2, :cond_4

    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eq p2, p1, :cond_3

    goto :goto_1

    .line 1862
    :cond_3
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1863
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    .line 1864
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1865
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 1866
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1867
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1868
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1880
    iget-boolean p1, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1881
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    :goto_1
    return-void
.end method

.method public stopRecording(IZILjava/lang/String;)V
    .locals 8

    .line 3775
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3776
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3777
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 3779
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda24;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/MediaController;IZILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSilent(Z)V
    .locals 4

    .line 3426
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->isSilent:Z

    .line 3427
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 3428
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 3430
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 3431
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkVolumeBarUI()V

    .line 3432
    iget-object p1, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_2

    .line 3433
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
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
