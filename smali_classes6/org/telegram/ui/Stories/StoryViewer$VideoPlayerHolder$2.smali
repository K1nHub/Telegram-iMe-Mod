.class Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;
.super Ljava/lang/Object;
.source "StoryViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->ensurePlayerCreated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;


# direct methods
.method public static synthetic $r8$lambda$-hbqI99x3TWhdCI-Sr8Y8rgHEcw(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->lambda$onStateChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y_vPOXIqVNBDwqtu5cRyrXtGjIY(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->lambda$onStateChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cTGTA1ZH5GJ3okJk7o_oeUXU1u0(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->lambda$onRenderedFirstFrame$2()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V
    .locals 0

    .line 2424
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRenderedFirstFrame$2()V
    .locals 3

    .line 2475
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->released:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 2478
    iput-boolean v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    iput-boolean v2, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->firstFrameRendered:Z

    .line 2479
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    .line 2481
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->access$3600(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2482
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->access$3600(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2483
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->access$3602(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onStateChanged$0()V
    .locals 4

    .line 2434
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2435
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_0

    .line 2436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoryViewer displayed story buffering dialogId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getCurrentPeer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " storyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onStateChanged$1()V
    .locals 4

    .line 2443
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2444
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_0

    .line 2445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoryViewer displayed story playing dialogId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getCurrentPeer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " storyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V
    .locals 0

    .line 2464
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 3

    .line 2474
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;)V

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onRenderedFirstFrame(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekFinished(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekStarted(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 3

    .line 2427
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iput p2, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lastState:I

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 2452
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoryViewer;->access$300(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2453
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/4 p2, 0x0

    iput p2, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progress:F

    .line 2454
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 2455
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_1

    .line 2457
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progress:F

    goto :goto_1

    .line 2429
    :cond_2
    :goto_0
    iget-object v2, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2430
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v2, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2431
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-boolean v2, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->firstFrameRendered:Z

    if-eqz v2, :cond_3

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    .line 2432
    iput-boolean v0, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->logBuffering:Z

    .line 2433
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2440
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->logBuffering:Z

    if-eqz v0, :cond_4

    if-ne p2, v1, :cond_4

    const/4 p2, 0x0

    .line 2441
    iput-boolean p2, p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->logBuffering:Z

    .line 2442
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    return-void
.end method
