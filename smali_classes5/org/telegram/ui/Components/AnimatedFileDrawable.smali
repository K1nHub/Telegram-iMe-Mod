.class public Lorg/telegram/ui/Components/AnimatedFileDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;


# static fields
.field private static executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static radii:[F


# instance fields
.field private actualDrawRect:Landroid/graphics/RectF;

.field private applyTransformation:Z

.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundBitmapTime:I

.field private backgroundPaint:[Landroid/graphics/Paint;

.field private backgroundShader:[Landroid/graphics/BitmapShader;

.field bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

.field cacheGenRunnable:Ljava/lang/Runnable;

.field cacheGenerateNativePtr:J

.field cacheGenerateTimestamp:J

.field cacheMetadata:Lorg/telegram/messenger/utils/BitmapsCache$Metadata;

.field private cancelCache:Ljava/lang/Runnable;

.field private currentAccount:I

.field private decodeQueue:Lorg/telegram/messenger/DispatchQueue;

.field private decodeSingleFrame:Z

.field private decoderCreated:Z

.field private destroyWhenDone:Z

.field private final document:Lorg/telegram/tgnet/TLRPC$Document;

.field private final dstRect:Landroid/graphics/RectF;

.field private dstRectBackground:[Landroid/graphics/RectF;

.field private endTime:F

.field private forceDecodeAfterNextFrame:Z

.field generatingCache:Z

.field generatingCacheBitmap:Landroid/graphics/Bitmap;

.field public ignoreNoParent:Z

.field private invalidateAfter:I

.field private invalidateParentViewWithSecond:Z

.field private invalidatePath:Z

.field private volatile isRecycled:Z

.field private isRestarted:Z

.field private volatile isRunning:Z

.field public isWebmSticker:Z

.field private lastFrameDecodeTime:J

.field private lastFrameTime:J

.field lastMetadata:I

.field private lastTimeStamp:I

.field private limitFps:Z

.field private loadFrameRunnable:Ljava/lang/Runnable;

.field private loadFrameTask:Ljava/lang/Runnable;

.field private final mStartTask:Ljava/lang/Runnable;

.field private final metaData:[I

.field public volatile nativePtr:J

.field private nextRenderingBitmap:Landroid/graphics/Bitmap;

.field private nextRenderingBitmapTime:I

.field private nextRenderingShader:[Landroid/graphics/BitmapShader;

.field private parentView:Landroid/view/View;

.field private parents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/io/File;

.field private pendingRemoveLoading:Z

.field private pendingRemoveLoadingFramesReset:I

.field private volatile pendingSeekTo:J

.field private volatile pendingSeekToUI:J

.field private precache:Z

.field private recycleWithSecond:Z

.field private renderingBitmap:Landroid/graphics/Bitmap;

.field private renderingBitmapTime:I

.field private renderingHeight:I

.field private renderingShader:[Landroid/graphics/BitmapShader;

.field private renderingWidth:I

.field public repeatCount:I

.field private roundPath:[Landroid/graphics/Path;

.field private roundRadius:[I

.field private roundRadiusBackup:[I

.field private scaleFactor:F

.field private scaleX:F

.field private scaleY:F

.field private secondParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private shaderMatrix:[Landroid/graphics/Matrix;

.field private singleFrameDecoded:Z

.field public skipFrameUpdate:Z

.field private startTime:F

.field private stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

.field private streamFileSize:J

.field private final sync:Ljava/lang/Object;

.field tryCount:I

.field private uiRunnable:Ljava/lang/Runnable;

.field private uiRunnableGenerateCache:Ljava/lang/Runnable;

.field private uiRunnableNoFrame:Ljava/lang/Runnable;

.field private useSharedQueue:Z


# direct methods
.method public static synthetic $r8$lambda$-HqJ3MdqvYscxP-I00LShH-6VCw(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$606O3wOdt4RtyapHzcRjOJfeW1M(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lambda$checkCacheCancel$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 123
    sput-object v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->radii:[F

    .line 164
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZJLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V
    .locals 17

    move-object/from16 v7, p0

    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    move-wide/from16 v8, p8

    move/from16 v3, p12

    move/from16 v4, p13

    .line 427
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/16 v5, 0x32

    .line 81
    iput v5, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    const/4 v5, 0x5

    new-array v6, v5, [I

    .line 82
    iput-object v6, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const-wide/16 v10, -0x1

    .line 99
    iput-wide v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    .line 100
    iput-wide v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    .line 104
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->sync:Ljava/lang/Object;

    .line 111
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    const/4 v5, 0x3

    new-array v10, v5, [Landroid/graphics/BitmapShader;

    .line 113
    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    new-array v10, v5, [Landroid/graphics/BitmapShader;

    .line 114
    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    new-array v10, v5, [Landroid/graphics/BitmapShader;

    .line 115
    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    const/4 v10, 0x4

    new-array v10, v10, [I

    .line 119
    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    new-array v10, v5, [Landroid/graphics/Matrix;

    .line 121
    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:[Landroid/graphics/Matrix;

    new-array v10, v5, [Landroid/graphics/Path;

    .line 122
    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundPath:[Landroid/graphics/Path;

    const/high16 v10, 0x3f800000    # 1.0f

    .line 127
    iput v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 128
    iput v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    .line 130
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/RectF;

    .line 140
    iput v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    const/4 v10, 0x2

    new-array v11, v10, [Landroid/graphics/RectF;

    .line 143
    iput-object v11, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    new-array v10, v10, [Landroid/graphics/Paint;

    .line 144
    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 149
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    .line 151
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    const/4 v15, 0x1

    .line 156
    iput-boolean v15, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    .line 166
    new-instance v10, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;

    invoke-direct {v10, v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 178
    new-instance v10, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;

    invoke-direct {v10, v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 232
    new-instance v10, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;

    invoke-direct {v10, v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 309
    new-instance v10, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;

    invoke-direct {v10, v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 412
    new-instance v10, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v10, v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mStartTask:Ljava/lang/Runnable;

    move-object/from16 v13, p1

    .line 428
    iput-object v13, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    .line 429
    iput-wide v0, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    move/from16 v10, p10

    .line 430
    iput v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    .line 431
    iput v4, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    .line 432
    iput v3, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    const/4 v14, 0x0

    if-eqz p14, :cond_0

    if-lez v3, :cond_0

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 433
    :goto_0
    iput-boolean v3, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    .line 434
    iput-object v2, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFlags(I)V

    const-wide/16 v11, 0x0

    cmp-long v3, v0, v11

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    if-eqz p6, :cond_2

    .line 437
    :cond_1
    new-instance v5, Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-object v0, v5

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p10

    move-object v10, v5

    move/from16 v5, p11

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/AnimatedFileDrawableStream;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;IZ)V

    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    :cond_2
    const/16 v0, 0xf00

    if-eqz p2, :cond_5

    .line 439
    iget-boolean v1, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    if-nez v1, :cond_5

    .line 440
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget v1, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-wide v2, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v4, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-wide v8, v11

    move-object v11, v6

    move v12, v1

    const/4 v5, 0x0

    move-wide v13, v2

    const/4 v1, 0x1

    move-object v15, v4

    move/from16 v16, p11

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v2

    iput-wide v2, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 441
    iget-wide v2, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v4, v2, v8

    if-eqz v4, :cond_4

    aget v2, v6, v5

    if-gt v2, v0, :cond_3

    aget v2, v6, v1

    if-le v2, v0, :cond_4

    .line 442
    :cond_3
    iget-wide v2, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 443
    iput-wide v8, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 445
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateScaleFactor()V

    .line 446
    iput-boolean v1, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    goto :goto_1

    :cond_5
    move-wide v8, v11

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 448
    :goto_1
    iget-boolean v2, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    if-eqz v2, :cond_8

    .line 449
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget v12, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-wide v13, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v15, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-object v11, v6

    move/from16 v16, p11

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v2

    iput-wide v2, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 450
    iget-wide v2, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v4, v2, v8

    if-eqz v4, :cond_7

    aget v2, v6, v5

    if-gt v2, v0, :cond_6

    aget v2, v6, v1

    if-le v2, v0, :cond_7

    .line 451
    :cond_6
    iget-wide v0, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 452
    iput-wide v8, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    move-wide/from16 v0, p8

    move-wide v2, v8

    const/4 v12, 0x0

    goto :goto_3

    .line 454
    :cond_7
    new-instance v10, Lorg/telegram/messenger/utils/BitmapsCache;

    iget v4, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    iget v6, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    iget-boolean v0, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    xor-int/lit8 v11, v0, 0x1

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p14

    const/4 v12, 0x0

    move v5, v6

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/utils/BitmapsCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V

    iput-object v10, v7, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    :goto_2
    move-wide/from16 v0, p8

    move-wide v2, v8

    :goto_3
    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    .line 458
    invoke-virtual {v7, v0, v1, v12}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZ)V

    :cond_9
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZJLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V
    .locals 15

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v14, p12

    .line 424
    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->chekDestroyDecoder()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    return p0
.end method

.method static synthetic access$1010(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 2

    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/AnimatedFileDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDecodeAfterNextFrame:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDecodeAfterNextFrame:Z

    return p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->singleFrameDecoded:Z

    return p1
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0

    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmapTime:I

    return p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0

    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmapTime:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRestarted:Z

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRestarted:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    return p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0

    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0

    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    return-wide v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    return-wide p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    return-wide v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    return-wide p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/io/File;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    return-void
.end method

.method static synthetic access$3000(Ljava/lang/String;[IIJLjava/lang/Object;Z)J
    .locals 0

    .line 45
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$3100(J)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateScaleFactor()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    return p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    return-wide p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasRoundRadius()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Object;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->sync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4200(JJZ)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekToMs(JJZ)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    return p0
.end method

.method static synthetic access$4400(JLandroid/graphics/Bitmap;[IIZFF)I
    .locals 0

    .line 45
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFF)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/AnimatedFileDrawable;F)F
    .locals 0

    .line 45
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoading:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoading:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    return p0
.end method

.method private chekDestroyDecoder()V
    .locals 5

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCache:Z

    if-nez v0, :cond_0

    .line 206
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 207
    iput-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 209
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v0

    if-nez v0, :cond_4

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 214
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 218
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 220
    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 222
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    :cond_4
    return-void
.end method

.method private static native createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J
.end method

.method private static native destroyDecoder(J)V
.end method

.method private static native getFrameAtTime(JJLandroid/graphics/Bitmap;[II)I
.end method

.method private static native getVideoFrame(JLandroid/graphics/Bitmap;[IIZFF)I
.end method

.method private static native getVideoInfo(ILjava/lang/String;[I)V
.end method

.method public static getVideoInfo(Ljava/lang/String;[I)V
    .locals 1

    .line 983
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(ILjava/lang/String;[I)V

    return-void
.end method

.method private hasRoundRadius()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 954
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 955
    aget v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private invalidateInternal()V
    .locals 2

    const/4 v0, 0x0

    .line 227
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkCacheCancel$1()V
    .locals 1

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache;->cancelCreate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 415
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateParentViewWithSecond:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private static native prepareToSeek(J)V
.end method

.method private scheduleNextGetFrame()V
    .locals 10

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz v0, :cond_7

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->singleFrameDecoded:Z

    if-nez v0, :cond_7

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ignoreNoParent:Z

    if-eqz v0, :cond_7

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCache:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 708
    :cond_2
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 709
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v4, v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 711
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->useSharedQueue:Z

    if-eqz v0, :cond_5

    .line 712
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    if-eqz v0, :cond_4

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 715
    :cond_4
    sget-object v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 718
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_6

    .line 719
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeQueue"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 721
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_0
    return-void
.end method

.method private static native seekToMs(JJZ)V
.end method

.method private static native stopDecoder(J)V
.end method

.method private updateScaleFactor()V
    .locals 7

    .line 402
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    if-lez v0, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    if-lez v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    if-lez v5, :cond_1

    const/4 v5, 0x1

    aget v6, v3, v5

    if-lez v6, :cond_1

    int-to-float v2, v2

    .line 403
    aget v4, v3, v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v0, v0

    aget v3, v3, v5

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-lez v2, :cond_0

    float-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    .line 405
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    goto :goto_0

    .line 408
    :cond_1
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addParent(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-eqz p1, :cond_0

    .line 505
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 508
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkCacheCancel()V

    return-void
.end method

.method public addSecondParentView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public canLoadFrames()Z
    .locals 7

    .line 1115
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1118
    :cond_1
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public checkCacheCancel()V
    .locals 3

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 527
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 533
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 534
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method

.method public checkRepeat()V
    .locals 4

    .line 287
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ignoreNoParent:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 292
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 293
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    .line 294
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 295
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    .line 298
    :cond_1
    iget v2, v2, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    if-lez v2, :cond_2

    iget v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    if-lt v3, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 303
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    goto :goto_1

    .line 305
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawInternal(Landroid/graphics/Canvas;ZJI)V

    return-void
.end method

.method public drawFrame(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1100
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1104
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1106
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_2

    .line 1108
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1110
    :cond_2
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {v1, v0, v0, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1111
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawInBackground(Landroid/graphics/Canvas;FFFFILandroid/graphics/ColorFilter;I)V
    .locals 6

    .line 773
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object v1, v0, p8

    if-nez v1, :cond_0

    .line 774
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, p8

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    aput-object v1, v0, p8

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 778
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 779
    iget-object p6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p6, p6, p8

    invoke-virtual {p6, p7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 780
    iget-object p6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object p6, p6, p8

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    invoke-virtual {p6, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p8

    .line 781
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawInternal(Landroid/graphics/Canvas;ZJI)V

    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;ZJI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 785
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-eqz v2, :cond_0

    goto/16 :goto_a

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-nez v4, :cond_1

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide/from16 v2, p3

    :goto_0
    if-eqz p2, :cond_2

    .line 793
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object v4, v4, p5

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/RectF;

    :goto_1
    if-eqz p2, :cond_3

    .line 794
    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, p5

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    :goto_2
    const/4 v6, 0x0

    if-nez p2, :cond_4

    .line 797
    invoke-virtual {v0, v2, v3, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateCurrentFrame(JZ)V

    .line 800
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1b

    .line 801
    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 802
    iget v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    const/16 v8, 0x10e

    const/16 v9, 0x5a

    const/4 v10, 0x2

    if-eqz p2, :cond_7

    .line 804
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 805
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 806
    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v11, v7, v10

    if-eq v11, v9, :cond_5

    aget v7, v7, v10

    if-ne v7, v8, :cond_6

    :cond_5
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    .line 811
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v2, v2

    div-float v2, v7, v2

    .line 812
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    int-to-float v3, v3

    div-float/2addr v7, v3

    :goto_3
    move v3, v2

    goto :goto_4

    .line 813
    :cond_7
    iget-boolean v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    if-eqz v11, :cond_a

    .line 814
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 815
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 816
    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v11, v7, v10

    if-eq v11, v9, :cond_8

    aget v7, v7, v10

    if-ne v7, v8, :cond_9

    :cond_8
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    .line 821
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 822
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v2, v2

    div-float v2, v7, v2

    iput v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 823
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    int-to-float v3, v3

    div-float/2addr v7, v3

    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    .line 824
    iput-boolean v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    goto :goto_3

    .line 826
    :cond_a
    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasRoundRadius()Z

    move-result v2

    const/high16 v13, 0x42b40000    # 90.0f

    const/16 v14, 0xb4

    const/4 v15, 0x0

    if-eqz v2, :cond_17

    if-eqz p2, :cond_b

    add-int/lit8 v2, p5, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    .line 828
    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v16, v6, v2

    if-nez v16, :cond_c

    .line 829
    new-instance v11, Landroid/graphics/BitmapShader;

    iget-object v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v11, v8, v12, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    aput-object v11, v6, v2

    .line 831
    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 832
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:[Landroid/graphics/Matrix;

    aget-object v8, v6, v2

    if-nez v8, :cond_d

    .line 834
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    aput-object v8, v6, v2

    .line 836
    :cond_d
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundPath:[Landroid/graphics/Path;

    aget-object v11, v6, v2

    if-nez v11, :cond_e

    .line 838
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    aput-object v11, v6, v2

    .line 840
    :cond_e
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 841
    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v12, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v6, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 842
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v12, v6, v10

    if-ne v12, v9, :cond_f

    .line 843
    invoke-virtual {v8, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 844
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v8, v15, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_6

    .line 845
    :cond_f
    aget v9, v6, v10

    if-ne v9, v14, :cond_10

    const/high16 v9, 0x43340000    # 180.0f

    .line 846
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 847
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v8, v6, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_6

    .line 848
    :cond_10
    aget v6, v6, v10

    const/16 v9, 0x10e

    if-ne v6, v9, :cond_11

    const/high16 v6, 0x43870000    # 270.0f

    .line 849
    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 850
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v8, v6, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 852
    :cond_11
    :goto_6
    invoke-virtual {v8, v3, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 854
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v2, v3, v2

    invoke-virtual {v2, v8}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 855
    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    if-nez v2, :cond_12

    if-eqz p2, :cond_16

    :cond_12
    const/4 v2, 0x0

    if-nez p2, :cond_13

    .line 857
    iput-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    :cond_13
    const/4 v6, 0x0

    .line 859
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    array-length v3, v2

    if-ge v6, v3, :cond_14

    .line 860
    sget-object v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;->radii:[F

    mul-int/lit8 v7, v6, 0x2

    aget v8, v2, v6

    int-to-float v8, v8

    aput v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    .line 861
    aget v2, v2, v6

    int-to-float v2, v2

    aput v2, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 863
    :cond_14
    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    if-eqz p2, :cond_15

    goto :goto_8

    .line 864
    :cond_15
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    :goto_8
    sget-object v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v4, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 865
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 867
    :cond_16
    invoke-virtual {v1, v11, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 869
    :cond_17
    iget v2, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 870
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v6, v2, v10

    if-ne v6, v9, :cond_18

    .line 871
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 872
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v15, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_9

    .line 873
    :cond_18
    aget v6, v2, v10

    if-ne v6, v14, :cond_19

    const/high16 v6, 0x43340000    # 180.0f

    .line 874
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 875
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_9

    .line 876
    :cond_19
    aget v2, v2, v10

    const/16 v6, 0x10e

    if-ne v2, v6, :cond_1a

    const/high16 v2, 0x43870000    # 270.0f

    .line 877
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 878
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 880
    :cond_1a
    :goto_9
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 881
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v15, v15, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1b
    :goto_a
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 661
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 664
    throw v0
.end method

.method public getAnimatedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 923
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCurrentProgress()F
    .locals 6

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 686
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 687
    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    long-to-float v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 689
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v2, 0x3

    aget v2, v0, v2

    int-to-float v2, v2

    aget v0, v0, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    return v2
.end method

.method public getCurrentProgressMs()I
    .locals 5

    .line 693
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 694
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    long-to-int v1, v0

    return v1

    .line 696
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmapTime:I

    :goto_0
    return v0
.end method

.method public getDurationMs()I
    .locals 2

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getFirstFrame(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 1076
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    iget v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 1078
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1079
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1080
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v5, v3, v4

    const/4 v6, 0x1

    aget v3, v3, v6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    .line 1083
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-wide v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v10, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_2

    return-object v1

    .line 1087
    :cond_2
    iget-object v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    iget-object v15, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v16

    const/16 v17, 0x0

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    iget v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    move-wide v12, v5

    move/from16 v18, v3

    move/from16 v19, v7

    invoke-static/range {v12 .. v19}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFF)I

    .line 1088
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 1089
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1090
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1091
    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1092
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1093
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1094
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-object v1
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getFrameAtTime(JZ)Landroid/graphics/Bitmap;
    .locals 12

    .line 474
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_1

    .line 477
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->reset()V

    :cond_1
    if-nez p3, :cond_2

    .line 482
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v3, v4, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekToMs(JJZ)V

    .line 484
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p3, :cond_3

    .line 487
    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v9, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    move-wide v6, p1

    move-object v8, v0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JJLandroid/graphics/Bitmap;[II)I

    move-result p1

    goto :goto_0

    .line 489
    :cond_3
    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-static/range {v4 .. v11}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFF)I

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    move-object v1, v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getIntrinsicHeight()I
    .locals 5

    .line 741
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v2, 0x2

    aget v3, v0, v2

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    aget v2, v0, v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    aget v1, v0, v1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/16 v0, 0x64

    .line 743
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    :cond_3
    int-to-float v0, v1

    .line 745
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 5

    .line 752
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v2, 0x2

    aget v3, v0, v2

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    aget v2, v0, v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    aget v1, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    aget v1, v0, v1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/16 v0, 0x64

    .line 754
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    :cond_3
    int-to-float v0, v1

    .line 756
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    .line 887
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinimumHeight()I
    .locals 5

    .line 892
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v2, 0x2

    aget v3, v0, v2

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    aget v2, v0, v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    aget v1, v0, v1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/16 v0, 0x64

    .line 894
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public getMinimumWidth()I
    .locals 5

    .line 901
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v2, 0x2

    aget v3, v0, v2

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1

    aget v2, v0, v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    aget v1, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    aget v1, v0, v1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/16 v0, 0x64

    .line 903
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public getNextFrame(Landroid/graphics/Bitmap;)I
    .locals 14

    .line 1045
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1048
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1049
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 1050
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v6, v1, v5

    aget v1, v1, v4

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    .line 1052
    :cond_1
    iget-wide v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateNativePtr:J

    iget-object v8, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    const/4 v11, 0x0

    iget v12, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    iget v13, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    invoke-static/range {v6 .. v13}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFF)I

    .line 1053
    iget-wide v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateTimestamp:J

    const/4 v1, 0x3

    cmp-long v8, v6, v2

    if-eqz v8, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v3, v2, v1

    if-eqz v3, :cond_2

    aget v2, v2, v1

    int-to-long v2, v2

    cmp-long v8, v6, v2

    if-lez v8, :cond_3

    :cond_2
    return v5

    .line 1056
    :cond_3
    iget v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastMetadata:I

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v6, v3, v1

    if-ne v2, v6, :cond_4

    .line 1057
    iget v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->tryCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->tryCount:I

    const/4 v6, 0x5

    if-le v2, v6, :cond_4

    return v5

    .line 1062
    :cond_4
    aget v2, v3, v1

    iput v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastMetadata:I

    .line 1063
    invoke-virtual {p1, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1064
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1065
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    int-to-float p1, p1

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 1066
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1067
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1068
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1069
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget p1, p1, v1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateTimestamp:J

    return v4
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 9

    .line 1003
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1004
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 1006
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1009
    :cond_1
    iget-wide v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    iget v8, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFF)I

    .line 1010
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getParents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 995
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public hasBitmap()Z
    .locals 1

    .line 963
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoadingStream()Z
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->isWaitingForLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecycled()Z
    .locals 1

    .line 999
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 736
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    return v0
.end method

.method public makeCopy()Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 31

    move-object/from16 v0, p0

    .line 972
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 973
    new-instance v17, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    const/4 v6, 0x0

    iget-wide v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getParentObject()Ljava/lang/Object;

    move-result-object v11

    iget-wide v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    iget v14, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    const/16 v16, 0x0

    move-object/from16 v4, v17

    invoke-direct/range {v4 .. v16}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    goto :goto_2

    .line 975
    :cond_1
    new-instance v17, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    const/16 v20, 0x0

    iget-wide v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-wide v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    iget v9, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-object v10, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->isPreview()Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v29, 0x1

    goto :goto_1

    :cond_2
    const/16 v29, 0x0

    :goto_1
    const/16 v30, 0x0

    move-object/from16 v18, v17

    move-object/from16 v19, v1

    move-wide/from16 v21, v4

    move-object/from16 v23, v6

    move-wide/from16 v26, v7

    move/from16 v28, v9

    invoke-direct/range {v18 .. v30}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    :goto_2
    move-object/from16 v1, v17

    .line 977
    iget-object v4, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v6, v5, v3

    aput v6, v4, v3

    .line 978
    aget v3, v5, v2

    aput v3, v4, v2

    return-object v1
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 763
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 764
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    return-void
.end method

.method public prepareForGenerateCache()V
    .locals 8

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateNativePtr:J

    return-void
.end method

.method public recycle()V
    .locals 7

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 598
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycleWithSecond:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 601
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 602
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 604
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    .line 605
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 606
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    .line 608
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 609
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 610
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 611
    iput-wide v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 614
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 615
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 620
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 621
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 623
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v3, :cond_3

    .line 624
    invoke-virtual {v3}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 625
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 627
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 628
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    goto :goto_0

    .line 630
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    .line 632
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v0, :cond_5

    .line 633
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 635
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    return-void
.end method

.method public releaseForGenerateCache()V
    .locals 5

    .line 1038
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1039
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    :cond_0
    return-void
.end method

.method public removeParent(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 513
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 514
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    .line 516
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkCacheCancel()V

    return-void
.end method

.method public removeSecondParentView(Landroid/view/View;)V
    .locals 1

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 552
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycleWithSecond:Z

    if-eqz p1, :cond_0

    .line 553
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_0

    .line 555
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    if-eqz p1, :cond_1

    .line 556
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetStream(Z)V
    .locals 5

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 640
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 642
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    .line 644
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stopDecoder(J)V

    goto :goto_0

    .line 646
    :cond_1
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->prepareToSeek(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public seekTo(JZ)V
    .locals 1

    const/4 v0, 0x0

    .line 570
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZZ)V

    return-void
.end method

.method public seekTo(JZZ)V
    .locals 4

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_0
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    .line 576
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    .line 577
    iget-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    .line 578
    iget-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->prepareToSeek(J)V

    .line 580
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz p1, :cond_2

    .line 581
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 582
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoading:Z

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    .line 583
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    :cond_2
    if-eqz p4, :cond_4

    .line 585
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz p1, :cond_4

    .line 586
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->singleFrameDecoded:Z

    .line 587
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 588
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 590
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDecodeAfterNextFrame:Z

    .line 593
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setActualDrawRect(FFFF)V
    .locals 2

    add-float/2addr p4, p2

    add-float/2addr p3, p1

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_1

    .line 933
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x1

    .line 934
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    :cond_1
    return-void
.end method

.method public setAllowDecodeSingleFrame(Z)V
    .locals 0

    .line 563
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz p1, :cond_0

    .line 565
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    :cond_0
    return-void
.end method

.method public setInvalidateParentViewWithSecond(Z)V
    .locals 0

    .line 539
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateParentViewWithSecond:Z

    return-void
.end method

.method public setIsWebmSticker(Z)V
    .locals 0

    .line 463
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 465
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->useSharedQueue:Z

    :cond_0
    return-void
.end method

.method public setLimitFps(Z)V
    .locals 0

    .line 1014
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 498
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    return-void
.end method

.method public setRoundRadius([I)V
    .locals 5

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 940
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 941
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    .line 943
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    array-length v4, v3

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_3

    .line 946
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    if-nez v0, :cond_2

    aget v0, p1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    aget v3, v3, v2

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    .line 947
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    .line 949
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    aget v3, p1, v2

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setStartEndTime(JJ)V
    .locals 2

    long-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 987
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    long-to-float p3, p3

    div-float/2addr p3, v1

    .line 988
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    .line 989
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getCurrentProgressMs()I

    move-result p3

    int-to-long p3, p3

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    const/4 p3, 0x1

    .line 990
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZ)V

    :cond_0
    return-void
.end method

.method public setUseSharedQueue(Z)V
    .locals 1

    .line 652
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v0, :cond_0

    return-void

    .line 655
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->useSharedQueue:Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 674
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ignoreNoParent:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 677
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 678
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mStartTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    return-void
.end method

.method public updateCurrentFrame(JZ)V
    .locals 6

    .line 1129
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 1130
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez p3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 1131
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    goto/16 :goto_2

    .line 1132
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    if-eqz p3, :cond_1

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v4, p3

    cmp-long p3, v2, v4

    if-ltz p3, :cond_3

    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->skipFrameUpdate:Z

    if-nez p3, :cond_3

    .line 1134
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1136
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 1137
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmapTime:I

    const/4 p3, 0x0

    .line 1138
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    array-length v3, v2

    if-ge p3, v3, :cond_2

    .line 1140
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v4, v3, p3

    aput-object v4, v2, p3

    .line 1142
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    aget-object v4, v2, p3

    aput-object v4, v3, p3

    .line 1143
    aput-object v0, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1145
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1146
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    .line 1148
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    .line 1149
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    goto :goto_2

    .line 1151
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    goto :goto_2

    .line 1153
    :cond_4
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz p3, :cond_6

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    int-to-long v4, p3

    cmp-long p3, v2, v4

    if-ltz p3, :cond_6

    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_6

    .line 1155
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1157
    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 1158
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmapTime:I

    const/4 p3, 0x0

    .line 1159
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    array-length v3, v2

    if-ge p3, v3, :cond_5

    .line 1161
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v4, v3, p3

    aput-object v4, v2, p3

    .line 1163
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    aget-object v4, v2, p3

    aput-object v4, v3, p3

    .line 1164
    aput-object v0, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1166
    :cond_5
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1167
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    .line 1168
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    .line 1169
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    :cond_6
    :goto_2
    return-void
.end method
