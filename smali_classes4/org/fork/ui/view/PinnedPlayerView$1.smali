.class Lorg/fork/ui/view/PinnedPlayerView$1;
.super Ljava/lang/Object;
.source "PinnedPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/view/PinnedPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/PinnedPlayerView;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/PinnedPlayerView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 140
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

    goto/16 :goto_2

    .line 145
    :cond_0
    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$100(Lorg/fork/ui/view/PinnedPlayerView;)F

    move-result v2

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 148
    iget-object v5, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v5}, Lorg/fork/ui/view/PinnedPlayerView;->access$000(Lorg/fork/ui/view/PinnedPlayerView;)J

    move-result-wide v5

    sub-long v5, v3, v5

    .line 149
    iget-object v7, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v7, v3, v4}, Lorg/fork/ui/view/PinnedPlayerView;->access$002(Lorg/fork/ui/view/PinnedPlayerView;J)J

    .line 150
    iget-object v7, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v7}, Lorg/fork/ui/view/PinnedPlayerView;->access$200(Lorg/fork/ui/view/PinnedPlayerView;)J

    move-result-wide v7

    sub-long v7, v3, v7

    .line 151
    iget-object v9, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v9}, Lorg/fork/ui/view/PinnedPlayerView;->access$300(Lorg/fork/ui/view/PinnedPlayerView;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const-wide/16 v11, 0x3

    :goto_0
    mul-long/2addr v11, v5

    sub-long/2addr v11, v5

    goto :goto_1

    .line 153
    :cond_1
    iget-object v9, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v9}, Lorg/fork/ui/view/PinnedPlayerView;->access$300(Lorg/fork/ui/view/PinnedPlayerView;)I

    move-result v9

    const/4 v11, 0x2

    if-ne v9, v11, :cond_2

    const-wide/16 v11, 0x6

    goto :goto_0

    :cond_2
    const-wide/16 v11, 0xc

    goto :goto_0

    :goto_1
    long-to-float v0, v0

    mul-float/2addr v2, v0

    long-to-float v1, v11

    add-float/2addr v2, v1

    float-to-long v1, v2

    long-to-float v1, v1

    div-float/2addr v1, v0

    const/4 v0, 0x0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3

    move v1, v0

    .line 163
    :cond_3
    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2, v1}, Lorg/fork/ui/view/PinnedPlayerView;->access$102(Lorg/fork/ui/view/PinnedPlayerView;F)F

    .line 164
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 165
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v5

    if-nez v5, :cond_4

    .line 167
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v6, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v6}, Lorg/fork/ui/view/PinnedPlayerView;->access$100(Lorg/fork/ui/view/PinnedPlayerView;)F

    move-result v6

    iput v6, v5, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 169
    :cond_4
    iget-object v5, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v5, v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$400(Lorg/fork/ui/view/PinnedPlayerView;Lorg/telegram/messenger/MessageObject;)V

    .line 171
    :cond_5
    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$500(Lorg/fork/ui/view/PinnedPlayerView;)I

    move-result v2

    if-ne v2, v10, :cond_8

    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$300(Lorg/fork/ui/view/PinnedPlayerView;)I

    move-result v2

    if-lez v2, :cond_8

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide/16 v5, 0xc8

    cmp-long v2, v7, v5

    if-gtz v2, :cond_6

    .line 172
    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$100(Lorg/fork/ui/view/PinnedPlayerView;)F

    move-result v2

    cmpl-float v2, v2, v0

    if-nez v2, :cond_7

    .line 173
    :cond_6
    iget-object v2, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v2, v3, v4}, Lorg/fork/ui/view/PinnedPlayerView;->access$202(Lorg/fork/ui/view/PinnedPlayerView;J)J

    .line 174
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    .line 176
    :cond_7
    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v1}, Lorg/fork/ui/view/PinnedPlayerView;->access$300(Lorg/fork/ui/view/PinnedPlayerView;)I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v1}, Lorg/fork/ui/view/PinnedPlayerView;->access$100(Lorg/fork/ui/view/PinnedPlayerView;)F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_8

    .line 177
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {v0}, Lorg/fork/ui/view/PinnedPlayerView;->access$600(Lorg/fork/ui/view/PinnedPlayerView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_8
    return-void

    .line 142
    :cond_9
    :goto_2
    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$1;->this$0:Lorg/fork/ui/view/PinnedPlayerView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/fork/ui/view/PinnedPlayerView;->access$002(Lorg/fork/ui/view/PinnedPlayerView;J)J

    return-void
.end method
