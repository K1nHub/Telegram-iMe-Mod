.class Lorg/fork/ui/view/PinnedPlayerView$8$2;
.super Ljava/lang/Object;
.source "PinnedPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/view/PinnedPlayerView$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/fork/ui/view/PinnedPlayerView$8;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/PinnedPlayerView$8;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8$2;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 387
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 392
    :cond_0
    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView$8$2;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    iget-object v2, v2, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$100(Lorg/fork/ui/view/PinnedPlayerView;)F

    move-result v2

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 395
    iget-object v5, p0, Lorg/fork/ui/view/PinnedPlayerView$8$2;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    iget-wide v6, v5, Lorg/fork/ui/view/PinnedPlayerView$8;->lastTime:J

    sub-long v6, v3, v6

    .line 396
    iput-wide v3, v5, Lorg/fork/ui/view/PinnedPlayerView$8;->lastTime:J

    .line 397
    iget-wide v8, v5, Lorg/fork/ui/view/PinnedPlayerView$8;->lastUpdateTime:J

    sub-long v8, v3, v8

    .line 398
    iget v10, v5, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedCount:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const-wide/16 v10, 0x3

    :goto_0
    mul-long/2addr v6, v10

    goto :goto_1

    :cond_1
    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    const-wide/16 v10, 0x6

    goto :goto_0

    :cond_2
    const-wide/16 v10, 0xc

    goto :goto_0

    :goto_1
    long-to-float v0, v0

    mul-float/2addr v2, v0

    long-to-float v1, v6

    sub-float/2addr v2, v1

    float-to-long v1, v2

    long-to-float v1, v1

    div-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3

    move v1, v0

    .line 410
    :cond_3
    iget-object v2, v5, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2, v1}, Lorg/fork/ui/view/PinnedPlayerView;->access$102(Lorg/fork/ui/view/PinnedPlayerView;F)F

    .line 411
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 412
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 413
    iget-object v5, p0, Lorg/fork/ui/view/PinnedPlayerView$8$2;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    iget-object v5, v5, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v5, v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$400(Lorg/fork/ui/view/PinnedPlayerView;Lorg/telegram/messenger/MessageObject;)V

    .line 415
    :cond_4
    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView$8$2;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    iget-object v2, v2, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$500(Lorg/fork/ui/view/PinnedPlayerView;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView$8$2;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    iget v5, v2, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedCount:I

    if-lez v5, :cond_8

    const-wide/16 v5, 0xc8

    cmp-long v5, v8, v5

    if-gtz v5, :cond_5

    .line 416
    iget-object v2, v2, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$100(Lorg/fork/ui/view/PinnedPlayerView;)F

    move-result v2

    cmpl-float v2, v2, v0

    if-nez v2, :cond_7

    .line 417
    :cond_5
    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView$8$2;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    iput-wide v3, v2, Lorg/fork/ui/view/PinnedPlayerView$8;->lastUpdateTime:J

    .line 418
    iget-object v2, v2, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$100(Lorg/fork/ui/view/PinnedPlayerView;)F

    move-result v2

    cmpl-float v2, v2, v0

    if-nez v2, :cond_6

    .line 419
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 420
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->pauseByRewind()V

    goto :goto_2

    .line 422
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 425
    :cond_7
    :goto_2
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView$8$2;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    iget v2, v1, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedCount:I

    if-lez v2, :cond_8

    iget-object v1, v1, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v1}, Lorg/fork/ui/view/PinnedPlayerView;->access$100(Lorg/fork/ui/view/PinnedPlayerView;)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_8

    .line 426
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8$2;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    invoke-static {v0}, Lorg/fork/ui/view/PinnedPlayerView$8;->access$1100(Lorg/fork/ui/view/PinnedPlayerView$8;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_8
    return-void

    .line 389
    :cond_9
    :goto_3
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8$2;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/fork/ui/view/PinnedPlayerView$8;->lastTime:J

    return-void
.end method
