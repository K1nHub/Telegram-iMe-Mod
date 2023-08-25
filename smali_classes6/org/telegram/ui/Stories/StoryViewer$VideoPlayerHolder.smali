.class public Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;
.super Ljava/lang/Object;
.source "StoryViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoPlayerHolder"
.end annotation


# instance fields
.field audioDisabled:Z

.field public currentPosition:J

.field final dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field firstFrameRendered:Z

.field initRunnable:Ljava/lang/Runnable;

.field lastState:I

.field logBuffering:Z

.field private onReadyListener:Ljava/lang/Runnable;

.field public paused:Z

.field playerDuration:J

.field progress:F

.field progressRunnable:Ljava/lang/Runnable;

.field volatile released:Z

.field stubAvailable:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;

.field uri:Landroid/net/Uri;

.field videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;


# direct methods
.method public static synthetic $r8$lambda$GHiM6aLj7Sj9YOxtUvcLhiA2swI(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;ZLandroid/net/Uri;ZJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lambda$start$2(ZLandroid/net/Uri;ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$OKNV9RSqwzY76ksLHXMod4fR7Vg(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lambda$start$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$SYtpQL-yVJaO2w3NdYmK-2kSw6A(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lambda$loopBack$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$WaNDW3JlsosZY_l62qk8UtY9XOE(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lambda$setAudioEnabled$6(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$c3tOWdUGrSxaqpDxxPp6eFG72kY(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lambda$play$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$eFszuCMRFjF8U0TYelMj8a7bcBo(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lambda$preparePlayer$0(ZLandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rK83mh1JnEVUWodmzpwa7Oz1GL0(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lambda$pause$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$yY4cjWCz8T2hzVhyI5LJ5QwyksU(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lambda$release$3(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;)V
    .locals 0

    .line 2530
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2547
    invoke-static {}, Lorg/telegram/messenger/Utilities;->getOrCreatePlayerQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 2550
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)Ljava/lang/Runnable;
    .locals 0

    .line 2530
    iget-object p0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->onReadyListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 2530
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->onReadyListener:Ljava/lang/Runnable;

    return-object p1
.end method

.method private ensurePlayerCreated(Z)V
    .locals 2

    .line 2627
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2628
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 2630
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/VideoPlayer;-><init>(ZZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2631
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 2705
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->setIsStory()V

    return-void
.end method

.method private synthetic lambda$loopBack$7()V
    .locals 3

    .line 2862
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2863
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_0
    const/4 v0, 0x0

    .line 2865
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progress:F

    .line 2866
    iput-wide v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->currentPosition:J

    return-void
.end method

.method private synthetic lambda$pause$4()V
    .locals 1

    .line 2772
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 2773
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$play$5()V
    .locals 3

    .line 2787
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    .line 2788
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v2, :cond_0

    .line 2789
    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 2791
    :cond_0
    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3100(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2793
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$preparePlayer$0(ZLandroid/net/Uri;)V
    .locals 2

    .line 2577
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 2580
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->ensurePlayerCreated(Z)V

    .line 2581
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string v0, "other"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 2582
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 2583
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    return-void
.end method

.method private synthetic lambda$release$3(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 3

    .line 2728
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2730
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2731
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2735
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2738
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 2742
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2744
    :cond_2
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-void
.end method

.method private synthetic lambda$setAudioEnabled$6(ZZ)V
    .locals 6

    .line 2805
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 2808
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz p1, :cond_4

    .line 2809
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->createdWithAudioTrack()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2811
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 2812
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v1

    .line 2813
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 p1, 0x0

    .line 2814
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2815
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->audioDisabled:Z

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->ensurePlayerCreated(Z)V

    .line 2816
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->uri:Landroid/net/Uri;

    const-string v5, "other"

    invoke-virtual {p1, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2817
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    if-nez p2, :cond_2

    .line 2819
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v4, p1, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v4, :cond_1

    .line 2820
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 2822
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3100(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2826
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v4, 0x32

    add-long/2addr v1, v4

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 2828
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 2829
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_2

    .line 2831
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 2832
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_2

    .line 2835
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

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

.method private synthetic lambda$start$1()V
    .locals 1

    const/4 v0, 0x0

    .line 2622
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->initRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$start$2(ZLandroid/net/Uri;ZJ)V
    .locals 1

    .line 2592
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 2595
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_2

    .line 2596
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->ensurePlayerCreated(Z)V

    .line 2597
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string v0, "other"

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2598
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setWorkerQueue(Lorg/telegram/messenger/DispatchQueue;)V

    if-nez p3, :cond_4

    .line 2600
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz p2, :cond_1

    .line 2601
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    .line 2603
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3100(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2605
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    goto :goto_2

    :cond_2
    if-nez p3, :cond_4

    .line 2609
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean p2, p1, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz p2, :cond_3

    .line 2610
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_1

    .line 2612
    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3100(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2614
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_4
    :goto_2
    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-lez p1, :cond_5

    .line 2618
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, p4, p5}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 2621
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {}, Lorg/telegram/ui/Stories/StoryViewer;->access$3300()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    goto :goto_3

    :cond_6
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    .line 2622
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getPlaybackProgress(J)F
    .locals 2

    .line 2841
    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lastState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2842
    iput p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progress:F

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 2846
    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->currentPosition:J

    long-to-float v0, v0

    long-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_0

    .line 2848
    :cond_1
    iget-wide p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->currentPosition:J

    long-to-float p1, p1

    iget-wide v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->playerDuration:J

    long-to-float p2, v0

    div-float v0, p1, p2

    .line 2850
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progress:F

    cmpg-float p2, v0, p1

    if-gez p2, :cond_2

    return p1

    .line 2853
    :cond_2
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progress:F

    .line 2855
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progress:F

    return p1
.end method

.method public isBuffering()Z
    .locals 2

    .line 2879
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->released:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lastState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loopBack()V
    .locals 2

    const/4 v0, 0x0

    .line 2859
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progress:F

    const/4 v0, 0x1

    .line 2860
    iput v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lastState:I

    .line 2861
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 5

    .line 2754
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 2757
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->paused:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 2760
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->paused:Z

    .line 2761
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-boolean v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz v2, :cond_3

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->firstFrameRendered:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2762
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->stubAvailable:Z

    .line 2763
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->playerStubBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    const/16 v2, 0x2d0

    const/16 v3, 0x500

    .line 2764
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->playerStubBitmap:Landroid/graphics/Bitmap;

    .line 2765
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v1, Lorg/telegram/ui/Stories/StoryViewer;->playerStubPaint:Landroid/graphics/Paint;

    .line 2767
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 2768
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->access$3200(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->playerStubBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    .line 2771
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public play()V
    .locals 2

    .line 2779
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 2782
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->paused:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2785
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->paused:Z

    .line 2786
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method preparePlayer(Landroid/net/Uri;Z)V
    .locals 2

    .line 2571
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->audioDisabled:Z

    const/4 v0, 0x1

    .line 2572
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->paused:Z

    .line 2573
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->initRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2574
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2576
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;ZLandroid/net/Uri;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method release(Ljava/lang/Runnable;)Z
    .locals 9

    .line 2714
    iget-object v8, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_0

    .line 2716
    invoke-static {v8}, Lorg/telegram/messenger/FileStreamLoadOperation;->getStreamPrioriy(Lorg/telegram/tgnet/TLRPC$Document;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2718
    invoke-static {v8, v0}, Lorg/telegram/messenger/FileStreamLoadOperation;->setPriorityForDocument(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 2719
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

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

    .line 2724
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->released:Z

    .line 2725
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 2726
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->initRunnable:Ljava/lang/Runnable;

    .line 2727
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v8, p1}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2746
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->playerStubBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 2747
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 2748
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iput-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer;->playerStubBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return v0
.end method

.method public setAudioEnabled(ZZ)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 2800
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->audioDisabled:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 2803
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->audioDisabled:Z

    .line 2804
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;ZZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnReadyListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 2710
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->onReadyListener:Ljava/lang/Runnable;

    return-void
.end method

.method start(ZLandroid/net/Uri;JZ)V
    .locals 9

    .line 2588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2589
    iput-boolean p5, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->audioDisabled:Z

    .line 2590
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->paused:Z

    .line 2591
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda6;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move-object v4, p2

    move v5, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;ZLandroid/net/Uri;ZJ)V

    iput-object v8, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->initRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
