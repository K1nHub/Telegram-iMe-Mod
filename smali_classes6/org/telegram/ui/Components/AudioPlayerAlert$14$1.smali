.class Lorg/telegram/ui/Components/AudioPlayerAlert$14$1;
.super Ljava/lang/Object;
.source "AudioPlayerAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert$14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$14;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert$14;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$14$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1047
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1050
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$14$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$14;

    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$14;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iget v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingForwardPressedCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingForwardPressedCount:I

    const-wide/16 v4, 0x7d0

    if-ne v2, v3, :cond_3

    .line 1052
    iput-boolean v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$14;->pressed:Z

    .line 1053
    iput v3, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    .line 1054
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$14$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$14;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$14;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$5700(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    goto :goto_0

    .line 1056
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$14$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$14;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$14;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    iget v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    if-ne v1, v3, :cond_2

    .line 1057
    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$14$1;->this$1:Lorg/telegram/ui/Components/AudioPlayerAlert$14;

    iget-object v0, v0, Lorg/telegram/ui/Components/AudioPlayerAlert$14;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastUpdateRewindingPlayerTime:J

    .line 1060
    :cond_2
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 1061
    invoke-static {p0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne v2, v0, :cond_4

    .line 1063
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 1064
    invoke-static {p0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 1066
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    :goto_1
    return-void
.end method
