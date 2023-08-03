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

.field private nextRenderingBitmap2:Landroid/graphics/Bitmap;

.field private nextRenderingBitmapTime:I

.field private nextRenderingBitmapTime2:I

.field private nextRenderingShader:[Landroid/graphics/BitmapShader;

.field private nextRenderingShader2:[Landroid/graphics/BitmapShader;

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

.field private streamLoadingPriority:I

.field private final sync:Ljava/lang/Object;

.field tryCount:I

.field private uiRunnable:Ljava/lang/Runnable;

.field private uiRunnableGenerateCache:Ljava/lang/Runnable;

.field private uiRunnableNoFrame:Ljava/lang/Runnable;

.field unusedBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

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

    .line 129
    sput-object v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->radii:[F

    .line 170
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p6

    move-wide/from16 v8, p9

    move/from16 v4, p13

    move/from16 v5, p14

    .line 468
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/16 v6, 0x32

    .line 82
    iput v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    const/4 v6, 0x6

    new-array v10, v6, [I

    .line 83
    iput-object v10, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const-wide/16 v6, -0x1

    .line 103
    iput-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    .line 104
    iput-wide v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    .line 108
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->sync:Ljava/lang/Object;

    .line 115
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    const/4 v6, 0x3

    new-array v7, v6, [Landroid/graphics/BitmapShader;

    .line 117
    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    new-array v7, v6, [Landroid/graphics/BitmapShader;

    .line 118
    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    new-array v7, v6, [Landroid/graphics/BitmapShader;

    .line 119
    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader2:[Landroid/graphics/BitmapShader;

    new-array v7, v6, [Landroid/graphics/BitmapShader;

    .line 120
    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    .line 121
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    const/4 v7, 0x4

    new-array v7, v7, [I

    .line 125
    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    new-array v7, v6, [Landroid/graphics/Matrix;

    .line 127
    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:[Landroid/graphics/Matrix;

    new-array v7, v6, [Landroid/graphics/Path;

    .line 128
    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundPath:[Landroid/graphics/Path;

    const/high16 v7, 0x3f800000    # 1.0f

    .line 133
    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 134
    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    .line 136
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/RectF;

    .line 146
    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    const/4 v7, 0x2

    new-array v11, v7, [Landroid/graphics/RectF;

    .line 149
    iput-object v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    new-array v7, v7, [Landroid/graphics/Paint;

    .line 150
    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 155
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    .line 157
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    const/4 v11, 0x1

    .line 162
    iput-boolean v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    .line 172
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$1;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 184
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$2;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 243
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 342
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$4;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 453
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mStartTask:Ljava/lang/Runnable;

    move-object/from16 v12, p1

    .line 469
    iput-object v12, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    .line 470
    iput-wide v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    move/from16 v7, p5

    .line 471
    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamLoadingPriority:I

    move/from16 v13, p11

    .line 472
    iput v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    .line 473
    iput v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    .line 474
    iput v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    const/4 v14, 0x0

    if-eqz p15, :cond_0

    if-lez v4, :cond_0

    if-lez v5, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v14

    .line 475
    :goto_0
    iput-boolean v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    .line 476
    iput-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 477
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setFlags(I)V

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    if-nez v3, :cond_1

    if-eqz p7, :cond_2

    .line 479
    :cond_1
    new-instance v15, Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-object v1, v15

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-wide v11, v5

    move/from16 v5, p11

    move/from16 v6, p12

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/AnimatedFileDrawableStream;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;IZI)V

    iput-object v15, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    goto :goto_1

    :cond_2
    move-wide v11, v5

    :goto_1
    const/16 v1, 0xf00

    if-eqz p2, :cond_6

    .line 481
    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    if-nez v2, :cond_6

    .line 482
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-wide v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-object/from16 p2, v2

    move-object/from16 p3, v10

    move/from16 p4, v3

    move-wide/from16 p5, v4

    move-object/from16 p7, v6

    move/from16 p8, p12

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 483
    iget-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v2, v2, v11

    if-eqz v2, :cond_4

    aget v2, v10, v14

    if-gt v2, v1, :cond_3

    const/4 v2, 0x1

    aget v3, v10, v2

    if-le v3, v1, :cond_5

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 484
    :goto_2
    iget-wide v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 485
    iput-wide v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    .line 487
    :cond_5
    :goto_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateScaleFactor()V

    .line 488
    iput-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    .line 490
    :cond_6
    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    if-eqz v2, :cond_9

    .line 491
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-wide v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-object/from16 p2, v2

    move-object/from16 p3, v10

    move/from16 p4, v3

    move-wide/from16 p5, v4

    move-object/from16 p7, v6

    move/from16 p8, p12

    invoke-static/range {p2 .. p8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 492
    iget-wide v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    cmp-long v2, v2, v11

    if-eqz v2, :cond_8

    aget v2, v10, v14

    if-gt v2, v1, :cond_7

    const/4 v2, 0x1

    aget v3, v10, v2

    if-le v3, v1, :cond_8

    .line 493
    :cond_7
    iget-wide v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 494
    iput-wide v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    goto :goto_4

    .line 496
    :cond_8
    new-instance v1, Lorg/telegram/messenger/utils/BitmapsCache;

    iget v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    iget-boolean v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    move-object/from16 p2, v1

    move-object/from16 p3, p1

    move-object/from16 p4, p0

    move-object/from16 p5, p15

    move/from16 p6, v2

    move/from16 p7, v3

    move/from16 p8, v4

    invoke-direct/range {p2 .. p8}, Lorg/telegram/messenger/utils/BitmapsCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    :cond_9
    :goto_4
    cmp-long v1, v8, v11

    if-eqz v1, :cond_a

    .line 500
    invoke-virtual {v0, v8, v9, v14}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZ)V

    :cond_a
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V
    .locals 16

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v15, p13

    .line 465
    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->chekDestroyDecoder()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    return p0
.end method

.method static synthetic access$1010(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 2

    .line 46
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/AnimatedFileDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDecodeAfterNextFrame:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDecodeAfterNextFrame:Z

    return p1
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->singleFrameDecoded:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    return p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmapTime:I

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmapTime:I

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader2:[Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRestarted:Z

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRestarted:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateAfter:I

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    return-wide v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    return-wide p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    return-wide v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    return-wide p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/io/File;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    return-wide v0
.end method

.method static synthetic access$3300(Ljava/lang/String;[IIJLjava/lang/Object;Z)J
    .locals 0

    .line 46
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->createDecoder(Ljava/lang/String;[IIJLjava/lang/Object;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$3400(J)V
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateScaleFactor()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    return p0
.end method

.method static synthetic access$3802(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    return-wide p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->uiRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasRoundRadius()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->sync:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4500(JJZ)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekToMs(JJZ)V

    return-void
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    return p0
.end method

.method static synthetic access$4700(JLandroid/graphics/Bitmap;[IIZFF)I
    .locals 0

    .line 46
    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFF)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/AnimatedFileDrawable;F)F
    .locals 0

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoading:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoading:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    return p0
.end method

.method private chekDestroyDecoder()V
    .locals 4

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCache:Z

    if-nez v0, :cond_0

    .line 213
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 214
    iput-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 216
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v0

    if-nez v0, :cond_5

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 225
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {v0}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 227
    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    :cond_3
    const/4 v0, 0x0

    .line 229
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 230
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    :cond_5
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

    .line 1034
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoInfo(ILjava/lang/String;[I)V

    return-void
.end method

.method private hasRoundRadius()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1005
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1006
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

    .line 238
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 239
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

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache;->cancelCreate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 456
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
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

    .line 460
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private static native prepareToSeek(J)V
.end method

.method private scheduleNextGetFrame()V
    .locals 10

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz v0, :cond_8

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->singleFrameDecoded:Z

    if-nez v0, :cond_8

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ignoreNoParent:Z

    if-eqz v0, :cond_8

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCache:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 757
    :cond_3
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameDecodeTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 758
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

    .line 760
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->useSharedQueue:Z

    if-eqz v0, :cond_6

    .line 761
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    if-eqz v0, :cond_5

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 764
    :cond_5
    sget-object v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 767
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_7

    .line 768
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

    .line 770
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_0
    return-void
.end method

.method private static native seekToMs(JJZ)V
.end method

.method private static native stopDecoder(J)V
.end method

.method private updateScaleFactor()V
    .locals 7

    .line 443
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

    .line 444
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

    .line 446
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    goto :goto_0

    .line 449
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

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    if-eqz p1, :cond_0

    .line 547
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 550
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkCacheCancel()V

    return-void
.end method

.method public addSecondParentView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public canLoadFrames()Z
    .locals 7

    .line 1170
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->precache:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1173
    :cond_1
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public checkCacheCancel()V
    .locals 3

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 569
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 575
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 576
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cancelCache:Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method

.method public checkRepeat()V
    .locals 4

    .line 320
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->ignoreNoParent:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 325
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 326
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    .line 327
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    .line 331
    :cond_1
    iget v2, v2, Lorg/telegram/messenger/ImageReceiver;->animatedFileDrawableRepeatMaxCount:I

    if-lez v2, :cond_2

    iget v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    if-lt v3, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 336
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    goto :goto_1

    .line 338
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 818
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
    .locals 4

    .line 1155
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 1159
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1161
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_2

    .line 1163
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1165
    :cond_2
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {v1, v0, v0, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1166
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

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object v1, v0, p8

    if-nez v1, :cond_0

    .line 823
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, p8

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    aput-object v1, v0, p8

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 827
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 828
    iget-object p6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p6, p6, p8

    invoke-virtual {p6, p7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 829
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

    .line 830
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->drawInternal(Landroid/graphics/Canvas;ZJI)V

    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;ZJI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 834
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->canLoadFrames()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    if-eqz v2, :cond_0

    goto/16 :goto_a

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_1

    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide/from16 v2, p3

    :goto_0
    if-eqz p2, :cond_2

    .line 842
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object v4, v4, p5

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->dstRect:Landroid/graphics/RectF;

    :goto_1
    if-eqz p2, :cond_3

    .line 843
    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v5, v5, p5

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    :goto_2
    const/4 v6, 0x0

    if-nez p2, :cond_4

    .line 846
    invoke-virtual {v0, v2, v3, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateCurrentFrame(JZ)V

    .line 849
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1b

    .line 850
    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 851
    iget v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    const/16 v8, 0x10e

    const/16 v9, 0x5a

    const/4 v10, 0x2

    if-eqz p2, :cond_7

    .line 853
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 854
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 855
    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v11, v7, v10

    if-eq v11, v9, :cond_5

    aget v7, v7, v10

    if-ne v7, v8, :cond_6

    :cond_5
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    .line 860
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v2, v2

    div-float v2, v7, v2

    .line 861
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    int-to-float v3, v3

    div-float/2addr v7, v3

    :goto_3
    move v3, v2

    goto :goto_4

    .line 862
    :cond_7
    iget-boolean v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    if-eqz v11, :cond_a

    .line 863
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 864
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 865
    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v11, v7, v10

    if-eq v11, v9, :cond_8

    aget v7, v7, v10

    if-ne v7, v8, :cond_9

    :cond_8
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    .line 870
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 871
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    int-to-float v2, v2

    div-float v2, v7, v2

    iput v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleX:F

    .line 872
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    int-to-float v3, v3

    div-float/2addr v7, v3

    iput v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleY:F

    .line 873
    iput-boolean v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    goto :goto_3

    .line 875
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
    move v2, v6

    .line 877
    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v16, v6, v2

    if-nez v16, :cond_c

    .line 878
    new-instance v11, Landroid/graphics/BitmapShader;

    iget-object v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v11, v8, v12, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    aput-object v11, v6, v2

    .line 880
    :cond_c
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 881
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->shaderMatrix:[Landroid/graphics/Matrix;

    aget-object v8, v6, v2

    if-nez v8, :cond_d

    .line 883
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    aput-object v8, v6, v2

    .line 885
    :cond_d
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundPath:[Landroid/graphics/Path;

    aget-object v11, v6, v2

    if-nez v11, :cond_e

    .line 887
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    aput-object v11, v6, v2

    .line 889
    :cond_e
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 890
    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v12, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8, v6, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 891
    iget-object v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v12, v6, v10

    if-ne v12, v9, :cond_f

    .line 892
    invoke-virtual {v8, v13}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 893
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v8, v15, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_6

    .line 894
    :cond_f
    aget v9, v6, v10

    if-ne v9, v14, :cond_10

    const/high16 v9, 0x43340000    # 180.0f

    .line 895
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 896
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v8, v6, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_6

    .line 897
    :cond_10
    aget v6, v6, v10

    const/16 v9, 0x10e

    if-ne v6, v9, :cond_11

    const/high16 v6, 0x43870000    # 270.0f

    .line 898
    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 899
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v8, v6, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 901
    :cond_11
    :goto_6
    invoke-virtual {v8, v3, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 903
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    aget-object v2, v3, v2

    invoke-virtual {v2, v8}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 904
    iget-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    if-nez v2, :cond_12

    if-eqz p2, :cond_16

    :cond_12
    const/4 v2, 0x0

    if-nez p2, :cond_13

    .line 906
    iput-boolean v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    :cond_13
    move v6, v2

    .line 908
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    array-length v3, v2

    if-ge v6, v3, :cond_14

    .line 909
    sget-object v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;->radii:[F

    mul-int/lit8 v7, v6, 0x2

    aget v8, v2, v6

    int-to-float v8, v8

    aput v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    .line 910
    aget v2, v2, v6

    int-to-float v2, v2

    aput v2, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 912
    :cond_14
    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    if-eqz p2, :cond_15

    goto :goto_8

    .line 913
    :cond_15
    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->actualDrawRect:Landroid/graphics/RectF;

    :goto_8
    sget-object v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;->radii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v4, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 914
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 916
    :cond_16
    invoke-virtual {v1, v11, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 918
    :cond_17
    iget v2, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 919
    iget-object v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v6, v2, v10

    if-ne v6, v9, :cond_18

    .line 920
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 921
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v15, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_9

    .line 922
    :cond_18
    aget v6, v2, v10

    if-ne v6, v14, :cond_19

    const/high16 v6, 0x43340000    # 180.0f

    .line 923
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 924
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_9

    .line 925
    :cond_19
    aget v2, v2, v10

    const/16 v6, 0x10e

    if-ne v2, v6, :cond_1a

    const/high16 v2, 0x43870000    # 270.0f

    .line 926
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 927
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 929
    :cond_1a
    :goto_9
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 930
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

    .line 710
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 713
    throw v0
.end method

.method public getAnimatedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 972
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-object v0

    .line 974
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCurrentProgress()F
    .locals 6

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 735
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 736
    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    long-to-float v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 738
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
    .locals 4

    .line 742
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 743
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    long-to-int v0, v0

    return v0

    .line 745
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

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getFirstFrame(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    .line 1131
    iget v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    iget v2, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 1133
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1134
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1135
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v5, v3, v4

    const/4 v6, 0x1

    aget v3, v3, v6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    .line 1138
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

    .line 1142
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

    .line 1143
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 1144
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1145
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1146
    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1147
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1148
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1149
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    return-object v1
.end method

.method public getFps()I
    .locals 2

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 512
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getFrameAtTime(JZ)Landroid/graphics/Bitmap;
    .locals 12

    .line 516
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_1

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {v0, v2}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->reset()V

    :cond_1
    if-nez p3, :cond_2

    .line 524
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v3, v4, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekToMs(JJZ)V

    .line 526
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p3, :cond_3

    .line 529
    iget-wide v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v9, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    move-wide v6, p1

    move-object v8, v0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JJLandroid/graphics/Bitmap;[II)I

    move-result p1

    goto :goto_0

    .line 531
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

    .line 790
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

    .line 792
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    :cond_3
    int-to-float v0, v1

    .line 794
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 5

    .line 801
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

    .line 803
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    :cond_3
    int-to-float v0, v1

    .line 805
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    .line 936
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastTimeStamp:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinimumHeight()I
    .locals 5

    .line 941
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

    .line 943
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public getMinimumWidth()I
    .locals 5

    .line 950
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

    .line 952
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public getNextFrame(Landroid/graphics/Bitmap;)I
    .locals 14

    .line 1100
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1103
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1104
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 1105
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v6, v1, v5

    aget v1, v1, v4

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    .line 1107
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

    .line 1108
    iget-wide v6, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateTimestamp:J

    cmp-long v1, v6, v2

    const/4 v2, 0x3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v3, v1, v2

    if-eqz v3, :cond_2

    aget v1, v1, v2

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    :cond_2
    return v5

    .line 1111
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastMetadata:I

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v6, v3, v2

    if-ne v1, v6, :cond_4

    .line 1112
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->tryCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->tryCount:I

    const/4 v6, 0x5

    if-le v1, v6, :cond_4

    return v5

    .line 1117
    :cond_4
    aget v1, v3, v2

    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastMetadata:I

    .line 1118
    invoke-virtual {p1, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1119
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1120
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingWidth:I

    int-to-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 1121
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1122
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->generatingCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1123
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 1124
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget p1, p1, v2

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateTimestamp:J

    return v4
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 9

    .line 1054
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 1057
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1059
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1061
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v1, v0, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scaleFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1064
    :cond_2
    :goto_0
    iget-wide v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    iget v8, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getVideoFrame(JLandroid/graphics/Bitmap;[IIZFF)I

    .line 1065
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

    .line 1018
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

    .line 1073
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1046
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public hasBitmap()Z
    .locals 1

    .line 1014
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

    .line 775
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

    .line 1050
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 785
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    return v0
.end method

.method public makeCopy()Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 33

    move-object/from16 v0, p0

    .line 1023
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1024
    new-instance v18, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    const/4 v6, 0x0

    iget-wide v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget v9, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamLoadingPriority:I

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getLocation()Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getParentObject()Ljava/lang/Object;

    move-result-object v12

    iget-wide v13, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    iget v15, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v16, v2

    goto :goto_0

    :cond_0
    move/from16 v16, v3

    :goto_0
    const/16 v17, 0x0

    move-object/from16 v4, v18

    invoke-direct/range {v4 .. v17}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    goto :goto_2

    .line 1026
    :cond_1
    new-instance v18, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->path:Ljava/io/File;

    const/16 v21, 0x0

    iget-wide v4, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamFileSize:J

    iget v6, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->streamLoadingPriority:I

    iget-object v7, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-wide v8, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    iget v10, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->currentAccount:I

    iget-object v11, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->isPreview()Z

    move-result v11

    if-eqz v11, :cond_2

    move/from16 v31, v2

    goto :goto_1

    :cond_2
    move/from16 v31, v3

    :goto_1
    const/16 v32, 0x0

    move-object/from16 v19, v18

    move-object/from16 v20, v1

    move-wide/from16 v22, v4

    move/from16 v24, v6

    move-object/from16 v25, v7

    move-wide/from16 v28, v8

    move/from16 v30, v10

    invoke-direct/range {v19 .. v32}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    :goto_2
    move-object/from16 v1, v18

    .line 1028
    iget-object v4, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    iget-object v5, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->metaData:[I

    aget v6, v5, v3

    aput v6, v4, v3

    .line 1029
    aget v3, v5, v2

    aput v3, v4, v2

    return-object v1
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 812
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 813
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->applyTransformation:Z

    return-void
.end method

.method public prepareForGenerateCache()V
    .locals 8

    .line 1088
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

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 640
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycleWithSecond:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 644
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRecycled:Z

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 646
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    .line 647
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 648
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenRunnable:Ljava/lang/Runnable;

    .line 650
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_4

    .line 651
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 652
    iget-wide v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    .line 653
    iput-wide v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    .line 656
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 664
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 665
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 666
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 667
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    .line 668
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 671
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v3, :cond_3

    .line 672
    invoke-virtual {v3}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    .line 673
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 675
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 676
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    goto :goto_0

    .line 678
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyWhenDone:Z

    .line 680
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v0, :cond_5

    .line 681
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 682
    iput-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    .line 684
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    return-void
.end method

.method public releaseForGenerateCache()V
    .locals 4

    .line 1093
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->cacheGenerateNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1094
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->destroyDecoder(J)V

    :cond_0
    return-void
.end method

.method public removeParent(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 555
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 556
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    .line 558
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkCacheCancel()V

    return-void
.end method

.method public removeSecondParentView(Landroid/view/View;)V
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 593
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 594
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycleWithSecond:Z

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    goto :goto_0

    .line 597
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    if-eqz p1, :cond_1

    .line 598
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetStream(Z)V
    .locals 4

    .line 688
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 689
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 691
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 693
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stopDecoder(J)V

    goto :goto_0

    .line 695
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

    .line 612
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZZ)V

    return-void
.end method

.method public seekTo(JZZ)V
    .locals 3

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_0
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekTo:J

    .line 618
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingSeekToUI:J

    .line 619
    iget-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    .line 620
    iget-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nativePtr:J

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->prepareToSeek(J)V

    .line 622
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decoderCreated:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stream:Lorg/telegram/messenger/AnimatedFileDrawableStream;

    if-eqz p1, :cond_2

    .line 623
    invoke-virtual {p1, p3}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    .line 624
    iput-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoading:Z

    if-eqz p3, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    .line 625
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->pendingRemoveLoadingFramesReset:I

    :cond_2
    if-eqz p4, :cond_4

    .line 627
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz p1, :cond_4

    .line 628
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->singleFrameDecoded:Z

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 630
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 632
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->forceDecodeAfterNextFrame:Z

    .line 635
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

    .line 983
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

    .line 984
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x1

    .line 985
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    :cond_1
    return-void
.end method

.method public setAllowDecodeSingleFrame(Z)V
    .locals 0

    .line 605
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->decodeSingleFrame:Z

    if-eqz p1, :cond_0

    .line 607
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    :cond_0
    return-void
.end method

.method public setInvalidateParentViewWithSecond(Z)V
    .locals 0

    .line 581
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateParentViewWithSecond:Z

    return-void
.end method

.method public setIsWebmSticker(Z)V
    .locals 0

    .line 505
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 507
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->useSharedQueue:Z

    :cond_0
    return-void
.end method

.method public setLimitFps(Z)V
    .locals 0

    .line 1069
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->limitFps:Z

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 540
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->parentView:Landroid/view/View;

    return-void
.end method

.method public setRoundRadius([I)V
    .locals 5

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->secondParentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 992
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    .line 994
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadiusBackup:[I

    array-length v4, v3

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_3

    .line 997
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    if-nez v0, :cond_2

    aget v0, p1, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->roundRadius:[I

    aget v3, v3, v2

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    .line 998
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidatePath:Z

    .line 1000
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

    .line 1038
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->startTime:F

    long-to-float p3, p3

    div-float/2addr p3, v1

    .line 1039
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->endTime:F

    .line 1040
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getCurrentProgressMs()I

    move-result p3

    int-to-long p3, p3

    cmp-long p3, p3, p1

    if-gez p3, :cond_0

    const/4 p3, 0x1

    .line 1041
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->seekTo(JZ)V

    :cond_0
    return-void
.end method

.method public setUseSharedQueue(Z)V
    .locals 1

    .line 701
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v0, :cond_0

    return-void

    .line 704
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->useSharedQueue:Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 723
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

    .line 726
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    .line 727
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->mStartTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 780
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    return-void
.end method

.method public updateCurrentFrame(JZ)V
    .locals 6

    .line 1184
    iget-boolean p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 1185
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez p3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 1186
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    goto/16 :goto_2

    .line 1187
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

    .line 1188
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 1190
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmapTime:I

    move p3, v1

    .line 1191
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    array-length v2, v2

    if-ge p3, v2, :cond_2

    .line 1192
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    aget-object v4, v3, p3

    aput-object v4, v2, p3

    .line 1193
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader2:[Landroid/graphics/BitmapShader;

    aget-object v4, v2, p3

    aput-object v4, v3, p3

    .line 1194
    aput-object v0, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1196
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1197
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    .line 1198
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    .line 1199
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    .line 1201
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    .line 1202
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    goto :goto_2

    .line 1204
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->invalidateInternal()V

    goto :goto_2

    .line 1206
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

    .line 1207
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->unusedBitmaps:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 1209
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingBitmapTime:I

    move p3, v1

    .line 1210
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->backgroundShader:[Landroid/graphics/BitmapShader;

    array-length v2, v2

    if-ge p3, v2, :cond_5

    .line 1211
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->renderingShader:[Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader:[Landroid/graphics/BitmapShader;

    aget-object v4, v3, p3

    aput-object v4, v2, p3

    .line 1212
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingShader2:[Landroid/graphics/BitmapShader;

    aget-object v4, v2, p3

    aput-object v4, v3, p3

    .line 1213
    aput-object v0, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1215
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1216
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    iput p3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime:I

    .line 1217
    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmap2:Landroid/graphics/Bitmap;

    .line 1218
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->nextRenderingBitmapTime2:I

    .line 1220
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->lastFrameTime:J

    .line 1221
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->scheduleNextGetFrame()V

    :cond_6
    :goto_2
    return-void
.end method
