.class Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$1;
.super Ljava/lang/Object;
.source "StoryViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V
    .locals 0

    .line 2550
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2553
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v1, :cond_1

    .line 2554
    iget v2, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lastState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2555
    iput v1, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progress:F

    goto :goto_0

    .line 2557
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->currentPosition:J

    .line 2558
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->playerDuration:J

    .line 2560
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget v1, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lastState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2561
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2562
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$1;->this$1:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    iget-object v1, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->dispatchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
