.class Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;
.super Ljava/lang/Object;
.source "VideoScreenPreview.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->runVideoPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/telegram/ui/Components/VideoPlayer;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 3

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->firstFrameRendered:Z

    if-nez v1, :cond_0

    .line 566
    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3$1;-><init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 573
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
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
    .locals 2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 546
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 547
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 549
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    :cond_1
    :goto_0
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
