.class public Lorg/telegram/messenger/utils/BitmapsCache;
.super Ljava/lang/Object;
.source "BitmapsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;,
        Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;,
        Lorg/telegram/messenger/utils/BitmapsCache$Metadata;,
        Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;,
        Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;,
        Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;
    }
.end annotation


# static fields
.field private static final N:I

.field private static bitmapCompressExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field static volatile cleanupScheduled:Z

.field private static mkdir:Z

.field static sharedBuffers:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Thread;",
            "[B>;"
        }
    .end annotation
.end field

.field private static sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

.field private static taskCounter:I


# instance fields
.field bufferTmp:[B

.field volatile cacheCreated:Z

.field cachedFile:Ljava/io/RandomAccessFile;

.field public cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private cleanupSharedBuffers:Ljava/lang/Runnable;

.field compressQuality:I

.field error:Z

.field final file:Ljava/io/File;

.field volatile fileExist:Z

.field fileName:Ljava/lang/String;

.field private frameIndex:I

.field frameOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field private final mutex:Ljava/lang/Object;

.field options:Landroid/graphics/BitmapFactory$Options;

.field volatile recycled:Z

.field private final source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

.field private tryCount:I

.field final useSharedBuffers:Z

.field w:I


# direct methods
.method public static synthetic $r8$lambda$CDZwxcjdWqt3_pYBWQlfegz6QLE(Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;)I
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/utils/BitmapsCache;->lambda$createCache$2(Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$om1ue8ZxPND-skE4SIMMDsZFOQA()V
    .locals 0

    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->lambda$decrementTaskCounter$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wSFyTlLONTh3r3Q0jRNTO3ziHts(Lorg/telegram/messenger/utils/BitmapsCache;Ljava/util/concurrent/atomic/AtomicBoolean;[Landroid/graphics/Bitmap;I[Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;ILjava/io/RandomAccessFile;Ljava/util/ArrayList;[Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/utils/BitmapsCache;->lambda$createCache$1(Ljava/util/concurrent/atomic/AtomicBoolean;[Landroid/graphics/Bitmap;I[Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;ILjava/io/RandomAccessFile;Ljava/util/ArrayList;[Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedBuffers:Lj$/util/concurrent/ConcurrentHashMap;

    .line 51
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result v0

    sput v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V
    .locals 9

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->mutex:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/utils/BitmapsCache$1;-><init>(Lorg/telegram/messenger/utils/BitmapsCache;)V

    iput-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cleanupSharedBuffers:Ljava/lang/Runnable;

    .line 81
    iput-object p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    .line 82
    iput p4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->w:I

    .line 83
    iput p5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->h:I

    .line 84
    iget p2, p3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->compressQuality:I

    iput p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->compressQuality:I

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileName:Ljava/lang/String;

    .line 86
    sget-object p1, Lorg/telegram/messenger/utils/BitmapsCache;->bitmapCompressExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v2, p1

    move v3, v4

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object p1, Lorg/telegram/messenger/utils/BitmapsCache;->bitmapCompressExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 90
    :cond_0
    new-instance p1, Ljava/io/File;

    const/4 p2, 0x4

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object p2

    const-string p3, "acache"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    sget-boolean p2, Lorg/telegram/messenger/utils/BitmapsCache;->mkdir:Z

    const/4 p3, 0x1

    if-nez p2, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 93
    sput-boolean p3, Lorg/telegram/messenger/utils/BitmapsCache;->mkdir:Z

    .line 95
    :cond_1
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_2

    const-string p6, "_nolimit"

    goto :goto_0

    :cond_2
    const-string p6, " "

    :goto_0
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ".pcache2"

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p2, p1, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    const/16 p1, 0x3c

    .line 96
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    if-ge p4, p6, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    if-ge p5, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->useSharedBuffers:Z

    .line 99
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    const/4 p3, 0x2

    if-lt p1, p3, :cond_9

    .line 100
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 101
    iget-boolean p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 104
    :try_start_0
    new-instance p3, Ljava/io/RandomAccessFile;

    const-string p4, "r"

    invoke-direct {p3, p2, p4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :try_start_1
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 106
    iget-boolean p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 107
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p1

    int-to-long p4, p1

    invoke-virtual {p3, p4, p5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 108
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p1

    const/16 p4, 0x2710

    if-le p1, p4, :cond_4

    const/4 p1, 0x0

    .line 112
    :cond_4
    invoke-direct {p0, p3, p1}, Lorg/telegram/messenger/utils/BitmapsCache;->fillFrames(Ljava/io/RandomAccessFile;I)V

    .line 113
    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 114
    iput-boolean v1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 115
    iput-boolean v1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 116
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 118
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eq p1, p3, :cond_6

    .line 119
    invoke-direct {p0}, Lorg/telegram/messenger/utils/BitmapsCache;->closeCachedFile()V

    .line 121
    :cond_6
    iput-object p3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_7
    :goto_2
    :try_start_2
    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eq p1, p3, :cond_a

    .line 131
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p3, p1

    move-object p1, p2

    .line 125
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 127
    iput-boolean v1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 130
    :try_start_4
    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eq p1, p3, :cond_a

    if-eqz p3, :cond_a

    .line 131
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 130
    :try_start_5
    iget-object p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eq p2, p3, :cond_8

    if-eqz p3, :cond_8

    .line 131
    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 134
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    :cond_8
    :goto_4
    throw p1

    .line 139
    :cond_9
    iput-boolean v1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 140
    iput-boolean v1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    :cond_a
    :goto_5
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/utils/BitmapsCache;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cleanupSharedBuffers:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 33
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    return v0
.end method

.method private closeCachedFile()V
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 515
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 517
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static decrementTaskCounter()V
    .locals 2

    .line 159
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->taskCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/telegram/messenger/utils/BitmapsCache;->taskCounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    sput v0, Lorg/telegram/messenger/utils/BitmapsCache;->taskCounter:I

    .line 162
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v1, Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private fillFrames(Ljava/io/RandomAccessFile;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v0, p2, 0x8

    .line 375
    new-array v0, v0, [B

    .line 376
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 377
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 379
    new-instance v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;-><init>(Lorg/telegram/messenger/utils/BitmapsCache;ILorg/telegram/messenger/utils/BitmapsCache$1;)V

    .line 380
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameOffset:I

    .line 381
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    .line 382
    iget-object v2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getBuffer(Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;)[B
    .locals 5

    .line 523
    iget-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->useSharedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DispatchQueuePoolThreadSafety_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 526
    sget-object v2, Lorg/telegram/messenger/utils/BitmapsCache;->sharedBuffers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    goto :goto_1

    .line 528
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->bufferTmp:[B

    :goto_1
    if-eqz v2, :cond_2

    .line 531
    array-length v3, v2

    iget v4, p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    if-ge v3, v4, :cond_4

    .line 532
    :cond_2
    iget p1, p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    int-to-float p1, p1

    const v2, 0x3fa66666    # 1.3f

    mul-float p1, p1, v2

    float-to-int p1, p1

    new-array v2, p1, [B

    if-eqz v0, :cond_3

    .line 534
    sget-object p1, Lorg/telegram/messenger/utils/BitmapsCache;->sharedBuffers:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-boolean p1, Lorg/telegram/messenger/utils/BitmapsCache;->cleanupScheduled:Z

    if-nez p1, :cond_4

    .line 536
    sput-boolean v1, Lorg/telegram/messenger/utils/BitmapsCache;->cleanupScheduled:Z

    .line 537
    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cleanupSharedBuffers:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 540
    :cond_3
    iput-object v2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->bufferTmp:[B

    :cond_4
    :goto_2
    return-object v2
.end method

.method public static incrementTaskCounter()V
    .locals 1

    .line 155
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->taskCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/telegram/messenger/utils/BitmapsCache;->taskCounter:I

    return-void
.end method

.method private synthetic lambda$createCache$1(Ljava/util/concurrent/atomic/AtomicBoolean;[Landroid/graphics/Bitmap;I[Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;ILjava/io/RandomAccessFile;Ljava/util/ArrayList;[Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .line 287
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 292
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-gt v1, v2, :cond_1

    .line 293
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 295
    :cond_1
    aget-object p2, p2, p3

    iget v1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->compressQuality:I

    aget-object v2, p4, p3

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 296
    aget-object p2, p4, p3

    iget p2, p2, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->count:I

    .line 299
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->mutex:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :try_start_1
    new-instance v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p5, v2}, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;-><init>(Lorg/telegram/messenger/utils/BitmapsCache;ILorg/telegram/messenger/utils/BitmapsCache$1;)V

    .line 301
    invoke-virtual {p6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int p5, v2

    iput p5, v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameOffset:I

    .line 303
    invoke-virtual {p7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    aget-object p5, p4, p3

    iget-object p5, p5, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->buf:[B

    const/4 p7, 0x0

    invoke-virtual {p6, p5, p7, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 306
    iput p2, v1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    .line 307
    aget-object p2, p4, p3

    invoke-virtual {p2}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->reset()V

    .line 308
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 310
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const/4 p2, 0x1

    .line 312
    :try_start_3
    invoke-virtual {p6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    :catch_1
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_1
    move-exception p3

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 316
    throw p3

    .line 319
    :goto_0
    aget-object p1, p8, p3

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$createCache$2(Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;)I
    .locals 0

    .line 340
    iget p0, p0, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->index:I

    return p0
.end method

.method private static synthetic lambda$decrementTaskCounter$0()V
    .locals 1

    .line 163
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;->release()V

    const/4 v0, 0x0

    .line 165
    sput-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCreate()V
    .locals 0

    return-void
.end method

.method public createCache()V
    .locals 24

    move-object/from16 v11, p0

    .line 174
    :try_start_0
    iget-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-wide/16 v12, 0x0

    const-string v14, "r"

    const/4 v1, 0x0

    const/4 v15, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_6

    .line 177
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-direct {v0, v2, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v2

    iput-boolean v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 179
    iget-boolean v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz v2, :cond_4

    .line 180
    iget-object v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 181
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 182
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const/16 v3, 0x2710

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-lez v2, :cond_3

    .line 187
    invoke-direct {v11, v0, v2}, Lorg/telegram/messenger/utils/BitmapsCache;->fillFrames(Ljava/io/RandomAccessFile;I)V

    .line 188
    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 189
    iget-object v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eq v2, v0, :cond_1

    .line 190
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/utils/BitmapsCache;->closeCachedFile()V

    .line 192
    :cond_1
    iput-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    .line 193
    iput-boolean v15, v11, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 210
    :try_start_3
    iget-object v1, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eq v1, v0, :cond_2

    .line 212
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 367
    :catchall_0
    :cond_2
    :goto_0
    iget-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    invoke-interface {v0}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->releaseForGenerateCache()V

    return-void

    .line 196
    :cond_3
    :try_start_5
    iput-boolean v10, v11, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    .line 197
    iput-boolean v10, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 200
    :cond_4
    iget-boolean v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-nez v2, :cond_5

    .line 201
    iget-object v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 210
    :cond_5
    :try_start_6
    iget-object v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eq v2, v0, :cond_6

    .line 212
    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_1
    move-object v0, v1

    .line 205
    :catchall_2
    :try_start_8
    iget-object v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 210
    :catchall_3
    :try_start_9
    iget-object v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eq v2, v0, :cond_6

    if-eqz v0, :cond_6

    goto :goto_1

    .line 220
    :catchall_4
    :cond_6
    :goto_2
    new-instance v9, Ljava/io/RandomAccessFile;

    iget-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    const-string/jumbo v2, "rw"

    invoke-direct {v9, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    if-nez v0, :cond_7

    .line 223
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;-><init>(Lorg/telegram/messenger/utils/BitmapsCache$1;)V

    sput-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    .line 225
    :cond_7
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    iget v1, v11, Lorg/telegram/messenger/utils/BitmapsCache;->h:I

    iget v2, v11, Lorg/telegram/messenger/utils/BitmapsCache;->w:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;->allocate(II)V

    .line 226
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    invoke-static {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;->access$200(Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;)[Landroid/graphics/Bitmap;

    move-result-object v16

    .line 227
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->sharedTools:Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;

    iget-object v8, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheGeneratorSharedTools;->byteArrayOutputStream:[Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;

    .line 228
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    new-array v7, v0, [Ljava/util/concurrent/CountDownLatch;

    .line 230
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 234
    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 239
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 240
    iget-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    invoke-interface {v0}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->prepareForGenerateCache()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 243
    :goto_3
    aget-object v0, v7, v17
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_8

    .line 245
    :try_start_a
    aget-object v0, v7, v17

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_4

    :catch_0
    move-exception v0

    .line 247
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 251
    :cond_8
    :goto_4
    iget-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_9

    .line 277
    :cond_9
    iget-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    aget-object v1, v16, v17

    invoke-interface {v0, v1}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->getNextFrame(Landroid/graphics/Bitmap;)I

    move-result v0

    if-eq v0, v15, :cond_d

    const/4 v1, 0x0

    .line 328
    :goto_5
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    if-ge v1, v0, :cond_b

    .line 329
    aget-object v0, v7, v1
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v0, :cond_a

    .line 331
    :try_start_c
    aget-object v0, v7, v1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_6

    :catch_1
    move-exception v0

    .line 333
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_a
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 338
    :cond_b
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 340
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda2;

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 341
    aget-object v0, v8, v10

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->reset()V

    .line 342
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 343
    aget-object v2, v8, v10

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    .line 344
    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 345
    aget-object v3, v8, v10

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;

    iget v4, v4, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameOffset:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->writeInt(I)V

    .line 346
    aget-object v3, v8, v10

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;

    iget v4, v4, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 348
    :cond_c
    aget-object v2, v8, v10

    iget-object v2, v2, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->buf:[B

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v2, v10, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 349
    aget-object v0, v8, v10

    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;->reset()V

    .line 350
    invoke-virtual {v9, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 351
    invoke-virtual {v9, v15}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    .line 352
    invoke-virtual {v9, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 353
    invoke-virtual {v5, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 354
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 356
    iget-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/utils/BitmapsCache;->closeCachedFile()V

    .line 359
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, v11, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    invoke-direct {v0, v1, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    .line 360
    iput-boolean v15, v11, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 361
    iput-boolean v15, v11, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    goto/16 :goto_c

    .line 280
    :cond_d
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    aput-object v0, v7, v17

    .line 286
    sget-object v0, Lorg/telegram/messenger/utils/BitmapsCache;->bitmapCompressExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda0;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v5

    move-object v12, v4

    move-object/from16 v4, v16

    move-object v13, v5

    move/from16 v5, v17

    move-object/from16 v19, v6

    move-object v6, v8

    move-object/from16 v20, v7

    move/from16 v7, v18

    move-object/from16 v21, v8

    move-object v8, v9

    move-object/from16 v22, v9

    move-object/from16 v9, v19

    const/16 v23, 0x0

    move-object/from16 v10, v20

    invoke-direct/range {v1 .. v10}, Lorg/telegram/messenger/utils/BitmapsCache$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/utils/BitmapsCache;Ljava/util/concurrent/atomic/AtomicBoolean;[Landroid/graphics/Bitmap;I[Lorg/telegram/messenger/utils/BitmapsCache$ByteArrayOutputStream;ILjava/io/RandomAccessFile;Ljava/util/ArrayList;[Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v17, 0x1

    add-int/lit8 v18, v18, 0x1

    .line 324
    sget v1, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    if-lt v0, v1, :cond_e

    const/16 v17, 0x0

    goto :goto_8

    :cond_e
    move/from16 v17, v0

    :goto_8
    move-object v5, v13

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    goto/16 :goto_3

    :cond_f
    :goto_9
    move-object v13, v5

    move-object/from16 v20, v7

    move-object/from16 v22, v9

    const/16 v23, 0x0

    .line 252
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_10

    const-string v0, "cancelled cache generation"

    .line 253
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 255
    :cond_10
    invoke-virtual {v13, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v10, 0x0

    .line 256
    :goto_a
    sget v0, Lorg/telegram/messenger/utils/BitmapsCache;->N:I

    if-ge v10, v0, :cond_13

    .line 257
    aget-object v0, v20, v10
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v0, :cond_11

    .line 259
    :try_start_e
    aget-object v0, v20, v10

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_b

    :catch_2
    move-exception v0

    .line 261
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 264
    :cond_11
    :goto_b
    aget-object v0, v16, v10
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v0, :cond_12

    .line 266
    :try_start_10
    aget-object v0, v16, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catch_3
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 272
    :cond_13
    :try_start_11
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V

    .line 273
    iget-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    invoke-interface {v0}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->releaseForGenerateCache()V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    .line 365
    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_5
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 367
    :goto_c
    iget-object v0, v11, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    invoke-interface {v0}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->releaseForGenerateCache()V

    return-void

    :goto_d
    iget-object v1, v11, Lorg/telegram/messenger/utils/BitmapsCache;->source:Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;

    invoke-interface {v1}, Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;->releaseForGenerateCache()V

    .line 368
    throw v0
.end method

.method public getFrame(ILandroid/graphics/Bitmap;)I
    .locals 7

    .line 434
    iget-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->error:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 440
    :try_start_0
    iget-boolean v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    if-nez v4, :cond_1

    return v1

    .line 444
    :cond_1
    iget-boolean v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_5

    .line 445
    :cond_2
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->file:Ljava/io/File;

    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 446
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v5

    iput-boolean v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 447
    iget-boolean v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 448
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 449
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    .line 450
    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/utils/BitmapsCache;->fillFrames(Ljava/io/RandomAccessFile;I)V

    .line 452
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 453
    iput-boolean v3, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    .line 456
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-nez v5, :cond_5

    .line 457
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    return v1

    .line 464
    :cond_5
    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_6

    return v1

    .line 467
    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {p1, v5, v3}, Lorg/telegram/messenger/Utilities;->clamp(III)I

    move-result p1

    .line 468
    iget-object v5, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;

    .line 469
    iget v5, p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameOffset:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 471
    invoke-direct {p0, p1}, Lorg/telegram/messenger/utils/BitmapsCache;->getBuffer(Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;)[B

    move-result-object v5

    .line 472
    iget v6, p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    invoke-virtual {v4, v5, v3, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 473
    iget-boolean v6, p0, Lorg/telegram/messenger/utils/BitmapsCache;->recycled:Z

    if-nez v6, :cond_8

    .line 474
    iget-object v6, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eq v6, v4, :cond_7

    .line 475
    invoke-direct {p0}, Lorg/telegram/messenger/utils/BitmapsCache;->closeCachedFile()V

    .line 477
    :cond_7
    iput-object v4, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 479
    :cond_8
    iput-object v2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    .line 480
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 483
    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/utils/BitmapsCache;->options:Landroid/graphics/BitmapFactory$Options;

    if-nez v6, :cond_9

    .line 484
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/utils/BitmapsCache;->options:Landroid/graphics/BitmapFactory$Options;

    .line 486
    :cond_9
    iget-object v6, p0, Lorg/telegram/messenger/utils/BitmapsCache;->options:Landroid/graphics/BitmapFactory$Options;

    iput-object p2, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 487
    iget p1, p1, Lorg/telegram/messenger/utils/BitmapsCache$FrameOffset;->frameSize:I

    invoke-static {v5, v3, p1, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 488
    iget-object p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->options:Landroid/graphics/BitmapFactory$Options;

    iput-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_1

    :catch_0
    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 493
    :goto_1
    invoke-static {p1, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 494
    iget p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->tryCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->tryCount:I

    const/16 p2, 0xa

    if-le p1, p2, :cond_a

    .line 496
    iput-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->error:Z

    goto :goto_2

    :catch_1
    nop

    .line 500
    :cond_a
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/messenger/utils/BitmapsCache;->error:Z

    if-eqz p1, :cond_b

    if-eqz v2, :cond_b

    .line 502
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 504
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_3
    return v1
.end method

.method public getFrame(Landroid/graphics/Bitmap;Lorg/telegram/messenger/utils/BitmapsCache$Metadata;)I
    .locals 1

    .line 391
    iget v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameIndex:I

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/utils/BitmapsCache;->getFrame(ILandroid/graphics/Bitmap;)I

    move-result p1

    .line 392
    iget v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameIndex:I

    iput v0, p2, Lorg/telegram/messenger/utils/BitmapsCache$Metadata;->frame:I

    .line 393
    iget-boolean p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 394
    iget p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameIndex:I

    .line 395
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    const/4 p2, 0x0

    .line 396
    iput p2, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameIndex:I

    :cond_0
    return p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->frameOffsets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public needGenCache()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cacheCreated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->fileExist:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public recycle()V
    .locals 1

    .line 551
    iget-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 553
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 555
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 557
    iput-object v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->cachedFile:Ljava/io/RandomAccessFile;

    :cond_0
    const/4 v0, 0x1

    .line 559
    iput-boolean v0, p0, Lorg/telegram/messenger/utils/BitmapsCache;->recycled:Z

    return-void
.end method
