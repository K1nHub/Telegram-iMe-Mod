.class public abstract Lcom/otaliastudios/gif/source/DefaultDataSource;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/otaliastudios/gif/source/DataSource;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDurationUs:J

.field private mFormat:Landroid/media/MediaFormat;

.field private mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field private mGifFrame:I

.field private mGifFrames:I

.field private mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private mLastTimestampUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-class v0, Lcom/otaliastudios/gif/source/DefaultDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/otaliastudios/gif/internal/Logger;

    invoke-direct {v1, v0}, Lcom/otaliastudios/gif/internal/Logger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifFrame:I

    const-wide/16 v0, 0xa

    .line 36
    iput-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mLastTimestampUs:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 37
    iput-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mDurationUs:J

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ensureGifDecoder()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/otaliastudios/gif/source/DefaultDataSource;->ensureGifHeader()V

    .line 79
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    iget-object v1, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {v2}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/Glide;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 83
    new-instance v1, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    iput-object v1, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 84
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p0}, Lcom/otaliastudios/gif/source/DefaultDataSource;->getInputStreamData()[B

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 85
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifFrames:I

    return-void
.end method

.method private ensureGifHeader()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    .line 68
    invoke-direct {p0}, Lcom/otaliastudios/gif/source/DefaultDataSource;->getInputStreamData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 69
    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 70
    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->clear()V

    .line 71
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-virtual {v2}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getInputStreamData()[B
    .locals 7

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/otaliastudios/gif/source/DefaultDataSource;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x4000

    new-array v2, v1, [B

    .line 51
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v4, 0x0

    .line 52
    invoke-virtual {v0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 53
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 56
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 58
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getDurationUs()J
    .locals 9

    .line 90
    iget-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mDurationUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/otaliastudios/gif/source/DefaultDataSource;->ensureGifHeader()V

    const-wide/16 v0, 0x0

    .line 94
    :try_start_0
    const-class v2, Lcom/bumptech/glide/gifdecoder/GifHeader;

    const-string v3, "frames"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    iget-object v4, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v4, "com.bumptech.glide.gifdecoder.GifFrame"

    .line 97
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "delay"

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 100
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v5, v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v0, v5

    goto :goto_0

    .line 106
    :cond_0
    iput-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mDurationUs:J

    goto :goto_1

    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mDurationUs:J

    return-wide v0
.end method

.method public final getReadUs()J
    .locals 4

    .line 171
    iget-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mLastTimestampUs:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackFormat()Landroid/media/MediaFormat;
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mFormat:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/otaliastudios/gif/source/DefaultDataSource;->ensureGifHeader()V

    .line 116
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mFormat:Landroid/media/MediaFormat;

    .line 117
    iget-object v1, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-virtual {v1}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getWidth()I

    move-result v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 118
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mFormat:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-virtual {v1}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getHeight()I

    move-result v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 119
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    const-string v2, "rotation-degrees"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 120
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeader;->getNumFrames()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Lcom/otaliastudios/gif/source/DefaultDataSource;->getDurationUs()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    int-to-double v3, v0

    div-double/2addr v3, v1

    .line 122
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 123
    iget-object v1, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mFormat:Landroid/media/MediaFormat;

    const-string v2, "frame-rate"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public isDrained()Z
    .locals 3

    .line 166
    iget v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifFrame:I

    iget v1, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifFrames:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected abstract openInputStream()Ljava/io/InputStream;
.end method

.method public read(Lcom/otaliastudios/gif/source/DataSource$Chunk;)V
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    .line 138
    iget v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifFrame:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0xa

    .line 141
    iput-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mLastTimestampUs:J

    .line 142
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/otaliastudios/gif/source/DataSource$Chunk;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x3e8

    if-ge v0, v1, :cond_1

    .line 145
    iget-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mLastTimestampUs:J

    iget-object v4, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget v5, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifFrame:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mLastTimestampUs:J

    .line 146
    iget-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/otaliastudios/gif/source/DataSource$Chunk;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 150
    :cond_1
    iget-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mLastTimestampUs:J

    iget-object v4, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    iget v5, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifFrame:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mLastTimestampUs:J

    .line 152
    :goto_0
    iget-wide v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mLastTimestampUs:J

    iput-wide v0, p1, Lcom/otaliastudios/gif/source/DataSource$Chunk;->timestampUs:J

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifHeader:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 158
    iget-object v1, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->clear()V

    .line 160
    iput-object v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifDecoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/otaliastudios/gif/source/DefaultDataSource;->ensureGifDecoder()V

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lcom/otaliastudios/gif/source/DefaultDataSource;->mGifFrame:I

    return-void
.end method
