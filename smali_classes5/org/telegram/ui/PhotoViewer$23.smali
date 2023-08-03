.class Lorg/telegram/ui/PhotoViewer$23;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private seekTo:I

.field private seekToRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field private wasPlaying:Z


# direct methods
.method public static synthetic $r8$lambda$5ggtjzWxABjjYvIy9xvt5ZZwR5E(Lorg/telegram/ui/PhotoViewer$23;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$23;->lambda$seekTo$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 6118
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$seekTo$0()V
    .locals 4

    .line 6182
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$23;->seekTo:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$3900(Lorg/telegram/ui/PhotoViewer;J)V

    .line 6183
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6184
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$23;->seekTo:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$18902(Lorg/telegram/ui/PhotoViewer;J)J

    .line 6185
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$19000(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$18900(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 6186
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$19002(Lorg/telegram/ui/PhotoViewer;J)J

    :cond_0
    const/4 v0, 0x0

    .line 6189
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->seekToRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private seekTo(F)V
    .locals 4

    .line 6170
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$18800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer$23;->seekTo:I

    .line 6171
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 6172
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$23;->seekTo:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$3900(Lorg/telegram/ui/PhotoViewer;J)V

    .line 6173
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 6174
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$23;->seekTo:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$18902(Lorg/telegram/ui/PhotoViewer;J)J

    .line 6175
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19000(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18900(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 6176
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$19002(Lorg/telegram/ui/PhotoViewer;J)J

    :cond_0
    const/4 p1, 0x0

    .line 6179
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->seekToRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 6180
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->seekToRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    .line 6181
    new-instance p1, Lorg/telegram/ui/PhotoViewer$23$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/PhotoViewer$23$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$23;)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->seekToRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateAvatarStartTime(I)V
    .locals 4

    .line 6195
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_3

    .line 6199
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$19100(Lorg/telegram/ui/PhotoViewer;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$19100(Lorg/telegram/ui/PhotoViewer;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 6200
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setVideoThumbVisible(Z)V

    if-ne p1, v1, :cond_2

    .line 6202
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getLeftProgress()F

    move-result v0

    mul-float/2addr v1, v0

    float-to-long v0, v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$19202(Lorg/telegram/ui/PhotoViewer;J)J

    goto :goto_0

    .line 6204
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getRightProgress()F

    move-result v0

    mul-float/2addr v1, v0

    float-to-long v0, v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$19202(Lorg/telegram/ui/PhotoViewer;J)J

    .line 6206
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$19302(Lorg/telegram/ui/PhotoViewer;J)J

    goto :goto_1

    .line 6209
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getProgress()F

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$19102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 6210
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$19100(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    mul-float/2addr v1, v0

    float-to-long v0, v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$19202(Lorg/telegram/ui/PhotoViewer;J)J

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public didStartDragging(I)V
    .locals 2

    .line 6216
    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    if-ne p1, v0, :cond_1

    .line 6217
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2700(Lorg/telegram/ui/PhotoViewer;)V

    .line 6218
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 6219
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19400(Lorg/telegram/ui/PhotoViewer;)V

    .line 6220
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$19302(Lorg/telegram/ui/PhotoViewer;J)J

    .line 6222
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19500(Lorg/telegram/ui/PhotoViewer;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$23;->wasPlaying:Z

    if-eqz p1, :cond_1

    .line 6223
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$2602(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 6224
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3200(Lorg/telegram/ui/PhotoViewer;)V

    .line 6225
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public didStopDragging(I)V
    .locals 4

    .line 6232
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->seekToRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 6233
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6234
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->seekToRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6236
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2700(Lorg/telegram/ui/PhotoViewer;)V

    .line 6237
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$19600(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/Components/VideoTimelinePlayView;->TYPE_PROGRESS:I

    if-ne p1, v0, :cond_1

    .line 6238
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19400(Lorg/telegram/ui/PhotoViewer;)V

    .line 6239
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19200(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$19302(Lorg/telegram/ui/PhotoViewer;J)J

    .line 6240
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19000(Lorg/telegram/ui/PhotoViewer;)J

    move-result-wide v0

    iget p1, p0, Lorg/telegram/ui/PhotoViewer$23;->seekTo:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 6241
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$19700(Lorg/telegram/ui/PhotoViewer;)V

    goto :goto_0

    .line 6244
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$23;->wasPlaying:Z

    if-eqz p1, :cond_3

    .line 6245
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$2602(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 6246
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$3100(Lorg/telegram/ui/PhotoViewer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onLeftProgressChanged(F)V
    .locals 2

    .line 6126
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6129
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6130
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$2602(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 6131
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 6132
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    const/4 v0, 0x1

    .line 6134
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer$23;->updateAvatarStartTime(I)V

    .line 6135
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$23;->seekTo(F)V

    .line 6136
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    .line 6137
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 6138
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18700(Lorg/telegram/ui/PhotoViewer;)V

    return-void
.end method

.method public onPlayProgressChanged(F)V
    .locals 2

    .line 6160
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6163
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2900(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 6164
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer$23;->updateAvatarStartTime(I)V

    .line 6166
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$23;->seekTo(F)V

    return-void
.end method

.method public onRightProgressChanged(F)V
    .locals 2

    .line 6143
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6146
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6147
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$2602(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 6148
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 6149
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    const/4 v0, 0x2

    .line 6151
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer$23;->updateAvatarStartTime(I)V

    .line 6152
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$23;->seekTo(F)V

    .line 6153
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayerSeekBar;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayerSeekBar;->setProgress(F)V

    .line 6154
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 6155
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$23;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$18700(Lorg/telegram/ui/PhotoViewer;)V

    return-void
.end method
