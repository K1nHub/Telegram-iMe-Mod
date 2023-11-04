.class public Lorg/telegram/messenger/video/VideoPlayerHolderBase;
.super Ljava/lang/Object;
.source "VideoPlayerHolderBase.java"


# instance fields
.field audioDisabled:Z

.field private final betterSeek:Ljava/lang/Runnable;

.field contentUri:Landroid/net/Uri;

.field private currentAccount:I

.field public currentPosition:J

.field public currentSeek:F

.field public volatile currentSeekThread:F

.field final dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field private volatile duration:J

.field public firstFrameRendered:Z

.field private volatile firstSeek:Z

.field initRunnable:Ljava/lang/Runnable;

.field private lastBetterSeek:J

.field private volatile lastSeek:J

.field lastState:I

.field private onReadyListener:Ljava/lang/Runnable;

.field private onSeekUpdate:Ljava/lang/Runnable;

.field public paused:Z

.field public pendingSeekTo:J

.field playerDuration:J

.field public playerStubBitmap:Landroid/graphics/Bitmap;

.field public playerStubPaint:Landroid/graphics/Paint;

.field public progress:F

.field progressRunnable:Ljava/lang/Runnable;

.field volatile released:Z

.field private volatile seeking:Z

.field startTime:J

.field public stubAvailable:Z

.field private surfaceView:Landroid/view/SurfaceView;

.field private textureView:Landroid/view/TextureView;

.field private final updateSeek:Ljava/lang/Runnable;

.field public uri:Landroid/net/Uri;

.field videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;


# direct methods
.method public static synthetic $r8$lambda$0sFUlyWaowxNCgDPyfpYG-xYqgI(Lorg/telegram/messenger/video/VideoPlayerHolderBase;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$setPlaybackSpeed$10(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$2UpeXtt-p6q5KAmx_zMF-TuDzsQ(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$release$3(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7BMA3XijoXKJDIlitRACepQOqwM(Lorg/telegram/messenger/video/VideoPlayerHolderBase;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$setVolume$8(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$8SPR7WBlADBeOQWJ4vqx-heqHls(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$CK75Cc6dqwpkWGR1vdWotUEti20(Lorg/telegram/messenger/video/VideoPlayerHolderBase;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$seekTo$9(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$KSERPtNrokHCg3iRzpqa-8fOUKE(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$preparePlayer$0(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MDWi0Yr_UJ_u2_Qpc5BHAQ8eFf0(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$VSCjtT78IiABxE5jzca3uHE7eYw(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZLandroid/net/Uri;ZJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$start$2(ZLandroid/net/Uri;ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$XiSZw3WICRN6KQQCzNpSMFeNMdE(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$play$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$aew7dOd8nQo151KbR-jOk0aWzQ8(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$loopBack$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$ehWhJFg1ytB6IfMYANBktQAfraA(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$setAudioEnabled$6(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$tdejxIrJY3ZJznTtxLnH9c-D1EE(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$new$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$wmi35ELMURPnZRxGd_VOL97qBJw(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lambda$pause$4()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lorg/telegram/messenger/Utilities;->getOrCreatePlayerQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 69
    new-instance v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$1;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progressRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstSeek:Z

    const-wide/16 v0, -0x1

    .line 450
    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    .line 451
    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastBetterSeek:J

    const/4 v0, 0x0

    .line 452
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    .line 453
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeekThread:F

    .line 456
    new-instance v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->betterSeek:Ljava/lang/Runnable;

    .line 462
    new-instance v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->updateSeek:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)Landroid/view/SurfaceView;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)Ljava/lang/Runnable;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onReadyListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onReadyListener:Ljava/lang/Runnable;

    return-object p1
.end method

.method private ensurePlayerCreated(Z)V
    .locals 2

    .line 151
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 152
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 154
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/VideoPlayer;-><init>(ZZ)V

    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 155
    new-instance p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 209
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->setIsStory()V

    return-void
.end method

.method private synthetic lambda$loopBack$7()V
    .locals 3

    .line 375
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_0
    const/4 v0, 0x0

    .line 378
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    .line 379
    iput-wide v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    return-void
.end method

.method private synthetic lambda$new$11()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$new$12()V
    .locals 6

    .line 463
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 466
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeekThread:F

    iget-wide v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->duration:J

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 467
    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 468
    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    .line 470
    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-boolean v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstSeek:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x15e

    goto :goto_0

    :cond_2
    const/16 v4, 0x28

    :goto_0
    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    const/4 v2, 0x0

    .line 471
    iput-boolean v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstSeek:Z

    .line 472
    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastBetterSeek:J

    .line 473
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->betterSeek:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 474
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->betterSeek:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    .line 475
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$pause$4()V
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$play$5()V
    .locals 5

    .line 292
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_2

    .line 293
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 298
    :goto_0
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pendingSeekTo:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 299
    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 300
    iput-wide v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pendingSeekTo:J

    .line 302
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$preparePlayer$0(ZLandroid/net/Uri;)V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->ensurePlayerCreated(Z)V

    .line 102
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string/jumbo v0, "other"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 103
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 104
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method

.method private synthetic lambda$release$3(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 233
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    .line 234
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 237
    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 240
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 242
    :cond_2
    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-void
.end method

.method private synthetic lambda$seekTo$9(J)V
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    .line 422
    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->pendingSeekTo:J

    return-void

    .line 425
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    return-void
.end method

.method private synthetic lambda$setAudioEnabled$6(ZZ)V
    .locals 6

    .line 314
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz p1, :cond_4

    .line 318
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->createdWithAudioTrack()Z

    move-result v1

    if-nez v1, :cond_4

    .line 320
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 321
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v1

    .line 322
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 p1, 0x0

    .line 323
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 324
    iget-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->audioDisabled:Z

    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->ensurePlayerCreated(Z)V

    .line 325
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->uri:Landroid/net/Uri;

    const-string/jumbo v5, "other"

    invoke-virtual {p1, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    if-nez p2, :cond_2

    .line 328
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_1

    .line 329
    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v4, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 335
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v4, 0x32

    add-long/2addr v1, v4

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 337
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 338
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_2

    .line 340
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 341
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_2

    .line 344
    :cond_4
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$setPlaybackSpeed$10(F)V
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlaybackSpeed(F)V

    return-void
.end method

.method private synthetic lambda$setVolume$8(F)V
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$start$1()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$start$2(ZLandroid/net/Uri;ZJ)V
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_2

    .line 120
    invoke-direct {p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->ensurePlayerCreated(Z)V

    .line 121
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string/jumbo v0, "other"

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    if-nez p3, :cond_4

    .line 124
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_1

    .line 125
    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 129
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    goto :goto_2

    :cond_2
    if-nez p3, :cond_4

    .line 133
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_3

    .line 134
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_1

    .line 136
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 138
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_4
    :goto_2
    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-lez p1, :cond_5

    .line 142
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, p4, p5}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 146
    :cond_5
    new-instance p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .line 396
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    return-wide v0
.end method

.method public getCurrentUri()Landroid/net/Uri;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 400
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerDuration:J

    return-wide v0
.end method

.method public getPlaybackProgress(J)F
    .locals 2

    .line 350
    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 351
    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 355
    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    long-to-float v0, v0

    long-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_0

    .line 357
    :cond_1
    iget-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    long-to-float p1, p1

    iget-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerDuration:J

    long-to-float p2, v0

    div-float v0, p1, p2

    .line 362
    :goto_0
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    .line 363
    iget-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seeking:Z

    if-nez p1, :cond_2

    .line 364
    iget p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    .line 365
    iget-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    iput-wide p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastSeek:J

    .line 368
    :cond_2
    :goto_1
    iget p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    return p1
.end method

.method public isBuffering()Z
    .locals 2

    .line 392
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public loopBack()V
    .locals 2

    const/4 v0, 0x0

    .line 372
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    const/4 v0, 0x1

    .line 373
    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastState:I

    .line 374
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public needRepeat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    .line 252
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    .line 259
    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->prepareStub()V

    .line 260
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public play()V
    .locals 2

    .line 284
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    .line 291
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public preparePlayer(Landroid/net/Uri;Z)V
    .locals 2

    .line 90
    iput-boolean p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->audioDisabled:Z

    .line 91
    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentAccount:I

    iput v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentAccount:I

    .line 92
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->contentUri:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZLandroid/net/Uri;)V

    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareStub()V
    .locals 4

    .line 268
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->stubAvailable:Z

    .line 270
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    .line 271
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    .line 272
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubPaint:Landroid/graphics/Paint;

    .line 274
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    .line 276
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iput-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->stubAvailable:Z

    :cond_1
    return-void
.end method

.method public release(Ljava/lang/Runnable;)Z
    .locals 9

    .line 219
    iget-object v8, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_0

    .line 221
    invoke-static {v8}, Lorg/telegram/messenger/FileStreamLoadOperation;->getStreamPrioriy(Lorg/telegram/tgnet/TLRPC$Document;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 223
    invoke-static {v8, v0}, Lorg/telegram/messenger/FileStreamLoadOperation;->setPriorityForDocument(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 224
    iget v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/FileLoader;->changePriority(ILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/SecureDocument;Lorg/telegram/messenger/WebFile;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 227
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    .line 228
    iget-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 229
    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    .line 230
    iget-object v2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v8, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 244
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 245
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    iput-object v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->playerStubBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return v0
.end method

.method public seek(FJ)F
    .locals 1

    .line 491
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    .line 492
    iget p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    return p1

    .line 494
    :cond_0
    iput-wide p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->duration:J

    .line 495
    iget p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    add-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    .line 496
    iput p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeekThread:F

    .line 497
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->updateSeek:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 498
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p2, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->updateSeek:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 499
    iget p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentSeek:F

    return p1
.end method

.method public seekTo(J)V
    .locals 2

    .line 420
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAudioEnabled(ZZ)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 309
    iget-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->audioDisabled:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 312
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->audioDisabled:Z

    .line 313
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnReadyListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onReadyListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnSeekUpdate(Ljava/lang/Runnable;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onSeekUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    .line 434
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSeeking(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 481
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seeking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstSeek:Z

    .line 484
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seeking:Z

    if-nez p1, :cond_1

    .line 486
    iget-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->betterSeek:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 384
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start(ZLandroid/net/Uri;JZ)V
    .locals 9

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->startTime:J

    .line 110
    iput-boolean p5, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->audioDisabled:Z

    .line 111
    iput-boolean p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 113
    iput-wide p3, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move-object v4, p2

    move v5, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;ZLandroid/net/Uri;ZJ)V

    iput-object v8, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public with(Landroid/view/SurfaceView;)Lorg/telegram/messenger/video/VideoPlayerHolderBase;
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public with(Landroid/view/TextureView;)Lorg/telegram/messenger/video/VideoPlayerHolderBase;
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->surfaceView:Landroid/view/SurfaceView;

    .line 61
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->textureView:Landroid/view/TextureView;

    return-object p0
.end method
