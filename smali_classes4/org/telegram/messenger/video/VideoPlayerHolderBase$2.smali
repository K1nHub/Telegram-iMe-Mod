.class Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;
.super Ljava/lang/Object;
.source "VideoPlayerHolderBase.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/video/VideoPlayerHolderBase;->ensurePlayerCreated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;


# direct methods
.method public static synthetic $r8$lambda$0NDzw5z6Kz-J2Uce_3JQCDErE54(Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->lambda$onRenderedFirstFrame$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRenderedFirstFrame$0()V
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-boolean v0, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onRenderedFirstFrame()V

    .line 187
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->access$000(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-static {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->access$000(Lorg/telegram/messenger/video/VideoPlayerHolderBase;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 189
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->access$002(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_1
    return-void
.end method


# virtual methods
.method public onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V
    .locals 0

    .line 171
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 3

    .line 181
    new-instance v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;)V

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onRenderedFirstFrame(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public bridge synthetic onSeekFinished(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekFinished(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public bridge synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate$-CC;->$default$onSeekStarted(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 3

    .line 153
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iput p2, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->lastState:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 158
    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->needRepeat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    .line 160
    iget-object v0, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 161
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-object v0, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_1

    .line 163
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progress:F

    goto :goto_1

    .line 155
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 156
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-object v1, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, v0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 166
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase$2;->this$0:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onStateChanged(ZI)V

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
