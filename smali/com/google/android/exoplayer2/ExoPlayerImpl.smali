.class final Lcom/google/android/exoplayer2/ExoPlayerImpl;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;
.implements Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImpl$Api31;,
        Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;,
        Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;,
        Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field private final applicationContext:Landroid/content/Context;

.field private final applicationLooper:Landroid/os/Looper;

.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private final audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

.field private audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private final audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

.field private audioFormat:Lcom/google/android/exoplayer2/Format;

.field private final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

.field private final constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

.field private final detachSurfaceTimeoutMs:J

.field private deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

.field final emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

.field private foregroundMode:Z

.field private final frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private final internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

.field private isPriorityTaskManagerRegistered:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private final listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "Lcom/google/android/exoplayer2/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private final mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field private final mediaSourceHolderSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private ownedSurface:Landroid/view/Surface;

.field private pauseAtEndOfMediaItems:Z

.field private pendingDiscontinuity:Z

.field private pendingDiscontinuityReason:I

.field private pendingOperationAcks:I

.field private pendingPlayWhenReadyChangeReason:I

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field final permanentAvailableCommands:Lcom/google/android/exoplayer2/Player$Commands;

.field private playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

.field private final playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private playerReleased:Z

.field private playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private repeatMode:I

.field private final seekBackIncrementMs:J

.field private final seekForwardIncrementMs:J

.field private seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field private shuffleModeEnabled:Z

.field private shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

.field private skipSilenceEnabled:Z

.field private sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

.field private staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private final streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceHolderSurfaceIsVideoOutput:Z

.field private surfaceSize:Lcom/google/android/exoplayer2/util/Size;

.field private textureView:Landroid/view/TextureView;

.field private throwsWhenUsingWrongThread:Z

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final useLazyPreparation:Z

.field private videoChangeFrameRateStrategy:I

.field private videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private videoFormat:Lcom/google/android/exoplayer2/Format;

.field private videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private videoOutput:Ljava/lang/Object;

.field private videoScalingMode:I

.field private videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private volume:F

.field private final wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

.field private final wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

.field private final wrappingPlayer:Lcom/google/android/exoplayer2/Player;


# direct methods
.method public static synthetic $r8$lambda$-WBngl4De8sjkk-X-v8fJ5kqblA(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setTrackSelectionParameters$6(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4-ODH6SgCaE7a2MHWdNxAf25uF0(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setShuffleModeEnabled$4(ZLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6OVtL2ByZP7uX5DHJZE8DEuKqxg(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$15(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FaN7Odt_OJn5xWFlmhnR2OmiNMg(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$new$0(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I901JsR_QLuK0LV35Btc2XRv63U(FLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setVolume$10(FLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JMZYE8BS5JrcRcMWt4XwV6R1ihc(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$21(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KI01NQgkBscS_W9aEJjB4RBqq08(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setSkipSilenceEnabled$11(ZLcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KoC5v59mX1T0a1kRs8oYEUinRxU(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$17(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LEzBBscn-_l3k3Wp16Yiv1NbVFo(IILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$maybeNotifySurfaceSizeChanged$27(IILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P8O734lk3GR2QjgJThoJC1FyTNc(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$23(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PTaOVsV5oHrtgPSYcAJzF8qpPJk(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$25(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q2FCXw0oBKQUBwxN9rxfq490veY(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$24(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UGonDv6BAUvUZhnH6JcBbtzOfRs(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$16(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZvZZ5dY_PSUTkrxZ4N2V_kASjtc(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$20(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_fDKcLMFsI6W3dqufi3IgX6ZgeE(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$new$2(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$algpPrtD-ZKm0JDTv21lpQ8EQzI(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$13(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cBuHNsZypGkQ1KYotO__eto6EPQ(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setAudioAttributes$8(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcumvguftdMoxBsAkjCH0Vaqgrk(ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setAudioSessionId$9(ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gxZyoFETB7c7E7EoPjPOW1X1BrY(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$18(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hYDMtEQJ0aCOwH1qaXaj1gkqUZ8(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updateAvailableCommands$26(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iJjdqrTFCQkiWSJ0NMBcwsriO2M(ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setRepeatMode$3(ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iOATGEkasG8901G_1NGIbMM62eM(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$setPlaylistMetadata$7(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kGyD8wJ-zq1Xdi0qkdvChl0sF3I(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$14(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYui6b1Cm83Kk3TclWz2vbRb_gQ(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$19(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mCYQfy342yJtmHOPlWY2PP6AubE(Lcom/google/android/exoplayer2/PlaybackInfo;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$12(Lcom/google/android/exoplayer2/PlaybackInfo;ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mmvudecqiJgKISRfILg_QG9WU-M(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$release$5(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nOBJYkeEQ2uz3sBKLToLWmzrgZk(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$new$1(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xPRvbbAFEXpRipm4zHUUlaXa8_c(Lcom/google/android/exoplayer2/PlaybackInfo;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$updatePlaybackInfo$22(Lcom/google/android/exoplayer2/PlaybackInfo;ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.exoplayer"

    .line 118
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Lcom/google/android/exoplayer2/Player;)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    .line 219
    new-instance v2, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    :try_start_0
    const-string v3, "ExoPlayerImpl"

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ExoPlayerLib/2.18.3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    .line 231
    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v4, v5}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    iput-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 232
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 233
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 234
    iget v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->videoScalingMode:I

    iput v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoScalingMode:I

    .line 235
    iget v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    iput v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 236
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->skipSilenceEnabled:Z

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 237
    iget-wide v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-wide v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    .line 238
    new-instance v15, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    const/4 v14, 0x0

    invoke-direct {v15, v1, v14}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImpl$1;)V

    iput-object v15, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    .line 239
    new-instance v13, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {v13, v14}, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$1;)V

    iput-object v13, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    .line 240
    new-instance v6, Landroid/os/Handler;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    invoke-direct {v6, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 244
    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/google/android/exoplayer2/RenderersFactory;

    move-object v8, v6

    move-object v9, v15

    move-object v10, v15

    move-object v11, v15

    move-object v12, v15

    .line 245
    invoke-interface/range {v7 .. v12}, Lcom/google/android/exoplayer2/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 251
    array-length v5, v7

    const/4 v12, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v12

    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 252
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iput-object v10, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 253
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 254
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iput-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 255
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->useLazyPreparation:Z

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->useLazyPreparation:Z

    .line 256
    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    move-object/from16 v16, v15

    .line 257
    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekBackIncrementMs:J

    iput-wide v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekBackIncrementMs:J

    .line 258
    iget-wide v14, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekForwardIncrementMs:J

    iput-wide v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekForwardIncrementMs:J

    .line 259
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    iput-boolean v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 260
    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    iput-object v15, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    .line 261
    iget-object v14, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    iput-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clock:Lcom/google/android/exoplayer2/util/Clock;

    if-nez p2, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    .line 262
    :goto_1
    iput-object v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wrappingPlayer:Lcom/google/android/exoplayer2/Player;

    .line 263
    new-instance v8, Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v11, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda27;

    invoke-direct {v11, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda27;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    invoke-direct {v8, v15, v14, v11}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 268
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 269
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 270
    new-instance v8, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v8, v12}, Lcom/google/android/exoplayer2/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 271
    new-instance v8, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    array-length v11, v7

    new-array v11, v11, [Lcom/google/android/exoplayer2/RendererConfiguration;

    array-length v12, v7

    new-array v12, v12, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-object/from16 v20, v6

    sget-object v6, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v6, v9}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/Tracks;Ljava/lang/Object;)V

    iput-object v8, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 277
    new-instance v6, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 278
    new-instance v6, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    const/16 v12, 0x15

    new-array v9, v12, [I

    const/4 v11, 0x1

    const/16 v18, 0x0

    aput v11, v9, v18

    const/4 v12, 0x2

    aput v12, v9, v11

    move-object/from16 v24, v2

    const/4 v2, 0x3

    aput v2, v9, v12

    const/16 v19, 0xd

    aput v19, v9, v2

    const/16 v22, 0xe

    const/4 v2, 0x4

    aput v22, v9, v2

    const/16 v23, 0xf

    const/4 v2, 0x5

    aput v23, v9, v2

    const/16 v25, 0x10

    const/4 v2, 0x6

    aput v25, v9, v2

    const/16 v26, 0x11

    const/4 v2, 0x7

    aput v26, v9, v2

    const/16 v27, 0x12

    const/16 v2, 0x8

    aput v27, v9, v2

    const/16 v28, 0x13

    const/16 v2, 0x9

    aput v28, v9, v2

    const/16 v11, 0x1f

    const/16 v2, 0xa

    aput v11, v9, v2

    const/16 v29, 0xb

    const/16 v30, 0x14

    aput v30, v9, v29

    const/16 v29, 0xc

    const/16 v31, 0x1e

    aput v31, v9, v29

    const/16 v29, 0x15

    aput v29, v9, v19

    const/16 v19, 0x16

    aput v19, v9, v22

    const/16 v19, 0x17

    aput v19, v9, v23

    const/16 v19, 0x18

    aput v19, v9, v25

    const/16 v19, 0x19

    aput v19, v9, v26

    const/16 v19, 0x1a

    aput v19, v9, v27

    const/16 v19, 0x1b

    aput v19, v9, v28

    const/16 v19, 0x1c

    aput v19, v9, v30

    .line 280
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll([I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    const/16 v9, 0x1d

    .line 303
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v12

    .line 302
    invoke-virtual {v6, v9, v12}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    .line 304
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->permanentAvailableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 305
    new-instance v9, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    .line 307
    invoke-virtual {v9, v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    const/4 v9, 0x4

    .line 308
    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->add(I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    .line 309
    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->add(I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v6

    .line 310
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    const/4 v12, 0x0

    .line 311
    invoke-interface {v14, v15, v12}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 312
    new-instance v9, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    iput-object v9, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 315
    invoke-static {v8}, Lcom/google/android/exoplayer2/PlaybackInfo;->createDummy(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 316
    invoke-interface {v4, v5, v15}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->setPlayer(Lcom/google/android/exoplayer2/Player;Landroid/os/Looper;)V

    .line 318
    sget v6, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v6, v11, :cond_2

    .line 319
    new-instance v5, Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/analytics/PlayerId;-><init>()V

    goto :goto_2

    .line 320
    :cond_2
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    invoke-static {v3, v1, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl$Api31;->registerMediaMetricsListener(Landroid/content/Context;Lcom/google/android/exoplayer2/ExoPlayerImpl;Z)Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v5

    :goto_2
    move-object/from16 v22, v5

    .line 322
    new-instance v11, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 327
    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/google/android/exoplayer2/LoadControl;

    iget v5, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    iget-boolean v12, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    move-object/from16 v27, v2

    move-object/from16 v26, v3

    iget-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->releaseTimeoutMs:J

    move-wide/from16 v30, v2

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->playbackLooper:Landroid/os/Looper;

    move/from16 v28, v5

    move-object v5, v11

    move v0, v6

    move-object/from16 v32, v20

    move-object v6, v7

    move-object v7, v10

    move-object/from16 v33, v21

    move-object/from16 v21, v9

    move-object/from16 v9, v17

    move-object/from16 v34, v10

    move-object/from16 v10, v33

    move/from16 v35, v0

    move-object v0, v11

    move/from16 v11, v28

    const/16 v17, 0x0

    move-object/from16 v36, v13

    move-object v13, v4

    move-object/from16 v20, v14

    move-object/from16 v28, v17

    move-object/from16 v14, v27

    move-object/from16 v37, v16

    move-object/from16 p2, v23

    move-wide/from16 v16, v30

    move/from16 v18, v2

    move-object/from16 v19, p2

    move-object/from16 v23, v3

    invoke-direct/range {v5 .. v23}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IZLcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/SeekParameters;Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Lcom/google/android/exoplayer2/analytics/PlayerId;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 342
    iput v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->volume:F

    const/4 v2, 0x0

    .line 343
    iput v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    .line 344
    sget-object v3, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 345
    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 346
    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v3, -0x1

    .line 347
    iput v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    move/from16 v3, v35

    const/16 v5, 0x15

    if-ge v3, v5, :cond_3

    .line 349
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->initializeKeepSessionIdAudioTrack(I)I

    move-result v3

    iput v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    goto :goto_3

    .line 351
    :cond_3
    invoke-static/range {v26 .. v26}, Lcom/google/android/exoplayer2/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    .line 353
    :goto_3
    sget-object v3, Lcom/google/android/exoplayer2/text/CueGroup;->EMPTY_TIME_ZERO:Lcom/google/android/exoplayer2/text/CueGroup;

    iput-object v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

    const/4 v3, 0x1

    .line 354
    iput-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    .line 356
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 357
    new-instance v5, Landroid/os/Handler;

    move-object/from16 v6, p2

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v6, v33

    invoke-interface {v6, v5, v4}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    move-object/from16 v4, v37

    .line 358
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    move-object/from16 v5, p1

    .line 359
    iget-wide v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    .line 360
    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->experimentalSetForegroundModeTimeoutMs(J)V

    .line 363
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    move-object/from16 v7, v32

    invoke-direct {v0, v6, v7, v4}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 365
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 366
    new-instance v0, Lcom/google/android/exoplayer2/AudioFocusManager;

    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v6, v7, v4}, Lcom/google/android/exoplayer2/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    .line 367
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->handleAudioFocus:Z

    if-eqz v6, :cond_5

    iget-object v14, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    goto :goto_4

    :cond_5
    move-object/from16 v14, v28

    :goto_4
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 368
    new-instance v0, Lcom/google/android/exoplayer2/StreamVolumeManager;

    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v6, v7, v4}, Lcom/google/android/exoplayer2/StreamVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 370
    iget-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v4, v4, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setStreamType(I)V

    .line 371
    new-instance v4, Lcom/google/android/exoplayer2/WakeLockManager;

    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/WakeLockManager;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    .line 372
    iget v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->wakeMode:I

    if-eqz v6, :cond_6

    move v12, v3

    goto :goto_5

    :cond_6
    move v12, v2

    :goto_5
    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 373
    new-instance v4, Lcom/google/android/exoplayer2/WifiLockManager;

    iget-object v6, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/google/android/exoplayer2/WifiLockManager;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    .line 374
    iget v5, v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->wakeMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    move v12, v3

    goto :goto_6

    :cond_7
    move v12, v2

    :goto_6
    invoke-virtual {v4, v12}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    .line 375
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 376
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 377
    sget-object v0, Lcom/google/android/exoplayer2/util/Size;->UNKNOWN:Lcom/google/android/exoplayer2/util/Size;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 379
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-object/from16 v5, v34

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 380
    iget v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 381
    iget v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v6, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 382
    iget-object v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 383
    iget v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoScalingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v6, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 384
    iget v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 385
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    .line 384
    invoke-direct {v1, v6, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 386
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    move-object/from16 v0, v36

    const/4 v2, 0x7

    .line 387
    invoke-direct {v1, v6, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    const/16 v2, 0x8

    const/4 v3, 0x6

    .line 389
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 393
    throw v0
.end method

.method static synthetic access$1002(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/google/android/exoplayer2/ExoPlayerImpl;Z)Z
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/text/CueGroup;)Lcom/google/android/exoplayer2/text/CueGroup;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->buildUpdatedMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendVolumeToRenderers()V

    return-void
.end method

.method static synthetic access$2100(ZI)I
    .locals 0

    .line 110
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/ExoPlayerImpl;ZII)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/StreamVolumeManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    .line 110
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/DeviceInfo;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateWakeAndWifiLock()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Ljava/lang/Object;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method private addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation

    .line 2247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2248
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2249
    new-instance v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;

    .line 2250
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/MediaSource;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->useLazyPreparation:Z

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 2251
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2252
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    add-int v4, v1, p1

    new-instance v5, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v6, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/exoplayer2/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 2253
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline;)V

    .line 2252
    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2255
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 2257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2256
    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    return-object v0
.end method

.method private buildUpdatedMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 3

    .line 2488
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 2489
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2490
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0

    .line 2492
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 2494
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populate(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 3

    .line 2731
    new-instance v0, Lcom/google/android/exoplayer2/DeviceInfo;

    .line 2733
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMinVolume()I

    move-result v1

    .line 2734
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMaxVolume()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/exoplayer2/DeviceInfo;-><init>(III)V

    return-object v0
.end method

.method private createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 3

    .line 2295
    new-instance v0, Lcom/google/android/exoplayer2/PlaylistTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-object v0
.end method

.method private createMediaSources(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 1795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1796
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1797
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaItem;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 9

    .line 2470
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result v0

    .line 2471
    new-instance v8, Lcom/google/android/exoplayer2/PlayerMessage;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    .line 2475
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 2477
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/PlayerMessage;-><init>(Lcom/google/android/exoplayer2/PlayerMessage$Sender;Lcom/google/android/exoplayer2/PlayerMessage$Target;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V

    return-object v8
.end method

.method private evaluateMediaItemTransitionReason(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;ZIZZ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/PlaybackInfo;",
            "Lcom/google/android/exoplayer2/PlaybackInfo;",
            "ZIZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2128
    iget-object v0, p2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2129
    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2130
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    .line 2131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 2130
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2131
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2132
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    const/4 v5, 0x3

    if-eq v2, v4, :cond_1

    .line 2133
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2136
    :cond_1
    iget-object v2, p2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2137
    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2138
    iget-object v4, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2139
    iget-object v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2140
    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2141
    iget-object v4, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2142
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_5

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-ne p4, v2, :cond_3

    move v5, v1

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    .line 2156
    :goto_0
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2154
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    .line 2160
    iget-object p2, p2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long p1, v4, p1

    if-gez p1, :cond_6

    .line 2164
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    if-eqz p3, :cond_7

    if-ne p4, v2, :cond_7

    if-eqz p6, :cond_7

    .line 2169
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2172
    :cond_7
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J
    .locals 4

    .line 1784
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    .line 1786
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1787
    iget-wide v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    return-wide v0

    .line 1789
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentWindowIndexInternal()I
    .locals 3

    .line 1775
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    return v0

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    return v0
.end method

.method private getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2406
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v0

    .line 2407
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2414
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v9

    .line 2416
    iget-object v7, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2418
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v10

    move-object v6, p1

    .line 2417
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2419
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2420
    invoke-virtual {p2, v10}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v5, :cond_1

    return-object v0

    .line 2426
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    move-object v11, p1

    move-object v12, p2

    .line 2427
    invoke-static/range {v6 .. v12}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2431
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2432
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 2435
    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    .line 2432
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 2438
    :cond_2
    invoke-direct {p0, p2, v5, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 2408
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    .line 2411
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result v5

    :goto_2
    if-eqz p1, :cond_6

    move-wide v0, v3

    .line 2409
    :cond_6
    invoke-direct {p0, p2, v5, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static getPlayWhenReadyChangeReason(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private getPositionInfo(J)Lcom/google/android/exoplayer2/Player$PositionInfo;
    .locals 13

    .line 2086
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    .line 2089
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2091
    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2092
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 2093
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2094
    iget-object v4, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move v5, v0

    move-object v12, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v12

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move v5, v0

    move-object v3, v1

    move-object v4, v3

    .line 2096
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 2097
    new-instance p1, Lcom/google/android/exoplayer2/Player$PositionInfo;

    .line 2104
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p2, p2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2105
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    .line 2106
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p2, p2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v10, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v11, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    return-object p1
.end method

.method private getPreviousPositionInfo(ILcom/google/android/exoplayer2/PlaybackInfo;I)Lcom/google/android/exoplayer2/Player$PositionInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2035
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 2036
    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 2037
    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2038
    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3, v5, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2039
    iget v3, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 2040
    iget-object v6, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    .line 2041
    iget-object v7, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v8, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2042
    iget-object v8, v0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move v11, v3

    move-object v13, v5

    move v14, v6

    move-object v10, v7

    move-object v12, v8

    goto :goto_0

    :cond_0
    move/from16 v11, p3

    move v14, v4

    move-object v10, v5

    move-object v12, v10

    move-object v13, v12

    :goto_0
    if-nez p1, :cond_3

    .line 2047
    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2049
    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v4, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    .line 2050
    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    .line 2053
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v4

    goto :goto_2

    .line 2054
    :cond_1
    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v4, :cond_2

    .line 2057
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-static {v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v2

    goto :goto_1

    .line 2061
    :cond_2
    iget-wide v3, v2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iget-wide v5, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    add-long v2, v3, v5

    goto :goto_1

    .line 2064
    :cond_3
    iget-object v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2065
    iget-wide v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 2066
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v4

    goto :goto_2

    .line 2068
    :cond_4
    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->positionInWindowUs:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    add-long/2addr v2, v4

    :goto_1
    move-wide v4, v2

    .line 2071
    :goto_2
    new-instance v6, Lcom/google/android/exoplayer2/Player$PositionInfo;

    .line 2077
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v15

    .line 2078
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v17

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v2, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    move-object v9, v6

    move/from16 v19, v2

    move/from16 v20, v1

    invoke-direct/range {v9 .. v20}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v6
.end method

.method private static getRequestedContentPositionUs(Lcom/google/android/exoplayer2/PlaybackInfo;)J
    .locals 6

    .line 2112
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 2113
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 2114
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2115
    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2116
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v0

    goto :goto_0

    .line 2117
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private handlePlaybackInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 11

    .line 1803
    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 1804
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1805
    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingDiscontinuityReason:I

    .line 1806
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 1808
    :cond_0
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPlayWhenReadyChangeReason:Z

    if-eqz v2, :cond_1

    .line 1809
    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playWhenReadyChangeReason:I

    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    :cond_1
    if-nez v1, :cond_b

    .line 1812
    iget-object v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1813
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    .line 1816
    iput v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide/16 v5, 0x0

    .line 1817
    iput-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 1818
    iput v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 1820
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1821
    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/PlaylistTimeline;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/PlaylistTimeline;->getChildTimelines()Ljava/util/List;

    move-result-object v2

    .line 1822
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    move v5, v4

    .line 1823
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1824
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/Timeline;

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;->access$202(Lcom/google/android/exoplayer2/ExoPlayerImpl$MediaSourceHolderSnapshot;Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/Timeline;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 1829
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingDiscontinuity:Z

    if-eqz v2, :cond_a

    .line 1830
    iget-object v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1831
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v7, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v9, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    .line 1836
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 1838
    :cond_7
    iget-object v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v5, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v1

    goto :goto_4

    .line 1837
    :cond_8
    :goto_3
    iget-object v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    :goto_4
    move-wide v7, v1

    goto :goto_5

    :cond_9
    move-wide v7, v5

    :goto_5
    move v5, v3

    goto :goto_6

    :cond_a
    move-wide v7, v5

    move v5, v4

    .line 1844
    :goto_6
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 1845
    iget-object v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    const/4 v4, 0x0

    iget v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingDiscontinuityReason:I

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    :cond_b
    return-void
.end method

.method private initializeKeepSessionIdAudioTrack(I)I
    .locals 9

    .line 2695
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2696
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 2698
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 2700
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 2705
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 2715
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    return p1
.end method

.method private static isPlaying(Lcom/google/android/exoplayer2/PlaybackInfo;)Z
    .locals 2

    .line 2744
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$maybeNotifySurfaceSizeChanged$27(IILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2596
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wrappingPlayer:Lcom/google/android/exoplayer2/Player;

    new-instance v1, Lcom/google/android/exoplayer2/Player$Events;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/Player$Events;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    .line 314
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->handlePlaybackInfo(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda28;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$release$5(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 2

    .line 995
    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    const/16 v1, 0x3eb

    .line 996
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 995
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method private static synthetic lambda$setAudioAttributes$8(Lcom/google/android/exoplayer2/audio/AudioAttributes;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1403
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method private static synthetic lambda$setAudioSessionId$9(ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1444
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method private synthetic lambda$setPlaylistMetadata$7(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method private static synthetic lambda$setRepeatMode$3(ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 785
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method private static synthetic lambda$setShuffleModeEnabled$4(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 805
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$setSkipSilenceEnabled$11(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1507
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$setTrackSelectionParameters$6(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1197
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method private static synthetic lambda$setVolume$10(FLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1482
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method private synthetic lambda$updateAvailableCommands$26(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 2181
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$12(Lcom/google/android/exoplayer2/PlaybackInfo;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1925
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$13(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1935
    invoke-interface {p3, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(I)V

    .line 1936
    invoke-interface {p3, p1, p2, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$14(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1944
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$15(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1949
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$16(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1953
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$17(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1960
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->tracks:Lcom/google/android/exoplayer2/Tracks;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$18(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1966
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$19(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 1972
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onLoadingChanged(Z)V

    .line 1973
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$20(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 1980
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$21(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1986
    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$22(Lcom/google/android/exoplayer2/PlaybackInfo;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1992
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$23(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2000
    iget p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$24(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2006
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlaying(Lcom/google/android/exoplayer2/PlaybackInfo;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$25(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2011
    iget-object p0, p0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method private maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/PlaybackInfo;",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/exoplayer2/PlaybackInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2300
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    move-object/from16 v3, p1

    .line 2301
    iget-object v5, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2303
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v6

    .line 2305
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2307
    invoke-static {}, Lcom/google/android/exoplayer2/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    .line 2308
    iget-wide v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    .line 2309
    sget-object v16, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 2318
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v18

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v17, v2

    .line 2310
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 2319
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    .line 2320
    iget-wide v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    return-object v1

    .line 2324
    :cond_2
    iget-object v3, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2325
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_3

    .line 2327
    new-instance v8, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v8, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :goto_2
    move-object v14, v8

    .line 2328
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2329
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v8

    .line 2330
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2331
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2332
    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v2

    sub-long/2addr v8, v2

    :cond_4
    if-nez v7, :cond_b

    cmp-long v2, v12, v8

    if-gez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    if-nez v2, :cond_9

    .line 2352
    iget-object v2, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2353
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 2354
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2355
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v3, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2356
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-eq v2, v3, :cond_8

    .line 2359
    :cond_6
    iget-object v2, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2361
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2362
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v3, v14, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v1

    goto :goto_3

    .line 2363
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 2364
    :goto_3
    iget-wide v8, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iget-wide v10, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iget-wide v12, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-wide v3, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    sub-long v3, v1, v3

    iget-object v5, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v15, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v7, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object/from16 v18, v7

    move-object v7, v14

    move-object v0, v14

    move-object/from16 v17, v15

    move-wide v14, v3

    move-object/from16 v16, v5

    .line 2365
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 2374
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v6

    .line 2375
    iput-wide v1, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_9
    move-object v0, v14

    .line 2378
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-wide/16 v1, 0x0

    .line 2380
    iget-wide v3, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    sub-long v7, v12, v8

    sub-long/2addr v3, v7

    .line 2381
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 2384
    iget-wide v1, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 2385
    iget-object v3, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    add-long v1, v12, v14

    .line 2388
    :cond_a
    iget-object v3, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v4, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v5, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object v7, v0

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 2389
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v6

    .line 2398
    iput-wide v1, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    goto :goto_4

    :cond_b
    :goto_5
    move-object v0, v14

    .line 2336
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-wide/16 v14, 0x0

    if-eqz v7, :cond_c

    .line 2345
    sget-object v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_6

    :cond_c
    iget-object v1, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_6
    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, p0

    if-eqz v7, :cond_d

    .line 2346
    iget-object v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_7

    :cond_d
    iget-object v2, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    :goto_7
    move-object/from16 v17, v2

    if-eqz v7, :cond_e

    .line 2347
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_8

    :cond_e
    iget-object v2, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_8
    move-object/from16 v18, v2

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-wide v2, v12

    .line 2339
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    .line 2348
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v6

    .line 2349
    iput-wide v2, v6, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    :goto_9
    return-object v6
.end method

.method private maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2446
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2448
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const-wide/16 p3, 0x0

    .line 2449
    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    const/4 p1, 0x0

    .line 2450
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 2453
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 2456
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    .line 2457
    iget-object p3, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p3

    :cond_3
    move v3, p2

    .line 2459
    iget-object v1, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 3

    .line 2593
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Size;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Size;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 2594
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/Size;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 2595
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0x18

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_1
    return-void
.end method

.method private periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J
    .locals 1

    .line 2464
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2465
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide p1

    add-long/2addr p3, p1

    return-wide p3
.end method

.method private removeMediaItemsInternal(II)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 6

    .line 2262
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    .line 2263
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 2264
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2265
    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2266
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    .line 2267
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    .line 2268
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2272
    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v1

    .line 2269
    invoke-direct {p0, v5, v3, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    .line 2274
    iget v3, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v5, 0x4

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-ge p1, p2, :cond_0

    if-ne p2, v2, :cond_0

    iget-object v2, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2279
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 2281
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    .line 2283
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->removeMediaSources(IILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-object v1
.end method

.method private removeMediaSourceHolders(II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    .line 2289
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2291
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->cloneAndRemove(II)Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 2498
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/16 v2, 0x2710

    .line 2500
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 2501
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 2502
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2503
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 2504
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 2506
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 2507
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    if-eq v0, v2, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 2508
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2510
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2512
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 2514
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 2515
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2516
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method private sendRendererMessage(IILjava/lang/Object;)V
    .locals 5

    .line 2677
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2678
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 2679
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendVolumeToRenderers()V
    .locals 3

    .line 2601
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->volume:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->getVolumeMultiplier()F

    move-result v1

    mul-float/2addr v0, v1

    .line 2602
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private setMediaSourcesInternal(Ljava/util/List;IJZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;IJZ)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v0, p2

    .line 2190
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result v1

    .line 2191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v2

    .line 2192
    iget v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2193
    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 2194
    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 2195
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 2194
    invoke-direct {v11, v6, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    :cond_0
    move-object/from16 v4, p1

    .line 2198
    invoke-direct {v11, v6, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 2199
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    .line 2200
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    goto :goto_0

    .line 2201
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    move-wide/from16 v7, p3

    invoke-direct {v1, v4, v0, v7, v8}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v1

    :cond_2
    :goto_0
    move-wide/from16 v7, p3

    const/4 v9, -0x1

    if-eqz p5, :cond_3

    .line 2205
    iget-boolean v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move v14, v0

    goto :goto_1

    :cond_3
    if-ne v0, v9, :cond_4

    move v14, v1

    move-wide v1, v2

    goto :goto_1

    :cond_4
    move v14, v0

    move-wide v1, v7

    .line 2211
    :goto_1
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 2215
    invoke-direct {v11, v4, v14, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 2212
    invoke-direct {v11, v0, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 2217
    iget v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v14, v9, :cond_7

    if-eq v3, v5, :cond_7

    .line 2220
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    if-lt v14, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x4

    .line 2227
    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 2228
    iget-object v12, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    .line 2229
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v15

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    move-object/from16 v17, v0

    .line 2228
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setMediaSources(Ljava/util/List;IJLcom/google/android/exoplayer2/source/ShuffleOrder;)V

    .line 2230
    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2231
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 2232
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v5, v6

    :goto_4
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 2240
    invoke-direct {v11, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v8

    const/4 v10, -0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v6

    move v6, v7

    move-wide v7, v8

    move v9, v10

    move v10, v12

    .line 2233
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    return-void
.end method

.method private setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    .line 2580
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 2581
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2582
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2583
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2584
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2585
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 2586
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    .line 2588
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method private setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 2521
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2522
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 2523
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    return-void
.end method

.method private setVideoOutputInternal(Ljava/lang/Object;)V
    .locals 9

    .line 2529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2530
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 2531
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 2533
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v6

    .line 2534
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 2535
    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 2536
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 2532
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2540
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 2544
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/PlayerMessage;

    .line 2545
    iget-wide v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/PlayerMessage;->blockUntilDelivered(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2548
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    move v5, v3

    .line 2552
    :catch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    .line 2554
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 2555
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    goto :goto_2

    :cond_3
    move v5, v3

    .line 2558
    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 2560
    new-instance p1, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    const/16 v0, 0x3eb

    .line 2562
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 2560
    invoke-direct {p0, v3, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stopInternal(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    :cond_5
    return-void
.end method

.method private stopInternal(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1745
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 1747
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 1746
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaItemsInternal(II)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    const/4 v1, 0x0

    .line 1748
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    goto :goto_0

    .line 1750
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    .line 1751
    iget-wide v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    const-wide/16 v1, 0x0

    .line 1752
    iput-wide v1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    :goto_0
    const/4 v1, 0x1

    .line 1754
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 1756
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object p1

    :cond_1
    move-object v3, p1

    .line 1758
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 1759
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stop()V

    .line 1760
    iget-object p1, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1761
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p1, p1, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x4

    .line 1769
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v9

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v2, p0

    .line 1762
    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    return-void
.end method

.method private updateAvailableCommands()V
    .locals 3

    .line 2176
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 2177
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wrappingPlayer:Lcom/google/android/exoplayer2/Player;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->permanentAvailableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->getAvailableCommands(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 2178
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0xd

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method private updatePlayWhenReady(ZII)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    if-eq p2, v2, :cond_1

    move v1, v2

    .line 2615
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    if-ne v4, v3, :cond_2

    iget v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v4, v1, :cond_2

    return-void

    .line 2619
    :cond_2
    iget v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2621
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlayWhenReady(ZI)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 2622
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReady(ZI)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, p3

    .line 2623
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    return-void
.end method

.method private updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p6

    .line 1873
    iget-object v10, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1875
    iput-object v8, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1877
    iget-object v0, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    xor-int/lit8 v12, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move/from16 v3, p5

    move/from16 v4, p6

    move v5, v12

    move/from16 v6, p10

    .line 1879
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->evaluateMediaItemTransitionReason(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/PlaybackInfo;ZIZZ)Landroid/util/Pair;

    move-result-object v0

    .line 1886
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1887
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1888
    iget-object v2, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1891
    iget-object v4, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1892
    iget-object v3, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1893
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1895
    iget-object v4, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v7, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1897
    :cond_0
    sget-object v4, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v4, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    :cond_1
    if-nez v1, :cond_2

    .line 1899
    iget-object v4, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v5, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 1900
    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1901
    :cond_2
    iget-object v2, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1903
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata;->buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v2

    iget-object v4, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 1904
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populateFromMetadata(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v2

    .line 1905
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1906
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->buildUpdatedMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    .line 1908
    :cond_3
    iget-object v4, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v11

    .line 1909
    iput-object v2, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1910
    iget-boolean v2, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    iget-boolean v5, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    const/4 v6, 0x0

    if-eq v2, v5, :cond_4

    move v2, v11

    goto :goto_0

    :cond_4
    move v2, v6

    .line 1912
    :goto_0
    iget v5, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget v13, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    if-eq v5, v13, :cond_5

    move v5, v11

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    if-nez v5, :cond_6

    if-eqz v2, :cond_7

    .line 1915
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateWakeAndWifiLock()V

    .line 1917
    :cond_7
    iget-boolean v13, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-boolean v14, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    if-eq v13, v14, :cond_8

    move v13, v11

    goto :goto_2

    :cond_8
    move v13, v6

    :goto_2
    if-eqz v13, :cond_9

    .line 1919
    invoke-direct {v7, v14}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePriorityTaskManagerForIsLoadingChange(Z)V

    :cond_9
    if-eqz v12, :cond_a

    .line 1923
    iget-object v12, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v14, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda19;

    move/from16 v15, p2

    invoke-direct {v14, v8, v15}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda19;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;I)V

    invoke-virtual {v12, v6, v14}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_a
    if-eqz p5, :cond_b

    move/from16 v6, p9

    .line 1929
    invoke-direct {v7, v9, v10, v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPreviousPositionInfo(ILcom/google/android/exoplayer2/PlaybackInfo;I)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object v6

    move-wide/from16 v14, p7

    .line 1931
    invoke-direct {v7, v14, v15}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPositionInfo(J)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object v12

    .line 1932
    iget-object v14, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v15, 0xb

    new-instance v11, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v11, v9, v6, v12}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda5;-><init>(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V

    invoke-virtual {v14, v15, v11}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_b
    if-eqz v1, :cond_c

    .line 1942
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v6, v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/MediaItem;I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1946
    :cond_c
    iget-object v0, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eq v0, v1, :cond_d

    .line 1947
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1950
    iget-object v0, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_d

    .line 1951
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1956
    :cond_d
    iget-object v0, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    if-eq v0, v1, :cond_e

    .line 1957
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 1958
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/4 v1, 0x2

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda12;

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_e
    if-eqz v4, :cond_f

    .line 1963
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1964
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v3, 0xe

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_f
    if-eqz v13, :cond_10

    .line 1969
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/4 v1, 0x3

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda18;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_10
    const/4 v0, -0x1

    if-nez v5, :cond_11

    if-eqz v2, :cond_12

    .line 1977
    :cond_11
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda17;

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda17;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_12
    if-eqz v5, :cond_13

    .line 1984
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/4 v3, 0x4

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v4, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_13
    if-eqz v2, :cond_14

    .line 1989
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/4 v2, 0x5

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda20;

    move/from16 v4, p3

    invoke-direct {v3, v8, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda20;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;I)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1995
    :cond_14
    iget v1, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    iget v2, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    if-eq v1, v2, :cond_15

    .line 1997
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/4 v2, 0x6

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda13;

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda13;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2003
    :cond_15
    invoke-static {v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlaying(Lcom/google/android/exoplayer2/PlaybackInfo;)Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlaying(Lcom/google/android/exoplayer2/PlaybackInfo;)Z

    move-result v2

    if-eq v1, v2, :cond_16

    .line 2004
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/4 v2, 0x7

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda15;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2008
    :cond_16
    iget-object v1, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v2, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2009
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v2, 0xc

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda14;

    invoke-direct {v3, v8}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda14;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_17
    if-eqz p4, :cond_18

    .line 2014
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    sget-object v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda26;->INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda26;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2016
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateAvailableCommands()V

    .line 2017
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    .line 2019
    iget-boolean v0, v10, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    iget-boolean v1, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    if-eq v0, v1, :cond_19

    .line 2020
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 2021
    iget-boolean v2, v8, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;->onExperimentalSleepingForOffloadChanged(Z)V

    goto :goto_3

    :cond_19
    return-void
.end method

.method private updatePriorityTaskManagerForIsLoadingChange(Z)V
    .locals 3

    .line 2719
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2720
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-nez v2, :cond_0

    .line 2721
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    const/4 p1, 0x1

    .line 2722
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2723
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz p1, :cond_1

    .line 2724
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 2725
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateWakeAndWifiLock()V
    .locals 5

    .line 2636
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2651
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2640
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalIsSleepingForOffload()Z

    move-result v0

    .line 2641
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 2643
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    goto :goto_2

    .line 2647
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 2648
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    :goto_2
    return-void
.end method

.method private verifyApplicationThread()V
    .locals 4

    .line 2658
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    .line 2659
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2666
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 2661
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2667
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    if-nez v1, :cond_1

    .line 2670
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2671
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    goto :goto_1

    .line 2668
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .locals 1

    .line 1519
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->addListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 1636
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 615
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 616
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 627
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 628
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 622
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 639
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 640
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 641
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 642
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    .line 643
    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 644
    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 645
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    .line 646
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 650
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v2

    .line 647
    invoke-direct {p0, v4, v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 651
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->addMediaSources(ILjava/util/List;Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v8

    move v9, v10

    move v10, v11

    .line 652
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    return-void
.end method

.method public addMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 633
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 634
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 3

    .line 1461
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1462
    new-instance v0, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;-><init>(IF)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    return-void
.end method

.method public clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .locals 1

    .line 1617
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1618
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eq v0, p1, :cond_0

    return-void

    .line 1621
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    const/16 v0, 0x8

    .line 1622
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    const/4 v0, 0x0

    .line 1623
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 1624
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .locals 1

    .line 1595
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1596
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eq v0, p1, :cond_0

    return-void

    .line 1599
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    const/4 v0, 0x7

    .line 1600
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    const/4 v0, 0x0

    .line 1601
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 1602
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 1276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1277
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    .line 1278
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1279
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1284
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 1286
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1323
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 1325
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 1353
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1354
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 1384
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 1386
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 0

    .line 1024
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1025
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    return-object p1
.end method

.method public decreaseDeviceVolume()V
    .locals 1

    .line 1704
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1705
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->decreaseVolume()V

    return-void
.end method

.method public experimentalIsSleepingForOffload()Z
    .locals 1

    .line 443
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 444
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    return v0
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .locals 2

    .line 434
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->experimentalSetOffloadSchedulingEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;

    .line 437
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;->onExperimentalOffloadSchedulingEnabledChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAnalyticsCollector()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 1

    .line 1512
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1513
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 1

    .line 1418
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1419
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-object v0
.end method

.method public getAudioComponent()Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    return-object p0
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .line 1579
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1580
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1565
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1566
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1449
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1450
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    return v0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 1

    .line 479
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1065
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1066
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    goto :goto_0

    .line 1069
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 1071
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Lcom/google/android/exoplayer2/util/Clock;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .locals 5

    .line 1116
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1117
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1122
    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0

    .line 1124
    :cond_1
    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 1125
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1126
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1127
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    .line 1128
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    .line 1129
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 1131
    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 1134
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v3, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1135
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    .line 1134
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 5

    .line 1100
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1101
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1103
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1107
    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1106
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    .line 1107
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    goto :goto_0

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1088
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1089
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1094
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1095
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentCues()Lcom/google/android/exoplayer2/text/CueGroup;
    .locals 1

    .line 1629
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1630
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 2

    .line 1040
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1041
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 2

    .line 1030
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1031
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    return v0

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1059
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1060
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 1227
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1228
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1165
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1166
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 2

    .line 1171
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1172
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    return-object v0
.end method

.method public getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;
    .locals 1

    .line 1177
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1178
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->tracks:Lcom/google/android/exoplayer2/Tracks;

    return-object v0
.end method

.method public getDeviceComponent()Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    return-object p0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 1

    .line 1674
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1675
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 1680
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1681
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getVolume()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 4

    .line 1047
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1048
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1050
    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1051
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    .line 1052
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 1054
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 885
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 1

    .line 1202
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1203
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .locals 1

    .line 759
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 760
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 774
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 775
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 915
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 916
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 485
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 491
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 492
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    return v0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 498
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-object v0
.end method

.method public bridge synthetic getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 1

    .line 1208
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1209
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object v0
.end method

.method public getRenderer(I)Lcom/google/android/exoplayer2/Renderer;
    .locals 1

    .line 1153
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1154
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRendererCount()I
    .locals 1

    .line 1141
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1142
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    .line 1147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1148
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result p1

    return p1
.end method

.method public getRepeatMode()I
    .locals 1

    .line 793
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 794
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 873
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 874
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 879
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 880
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;
    .locals 1

    .line 933
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 813
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 814
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    return v0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 1

    .line 1493
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1494
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    return v0
.end method

.method public getSurfaceSize()Lcom/google/android/exoplayer2/util/Size;
    .locals 1

    .line 1270
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1271
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    return-object v0
.end method

.method public getTextComponent()Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1076
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1077
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    .line 1183
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1184
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 1

    .line 1159
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1160
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    return-object v0
.end method

.method public getVideoChangeFrameRateStrategy()I
    .locals 1

    .line 1258
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1259
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    return v0
.end method

.method public getVideoComponent()Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    return-object p0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .line 1572
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1573
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1558
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1559
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .line 1240
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1241
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoScalingMode:I

    return v0
.end method

.method public getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 1

    .line 1264
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1265
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 1487
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1488
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->volume:F

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 1

    .line 1698
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1699
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->increaseVolume()V

    return-void
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 1686
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1687
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->isMuted()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 819
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 820
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1082
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1083
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    return v0
.end method

.method public isTunnelingEnabled()Z
    .locals 5

    .line 1716
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1717
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1718
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public moveMediaItems(III)V
    .locals 13

    move-object v11, p0

    move v0, p1

    move v1, p2

    move/from16 v2, p3

    .line 691
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v3, 0x1

    if-ltz v0, :cond_0

    if-gt v0, v1, :cond_0

    if-ltz v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 692
    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 693
    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 694
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v5, v1, v0

    sub-int v5, v4, v5

    .line 695
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v4, :cond_2

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    .line 701
    iget v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v5, v3

    iput v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 702
    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-static {v3, p1, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->moveItems(Ljava/util/List;III)V

    .line 703
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    .line 704
    iget-object v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 708
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)Landroid/util/Pair;

    move-result-object v4

    .line 705
    invoke-direct {p0, v5, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 709
    iget-object v4, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    iget-object v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-virtual {v4, p1, v1, v2, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->moveMediaSources(IIILcom/google/android/exoplayer2/source/ShuffleOrder;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v8

    move v9, v10

    move v10, v12

    .line 710
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public prepare()V
    .locals 15

    .line 511
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 512
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    .line 514
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v1

    .line 516
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v3

    .line 515
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 520
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    .line 523
    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 522
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v5

    .line 528
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 529
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepare()V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x5

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v4, p0

    .line 530
    invoke-direct/range {v4 .. v14}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 545
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 546
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 547
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    .line 555
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public release()V
    .locals 6

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.18.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-static {}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 969
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 981
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 983
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 986
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->release()V

    .line 987
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 988
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    .line 989
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->release()V

    .line 990
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->release()Z

    move-result v0

    if-nez v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v3, 0xa

    sget-object v4, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda25;->INSTANCE:Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda25;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->release()V

    .line 1001
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1002
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->removeEventListener(Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 1003
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1004
    iget-object v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 1005
    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 1006
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1007
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->release()V

    .line 1008
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->release()V

    .line 1009
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1010
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 1011
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1012
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 1014
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_3

    .line 1015
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 1016
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 1018
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/text/CueGroup;->EMPTY_TIME_ZERO:Lcom/google/android/exoplayer2/text/CueGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 1019
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playerReleased:Z

    return-void
.end method

.method public removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .locals 1

    .line 1524
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1525
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->removeListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .locals 1

    .line 473
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 1641
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1642
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 13

    .line 666
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 667
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 668
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 669
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, v1, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 674
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaItemsInternal(II)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v3

    .line 675
    iget-object p1, v3, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object p2, p2, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 676
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x4

    .line 684
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v9

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v2, p0

    .line 677
    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public retry()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 505
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 506
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public seekTo(IJIZ)V
    .locals 12

    move-object v11, p0

    move v0, p1

    .line 829
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 830
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 831
    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 832
    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 833
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    return-void

    .line 836
    :cond_1
    iget v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v3, v1

    iput v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 837
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "ExoPlayerImpl"

    const-string v2, "seekTo ignored because an ad is playing"

    .line 841
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v2, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplayer2/PlaybackInfo;)V

    .line 844
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 845
    iget-object v1, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfoUpdateListener:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void

    .line 850
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result v3

    if-ne v3, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 851
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v9

    .line 852
    iget-object v3, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    move-wide v3, p2

    .line 857
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v5

    .line 854
    invoke-direct {p0, v1, v2, v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v1

    .line 858
    iget-object v5, v11, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v3

    invoke-virtual {v5, v2, p1, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 866
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplayer2/PlaybackInfo;)J

    move-result-wide v7

    move-object v0, p0

    move/from16 v10, p5

    .line 859
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V
    .locals 3

    .line 1392
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1393
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playerReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1397
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1398
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1399
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    iget v1, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setStreamType(I)V

    .line 1401
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0x14

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda21;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda21;-><init>(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 1406
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    if-eqz p2, :cond_2

    move-object p2, p1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 1407
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 1408
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p1

    .line 1410
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result p2

    .line 1412
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v0

    .line 1411
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    .line 1413
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 4

    .line 1424
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1425
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    if-nez p1, :cond_2

    .line 1429
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    .line 1430
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->initializeKeepSessionIdAudioTrack(I)I

    move-result p1

    goto :goto_0

    .line 1432
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 1434
    :cond_2
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v1, v0, :cond_3

    .line 1437
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->initializeKeepSessionIdAudioTrack(I)I

    .line 1439
    :cond_3
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioSessionId:I

    const/4 v1, 0x1

    .line 1440
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    const/4 v1, 0x2

    .line 1441
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1443
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .locals 2

    .line 1455
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 1456
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .locals 2

    .line 1607
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1608
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 1609
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/16 v1, 0x8

    .line 1610
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1611
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 1612
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 1

    .line 1710
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1711
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setMuted(Z)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 1

    .line 1692
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1693
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setVolume(I)V

    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 2

    .line 939
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 940
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->foregroundMode:Z

    if-eq v0, p1, :cond_0

    .line 941
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->foregroundMode:Z

    .line 942
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setForegroundMode(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 944
    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    const/16 v1, 0x3eb

    .line 946
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 944
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stopInternal(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    :cond_0
    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .locals 1

    .line 1530
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1531
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playerReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    return-void
.end method

.method public setHandleWakeLock(Z)V
    .locals 0

    .line 1647
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1648
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setWakeMode(I)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 566
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 567
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 560
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 561
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 572
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 573
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .locals 1

    .line 578
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 580
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 0

    .line 585
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 586
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 591
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x1

    .line 592
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 608
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 609
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSourcesInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 597
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 598
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSourcesInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .locals 1

    .line 749
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 750
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 753
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPauseAtEndOfWindow(Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 765
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 767
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v0

    .line 769
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v1

    .line 768
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 12

    .line 891
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_0

    .line 893
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackInfo;->copyWithPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 899
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 900
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v1, p0

    .line 901
    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 2

    .line 1214
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1215
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1219
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1220
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v0, 0xf

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 1468
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x1

    const/16 v1, 0xc

    .line 1469
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 2

    .line 1539
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1540
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1543
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1546
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1547
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    const/4 v0, 0x1

    .line 1548
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    goto :goto_0

    .line 1550
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 1552
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3

    .line 780
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 781
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    if-eq v0, p1, :cond_0

    .line 782
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->repeatMode:I

    .line 783
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setRepeatMode(I)V

    .line 784
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0x8

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 786
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateAvailableCommands()V

    .line 787
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 1

    .line 921
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_0

    .line 923
    sget-object p1, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    .line 927
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    :cond_1
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 3

    .line 799
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 800
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 801
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 802
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleModeEnabled(Z)V

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0x9

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda23;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 806
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updateAvailableCommands()V

    .line 807
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 14

    .line 724
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 725
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    .line 726
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    .line 732
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v3

    .line 731
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 728
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplayer2/PlaybackInfo;Lcom/google/android/exoplayer2/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplayer2/PlaybackInfo;

    move-result-object v4

    .line 733
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 734
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v3, p0

    .line 735
    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplayer2/PlaybackInfo;IIZZIJIZ)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 3

    .line 1499
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1500
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1503
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->skipSilenceEnabled:Z

    const/4 v0, 0x1

    const/16 v1, 0x9

    .line 1504
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1505
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0x17

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda24;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda24;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method setThrowsWhenUsingWrongThread(Z)V
    .locals 2

    .line 1727
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    .line 1728
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->setThrowsWhenUsingWrongThread(Z)V

    .line 1729
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    instance-of v1, v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;

    if-eqz v1, :cond_0

    .line 1730
    check-cast v0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;

    .line 1731
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->setThrowsWhenUsingWrongThread(Z)V

    :cond_0
    return-void
.end method

.method public setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 3

    .line 1189
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1190
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 1191
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 1195
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0x13

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda22;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda22;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoChangeFrameRateStrategy(I)V
    .locals 2

    .line 1247
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1248
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1251
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 1253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1252
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .locals 2

    .line 1585
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1586
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 1587
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/4 v1, 0x7

    .line 1588
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1589
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 1590
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 2

    .line 1233
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1234
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->videoScalingMode:I

    .line 1235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 1292
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1293
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1294
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1296
    :goto_0
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1301
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_0

    .line 1303
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_0

    .line 1305
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    const/4 v0, 0x1

    .line 1306
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 1307
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1308
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1309
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1310
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1311
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1312
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 1313
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1315
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1316
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    .line 1331
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1332
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_0

    .line 1333
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1334
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1335
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 1336
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_1

    .line 1337
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1338
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 1339
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/16 v1, 0x2710

    .line 1340
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 1341
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1343
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->addVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 1344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1345
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 1347
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :goto_1
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2

    .line 1359
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_0

    .line 1361
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_1

    .line 1363
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1364
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 1365
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 1366
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1371
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 1373
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1374
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_1

    .line 1376
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    .line 1377
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 3

    .line 1474
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1475
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 1476
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->volume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1479
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->volume:F

    .line 1480
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->sendVolumeToRenderers()V

    .line 1482
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    const/16 v1, 0x16

    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public setWakeMode(I)V
    .locals 2

    .line 1653
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1664
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 1665
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    goto :goto_0

    .line 1660
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 1661
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    goto :goto_0

    .line 1656
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 1657
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 955
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x0

    .line 956
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stop(Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 3

    .line 961
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->verifyApplicationThread()V

    .line 962
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    const/4 v0, 0x0

    .line 963
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stopInternal(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    .line 964
    new-instance p1, Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplayer2/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/text/CueGroup;-><init>(Ljava/util/List;J)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplayer2/text/CueGroup;

    return-void
.end method
