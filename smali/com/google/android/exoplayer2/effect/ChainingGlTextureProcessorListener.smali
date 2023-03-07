.class final Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;
.super Ljava/lang/Object;
.source "ChainingGlTextureProcessorListener.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;
.implements Lcom/google/android/exoplayer2/effect/GlTextureProcessor$OutputListener;


# instance fields
.field private final availableFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/effect/TextureInfo;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final consumingGlTextureProcessor:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

.field private consumingGlTextureProcessorInputCapacity:I

.field private final frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

.field private final producingGlTextureProcessor:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;


# direct methods
.method public static synthetic $r8$lambda$PS9H05mO1pjxW68fzP68wJ0WUCo(Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;Landroid/util/Pair;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->lambda$onReadyToAcceptInputFrame$0(Landroid/util/Pair;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$aUtMqFiGFxOeHbXQ0VNyS-SEYic(Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;Lcom/google/android/exoplayer2/effect/TextureInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->lambda$onInputFrameProcessed$1(Lcom/google/android/exoplayer2/effect/TextureInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yBhvP1kqzPTV1ROT7KHIcWiL8ds(Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->lambda$onOutputFrameAvailable$2(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/effect/GlTextureProcessor;Lcom/google/android/exoplayer2/effect/GlTextureProcessor;Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->producingGlTextureProcessor:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->consumingGlTextureProcessor:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    .line 64
    iput-object p3, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    .line 65
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->availableFrames:Ljava/util/Queue;

    return-void
.end method

.method private synthetic lambda$onInputFrameProcessed$1(Lcom/google/android/exoplayer2/effect/TextureInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;,
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->producingGlTextureProcessor:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->releaseOutputFrame(Lcom/google/android/exoplayer2/effect/TextureInfo;)V

    return-void
.end method

.method private synthetic lambda$onOutputFrameAvailable$2(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;,
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->consumingGlTextureProcessor:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->queueInputFrame(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V

    return-void
.end method

.method private synthetic lambda$onReadyToAcceptInputFrame$0(Landroid/util/Pair;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;,
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->consumingGlTextureProcessor:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/effect/TextureInfo;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->queueInputFrame(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCurrentOutputStreamEnded()V
    .locals 5

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->availableFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->availableFrames:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/google/android/exoplayer2/effect/TextureInfo;->UNSET:Lcom/google/android/exoplayer2/effect/TextureInfo;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->consumingGlTextureProcessor:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    .line 114
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/effect/GlTextureProcessor;)V

    .line 113
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInputFrameProcessed(Lcom/google/android/exoplayer2/effect/TextureInfo;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    new-instance v1, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;Lcom/google/android/exoplayer2/effect/TextureInfo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    return-void
.end method

.method public declared-synchronized onOutputFrameAvailable(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V
    .locals 2

    monitor-enter p0

    .line 97
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->consumingGlTextureProcessorInputCapacity:I

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    new-instance v1, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;Lcom/google/android/exoplayer2/effect/TextureInfo;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    .line 102
    iget p1, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->consumingGlTextureProcessorInputCapacity:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->consumingGlTextureProcessorInputCapacity:I

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->availableFrames:Ljava/util/Queue;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadyToAcceptInputFrame()V
    .locals 6

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->availableFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_0

    .line 72
    iget v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->consumingGlTextureProcessorInputCapacity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->consumingGlTextureProcessorInputCapacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->consumingGlTextureProcessor:Lcom/google/android/exoplayer2/effect/GlTextureProcessor;

    .line 79
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/effect/GlTextureProcessor;)V

    .line 78
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    new-instance v4, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/effect/ChainingGlTextureProcessorListener;Landroid/util/Pair;J)V

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
