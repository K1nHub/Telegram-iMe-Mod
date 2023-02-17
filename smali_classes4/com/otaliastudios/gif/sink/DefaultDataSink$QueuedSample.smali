.class Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;
.super Ljava/lang/Object;
.source "DefaultDataSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/gif/sink/DefaultDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueuedSample"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mSize:I

.field private final mTimeUs:J


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;->mSize:I

    .line 37
    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;->mTimeUs:J

    .line 38
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$BufferInfo;Lcom/otaliastudios/gif/sink/DefaultDataSink$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;-><init>(Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;->mSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;->mTimeUs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/otaliastudios/gif/sink/DefaultDataSink$QueuedSample;->mFlags:I

    return p0
.end method
