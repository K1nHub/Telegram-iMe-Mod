.class public final Lcom/google/android/exoplayer2/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field analyticsCollectorFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplayer2/util/Clock;",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;",
            ">;"
        }
    .end annotation
.end field

.field audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field bandwidthMeterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field buildCalled:Z

.field clock:Lcom/google/android/exoplayer2/util/Clock;

.field final context:Landroid/content/Context;

.field detachSurfaceTimeoutMs:J

.field foregroundModeTimeoutMs:J

.field handleAudioBecomingNoisy:Z

.field handleAudioFocus:Z

.field livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field loadControlSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/LoadControl;",
            ">;"
        }
    .end annotation
.end field

.field looper:Landroid/os/Looper;

.field mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field pauseAtEndOfMediaItems:Z

.field playbackLooper:Landroid/os/Looper;

.field priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field releaseTimeoutMs:J

.field renderersFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/RenderersFactory;",
            ">;"
        }
    .end annotation
.end field

.field seekBackIncrementMs:J

.field seekForwardIncrementMs:J

.field seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field skipSilenceEnabled:Z

.field trackSelectorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector;",
            ">;"
        }
    .end annotation
.end field

.field useLazyPreparation:Z

.field usePlatformDiagnostics:Z

.field videoChangeFrameRateStrategy:I

.field videoScalingMode:I

.field wakeMode:I


# direct methods
.method public static synthetic $r8$lambda$-20PXyNKLUvSsFndoLKShjDf3xg(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$6(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0AeKkPPzXtGRyaZfObakkNvDQxU(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$13(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4MJxRma5YZbnV5wJNhmepv4FhNA(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$3(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AbdGeuic6Ij7iyVMd3YeZb6E_JE(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$setMediaSourceFactory$17(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BYXub_ihc_-ya6fF9TdbhhGDr50(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$15(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C-5Ffb4z3uoaL1oyuSYPz9pS68g(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/LoadControl;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$11(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/LoadControl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FVGxm2JpOVcFlwB1cAh714eUqVk(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$7(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GuxE-cacedVlImHD8iDdMDOpFJ4(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$setTrackSelector$18(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Hq25N4QETpUymWCg70DLpzhHWhs(Landroid/content/Context;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$0(Landroid/content/Context;)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Iqf1h2yL4j8lAvHKbYQzK_Rux9k(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$setRenderersFactory$16(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RkxSve2SE5dmiz3L8pZhHD8VZVo(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$9(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VJChOQKhf8DO5Hd-j4AFJoKd82c(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$14(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_vjDsacr1VX7EACpX86I7y_s60A(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$8(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cE0gQaOEGre8JbWgQcbqLA9QzwU(Landroid/content/Context;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$4(Landroid/content/Context;)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e_2tsONkqdjzUsK3INiS4v5FnJ4(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$1(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jomvW7jCElzwjkby_I-IEkKNkNU(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$10(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oo3zkIBuSRHGKH5Wllevbv6E0zQ(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$setBandwidthMeter$20(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$s5j7alwVn_rzwe5oRzZvhRkrx14(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$setAnalyticsCollector$21(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vV2ws6spu9HrllkAonla3cX5pAE(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$12(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wgX52bOwJN_SxWy-wq4KmaBRPbk(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$2(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xZaK9DjLoRNdBWtrqbwfHJduMcE(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/LoadControl;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$setLoadControl$19(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/LoadControl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xaIUF2R5Kj_Z3uEuTnshj59N0mk(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$5(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 531
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V
    .locals 2

    .line 550
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda14;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda14;-><init>(Lcom/google/android/exoplayer2/RenderersFactory;)V

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 554
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V
    .locals 2

    .line 594
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/RenderersFactory;)V

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda16;

    invoke-direct {v1, p3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 595
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V
    .locals 8

    .line 622
    new-instance v2, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda13;

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda13;-><init>(Lcom/google/android/exoplayer2/RenderersFactory;)V

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda17;

    invoke-direct {v3, p3}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda17;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda20;

    invoke-direct {v4, p4}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda20;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)V

    new-instance v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda9;

    invoke-direct {v5, p5}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/LoadControl;)V

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda22;

    invoke-direct {v6, p6}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda22;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v7, p7}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    .line 630
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-static {p7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V
    .locals 2

    .line 571
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda18;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda18;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 572
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;)V"
        }
    .end annotation

    .line 641
    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda6;

    invoke-direct {v4, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda23;->INSTANCE:Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda23;

    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v6, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda2;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelector;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/LoadControl;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
            ">;",
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplayer2/util/Clock;",
            "Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;",
            ">;)V"
        }
    .end annotation

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 660
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 661
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    .line 662
    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    .line 663
    iput-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 664
    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    .line 665
    iput-object p7, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    .line 666
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 667
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 p1, 0x0

    .line 668
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->wakeMode:I

    const/4 p2, 0x1

    .line 669
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->videoScalingMode:I

    .line 670
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    .line 671
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 672
    sget-object p1, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    const-wide/16 p3, 0x1388

    .line 673
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p3, 0x3a98

    .line 674
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 675
    new-instance p1, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 676
    sget-object p1, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const-wide/16 p3, 0x1f4

    .line 677
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p3, 0x7d0

    .line 678
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    .line 679
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 1

    .line 533
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$new$1(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 2

    .line 534
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method private static synthetic lambda$new$10(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$11(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/LoadControl;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$12(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$13(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$14(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 1

    .line 645
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$new$15(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0

    .line 647
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$2(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$3(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 2

    .line 553
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method private static synthetic lambda$new$4(Landroid/content/Context;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 1

    .line 571
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$new$5(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$6(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$7(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$8(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$9(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setAnalyticsCollector$21(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setBandwidthMeter$20(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setLoadControl$19(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/LoadControl;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setMediaSourceFactory$17(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setRenderersFactory$16(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setTrackSelector$18(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 2

    .line 1131
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1132
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    .line 1133
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Lcom/google/android/exoplayer2/Player;)V

    return-object v0
.end method

.method public buildSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 2

    .line 1137
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1138
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    .line 1139
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V

    return-object v0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 694
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    return-object p0
.end method

.method public setAnalyticsCollector(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 798
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 799
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    return-object p0
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 835
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 836
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 837
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->handleAudioFocus:Z

    return-object p0
.end method

.method public setBandwidthMeter(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 767
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 768
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda21;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 1103
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1104
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 1031
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1032
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 878
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 879
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 1065
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1066
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    return-object p0
.end method

.method public setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 752
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 753
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/LoadControl;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 783
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 784
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 723
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda15;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 1050
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1051
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    return-object p0
.end method

.method public setPlaybackLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 1120
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1121
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->playbackLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 815
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 816
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 1013
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1014
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->releaseTimeoutMs:J

    return-object p0
.end method

.method public setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 707
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 708
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/exoplayer2/RenderersFactory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 978
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 979
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 980
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekBackIncrementMs:J

    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 994
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 995
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 996
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekForwardIncrementMs:J

    return-object p0
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 963
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 964
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/SeekParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 892
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 893
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->skipSilenceEnabled:Z

    return-object p0
.end method

.method public setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 737
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 738
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder$$ExternalSyntheticLambda19;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 949
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 950
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->useLazyPreparation:Z

    return-object p0
.end method

.method public setUsePlatformDiagnostics(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 1087
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1088
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-object p0
.end method

.method public setVideoChangeFrameRateStrategy(I)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 931
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 932
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    return-object p0
.end method

.method public setVideoScalingMode(I)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 909
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 910
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->videoScalingMode:I

    return-object p0
.end method

.method public setWakeMode(I)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 1

    .line 860
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 861
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->wakeMode:I

    return-object p0
.end method
