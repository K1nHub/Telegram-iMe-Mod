.class public Lcom/otaliastudios/gif/sink/DefaultDataSink;
.super Ljava/lang/Object;
.source "DefaultDataSink.java"

# interfaces
.implements Lcom/otaliastudios/gif/sink/DataSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/otaliastudios/gif/internal/Logger;


# instance fields
.field private final mMuxer:Landroid/media/MediaMuxer;

.field private final mMuxerChecks:Lcom/otaliastudios/gif/sink/DefaultDataSinkChecks;

.field private mMuxerIndex:I

.field private mMuxerStarted:Z

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-class v0, Lcom/otaliastudios/gif/sink/DefaultDataSink;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/otaliastudios/gif/internal/Logger;

    invoke-direct {v1, v0}, Lcom/otaliastudios/gif/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/otaliastudios/gif/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/gif/sink/DefaultDataSink;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxerStarted:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/otaliastudios/gif/sink/DefaultDataSinkChecks;

    invoke-direct {v0}, Lcom/otaliastudios/gif/sink/DefaultDataSinkChecks;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxerChecks:Lcom/otaliastudios/gif/sink/DefaultDataSinkChecks;

    .line 62
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private drainQueue()V
    .locals 10

    .line 117
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 119
    sget-object v0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output format determined, writing pending data into the muxer. samples:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/otaliastudios/gif/internal/Logger;->i(Ljava/lang/String;)V

    .line 122
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;

    .line 125
    invoke-static {v9}, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;->access$100(Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;)I

    move-result v4

    invoke-static {v9}, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;->access$200(Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;)J

    move-result-wide v5

    invoke-static {v9}, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;->access$300(Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;)I

    move-result v7

    move-object v2, v0

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 126
    iget-object v2, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v0}, Lcom/otaliastudios/gif/sink/DefaultDataSink;->write(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 127
    invoke-static {v9}, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;->access$100(Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private enqueue(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    .line 104
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    .line 106
    :cond_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 107
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueueBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 109
    iget-object p1, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mQueue:Ljava/util/List;

    new-instance v0, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;-><init>(Landroid/media/MediaCodec$BufferInfo;Lcom/otaliastudios/gif/sink/DefaultDataSink$1;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lcom/otaliastudios/gif/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    const-string v2, "Failed to release the muxer."

    invoke-virtual {v1, v2, v0}, Lcom/otaliastudios/gif/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setFormat(Landroid/media/MediaFormat;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxerChecks:Lcom/otaliastudios/gif/sink/DefaultDataSinkChecks;

    invoke-virtual {v0, p1}, Lcom/otaliastudios/gif/sink/DefaultDataSinkChecks;->checkOutputFormat(Landroid/media/MediaFormat;)V

    .line 76
    iget-boolean v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxerIndex:I

    .line 79
    sget-object v0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->LOG:Lcom/otaliastudios/gif/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added track #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to muxer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/otaliastudios/gif/internal/Logger;->v(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxerStarted:Z

    .line 82
    invoke-direct {p0}, Lcom/otaliastudios/gif/sink/DefaultDataSink;->drainQueue()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxer:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink;->mMuxerIndex:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/gif/sink/DefaultDataSink;->enqueue(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :goto_0
    return-void
.end method
