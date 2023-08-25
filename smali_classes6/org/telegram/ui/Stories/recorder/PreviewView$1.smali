.class Lorg/telegram/ui/Stories/recorder/PreviewView$1;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoTimelinePlayView$VideoTimelineViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PreviewView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dragStart:Ljava/lang/Runnable;

.field private dragging:Z

.field private lastDragTime:J

.field private seekTo:I

.field private seekToRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;


# direct methods
.method public static synthetic $r8$lambda$Sx79rHtol-60rvTRXkgb3uUB8cE(Lorg/telegram/ui/Stories/recorder/PreviewView$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->lambda$drag$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$YPKSJFuKZuYQ1f6QA5R4XcuBJvY(Lorg/telegram/ui/Stories/recorder/PreviewView$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->lambda$seekTo$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private drag(J)V
    .locals 2

    .line 135
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->lastDragTime:J

    .line 136
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->dragging:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onTimeDrag(ZJZ)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->dragStart:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    .line 139
    new-instance p1, Lorg/telegram/ui/Stories/recorder/PreviewView$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView$1;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->dragStart:Ljava/lang/Runnable;

    const-wide/16 v0, 0x96

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private duration()J
    .locals 4

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private durationOf(J)F
    .locals 4

    long-to-float p1, p1

    .line 83
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    iget-wide v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v0

    :goto_0
    long-to-float p2, v0

    div-float/2addr p1, p2

    return p1
.end method

.method private synthetic lambda$drag$0()V
    .locals 5

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->dragging:Z

    const/4 v1, 0x0

    .line 141
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->dragStart:Ljava/lang/Runnable;

    .line 142
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->lastDragTime:J

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onTimeDrag(ZJZ)V

    return-void
.end method

.method private synthetic lambda$seekTo$1()V
    .locals 3

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekTo:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekToRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private seekTo(F)V
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekTo:I

    .line 186
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekTo:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 190
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekToRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 192
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekToRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 193
    new-instance p1, Lorg/telegram/ui/Stories/recorder/PreviewView$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView$1;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekToRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public didStartDragging(I)V
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->getProgressOf(I)F

    move-result p1

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->duration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->drag(J)V

    return-void
.end method

.method public didStopDragging(I)V
    .locals 4

    .line 158
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekToRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 159
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekToRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 162
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-float p1, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr p1, v1

    .line 164
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 165
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekTo(F)V

    .line 167
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 169
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->dragging:Z

    .line 170
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->dragStart:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 171
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->dragStart:Ljava/lang/Runnable;

    .line 174
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->lastDragTime:J

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onTimeDrag(ZJZ)V

    return-void
.end method

.method public onLeftProgressChanged(F)V
    .locals 6

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    const-wide/32 v2, 0xe86c

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->durationOf(J)F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->durationOf(J)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    .line 99
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setLeftRightProgress(FF)V

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekTo(F)V

    .line 101
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 102
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->duration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->drag(J)V

    :cond_1
    return-void
.end method

.method public onPlayProgressChanged(F)V
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekTo(F)V

    .line 127
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->duration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->drag(J)V

    return-void
.end method

.method public onRightProgressChanged(F)V
    .locals 6

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$100(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput p1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    const-wide/32 v2, 0xe86c

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->durationOf(J)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    .line 114
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->durationOf(J)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    .line 115
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setLeftRightProgress(FF)V

    .line 116
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->seekTo(F)V

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$200(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoTimelinePlayView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/VideoTimelinePlayView;->setProgress(F)V

    .line 118
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->this$0:Lorg/telegram/ui/Stories/recorder/PreviewView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->access$000(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->duration()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;->drag(J)V

    :cond_1
    return-void
.end method
