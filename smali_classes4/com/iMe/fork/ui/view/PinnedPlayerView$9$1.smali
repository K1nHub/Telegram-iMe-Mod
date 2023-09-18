.class Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;
.super Ljava/lang/Object;
.source "PinnedPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/view/PinnedPlayerView$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iMe/fork/ui/view/PinnedPlayerView$9;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/PinnedPlayerView$9;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;->this$1:Lcom/iMe/fork/ui/view/PinnedPlayerView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 523
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;->this$1:Lcom/iMe/fork/ui/view/PinnedPlayerView$9;

    iget-object v0, v0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$308(Lcom/iMe/fork/ui/view/PinnedPlayerView;)I

    .line 527
    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;->this$1:Lcom/iMe/fork/ui/view/PinnedPlayerView$9;

    iget-object v0, v0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$300(Lcom/iMe/fork/ui/view/PinnedPlayerView;)I

    move-result v0

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 528
    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;->this$1:Lcom/iMe/fork/ui/view/PinnedPlayerView$9;

    iput-boolean v3, v0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->pressed:Z

    .line 529
    iget-object v0, v0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v0, v3}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$502(Lcom/iMe/fork/ui/view/PinnedPlayerView;I)I

    .line 530
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;->this$1:Lcom/iMe/fork/ui/view/PinnedPlayerView$9;

    iget-object v0, v0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$1400(Lcom/iMe/fork/ui/view/PinnedPlayerView;)V

    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;->this$1:Lcom/iMe/fork/ui/view/PinnedPlayerView$9;

    iget-object v0, v0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$500(Lcom/iMe/fork/ui/view/PinnedPlayerView;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 533
    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;->this$1:Lcom/iMe/fork/ui/view/PinnedPlayerView$9;

    iget-object v0, v0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$600(Lcom/iMe/fork/ui/view/PinnedPlayerView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 534
    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;->this$1:Lcom/iMe/fork/ui/view/PinnedPlayerView$9;

    iget-object v0, v0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$202(Lcom/iMe/fork/ui/view/PinnedPlayerView;J)J

    .line 536
    :cond_2
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 537
    invoke-static {p0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 538
    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9$1;->this$1:Lcom/iMe/fork/ui/view/PinnedPlayerView$9;

    iget-object v0, v0, Lcom/iMe/fork/ui/view/PinnedPlayerView$9;->this$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->access$300(Lcom/iMe/fork/ui/view/PinnedPlayerView;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 539
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 540
    invoke-static {p0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 542
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    :goto_1
    return-void
.end method
