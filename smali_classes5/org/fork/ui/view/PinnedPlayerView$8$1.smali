.class Lorg/fork/ui/view/PinnedPlayerView$8$1;
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

    .line 368
    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$8$1;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 371
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8$1;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    iget v1, v0, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lorg/fork/ui/view/PinnedPlayerView$8;->pressedCount:I

    const-wide/16 v3, 0x7d0

    if-ne v1, v2, :cond_0

    .line 373
    iget-object v0, v0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/fork/ui/view/PinnedPlayerView;->access$502(Lorg/fork/ui/view/PinnedPlayerView;I)I

    .line 374
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8$1;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    iget-object v0, v0, Lorg/fork/ui/view/PinnedPlayerView$8;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-static {v0, v1}, Lorg/fork/ui/view/PinnedPlayerView;->access$102(Lorg/fork/ui/view/PinnedPlayerView;F)F

    .line 375
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8$1;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/fork/ui/view/PinnedPlayerView$8;->lastTime:J

    .line 376
    invoke-static {p0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 377
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$8$1;->this$1:Lorg/fork/ui/view/PinnedPlayerView$8;

    invoke-static {v0}, Lorg/fork/ui/view/PinnedPlayerView$8;->access$1100(Lorg/fork/ui/view/PinnedPlayerView$8;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 379
    invoke-static {p0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
