.class Lcom/google/android/exoplayer2/effect/ExternalTextureManager;
.super Ljava/lang/Object;
.source "ExternalTextureManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/effect/GlTextureProcessor$InputListener;


# instance fields
.field private final availableFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile currentFrame:Lcom/google/android/exoplayer2/util/FrameInfo;

.field private final externalTexId:I

.field private final externalTextureProcessor:Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;

.field private final externalTextureProcessorInputCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

.field private volatile inputStreamEnded:Z

.field private final pendingFrames:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/exoplayer2/util/FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private previousStreamOffsetUs:J

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final textureTransformMatrix:[F


# direct methods
.method public static synthetic $r8$lambda$BnUJn3MWfj83D9KWXHBSrtjmAN0(Lcom/google/android/exoplayer2/effect/ExternalTextureManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->maybeQueueFrameToExternalTextureProcessor()V

    return-void
.end method

.method public static synthetic $r8$lambda$zbVPnorvYsVNZ_9wPDAafgq_dU8(Lcom/google/android/exoplayer2/effect/ExternalTextureManager;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->lambda$getSurfaceTexture$0(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTextureProcessor:Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    .line 75
    :try_start_0
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->createExternalTexture()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTexId:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    new-instance p2, Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->textureTransformMatrix:[F

    .line 81
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->availableFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTextureProcessorInputCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 84
    iput-wide p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->previousStreamOffsetUs:J

    return-void

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Lcom/google/android/exoplayer2/util/FrameProcessingException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/util/FrameProcessingException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private synthetic lambda$getSurfaceTexture$0(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->availableFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 91
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    new-instance v0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/effect/ExternalTextureManager;)V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    return-void
.end method

.method private maybeQueueFrameToExternalTextureProcessor()V
    .locals 9

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTextureProcessorInputCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->availableFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 149
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->currentFrame:Lcom/google/android/exoplayer2/util/FrameInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->availableFrameCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/FrameInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->currentFrame:Lcom/google/android/exoplayer2/util/FrameInfo;

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->currentFrame:Lcom/google/android/exoplayer2/util/FrameInfo;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/FrameInfo;

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTextureProcessorInputCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 160
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->textureTransformMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 161
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTextureProcessor:Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;

    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->textureTransformMatrix:[F

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;->setTextureTransformMatrix([F)V

    .line 162
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    .line 163
    iget-wide v3, v0, Lcom/google/android/exoplayer2/util/FrameInfo;->streamOffsetUs:J

    .line 164
    iget-wide v5, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->previousStreamOffsetUs:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 166
    iget-object v5, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTextureProcessor:Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->signalEndOfCurrentInputStream()V

    .line 168
    :cond_1
    iput-wide v3, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->previousStreamOffsetUs:J

    :cond_2
    const-wide/16 v5, 0x3e8

    .line 171
    div-long/2addr v1, v5

    sub-long/2addr v1, v3

    .line 172
    iget-object v3, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTextureProcessor:Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;

    new-instance v4, Lcom/google/android/exoplayer2/effect/TextureInfo;

    iget v5, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTexId:I

    const/4 v6, -0x1

    iget v7, v0, Lcom/google/android/exoplayer2/util/FrameInfo;->width:I

    iget v0, v0, Lcom/google/android/exoplayer2/util/FrameInfo;->height:I

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/google/android/exoplayer2/effect/TextureInfo;-><init>(IIII)V

    invoke-interface {v3, v4, v1, v2}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->queueInputFrame(Lcom/google/android/exoplayer2/effect/TextureInfo;J)V

    .line 177
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->inputStreamEnded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTextureProcessor:Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->signalEndOfCurrentInputStream()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getPendingFrameCount()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/google/android/exoplayer2/effect/ExternalTextureManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/effect/ExternalTextureManager;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public onInputFrameProcessed(Lcom/google/android/exoplayer2/effect/TextureInfo;)V
    .locals 1

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->currentFrame:Lcom/google/android/exoplayer2/util/FrameInfo;

    .line 105
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    new-instance v0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/effect/ExternalTextureManager;)V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    return-void
.end method

.method public onReadyToAcceptInputFrame()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTextureProcessorInputCapacity:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->frameProcessingTaskExecutor:Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;

    new-instance v1, Lcom/google/android/exoplayer2/effect/ExternalTextureManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/effect/ExternalTextureManager$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/effect/ExternalTextureManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTaskExecutor;->submit(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V

    return-void
.end method

.method public registerInputFrame(Lcom/google/android/exoplayer2/util/FrameInfo;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method

.method public signalEndOfInput()V
    .locals 1

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->inputStreamEnded:Z

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->pendingFrames:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->currentFrame:Lcom/google/android/exoplayer2/util/FrameInfo;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/ExternalTextureManager;->externalTextureProcessor:Lcom/google/android/exoplayer2/effect/ExternalTextureProcessor;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/effect/GlTextureProcessor;->signalEndOfCurrentInputStream()V

    :cond_0
    return-void
.end method
