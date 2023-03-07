.class public Lorg/telegram/ui/Components/RLottieDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RLottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;,
        Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;
    }
.end annotation


# static fields
.field private static bufferLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field public static gson:Lcom/google/gson/Gson;

.field private static final loadFrameRunnableQueue:Lorg/telegram/messenger/DispatchQueuePool;

.field public static lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

.field private static readBufferLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field protected static final uiHandler:Landroid/os/Handler;


# instance fields
.field private allowVibration:Z

.field private applyTransformation:Z

.field private applyingLayerColors:Z

.field args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

.field protected autoRepeat:I

.field protected autoRepeatCount:I

.field protected autoRepeatPlayCount:I

.field protected volatile backgroundBitmap:Landroid/graphics/Bitmap;

.field private backgroundPaint:[Landroid/graphics/Paint;

.field bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

.field protected cacheGenerateTask:Ljava/lang/Runnable;

.field private createdForFirstFrame:Z

.field protected currentFrame:I

.field private currentParentView:Landroid/view/View;

.field protected customEndFrame:I

.field private decodeSingleFrame:Z

.field protected destroyAfterLoading:Z

.field protected destroyWhenDone:Z

.field protected diceSwitchFramesCount:I

.field private doNotRemoveInvalidOnFrameReady:Z

.field private final dstRect:Landroid/graphics/RectF;

.field private dstRectBackground:[Landroid/graphics/RectF;

.field private fallbackCache:Z

.field file:Ljava/io/File;

.field private finishFrame:I

.field private forceFrameRedraw:Z

.field protected frameWaitSync:Ljava/util/concurrent/CountDownLatch;

.field private genCacheSend:Z

.field generateCacheFramePointer:I

.field generateCacheNativePtr:J

.field generatingCache:Z

.field protected final height:I

.field private invalidateOnProgressSet:Z

.field protected isDice:I

.field private isInvalid:Z

.field protected volatile isRecycled:Z

.field protected volatile isRunning:Z

.field private lastFrameTime:J

.field protected loadFrameRunnable:Ljava/lang/Runnable;

.field protected loadFrameTask:Ljava/lang/Runnable;

.field protected loadingInBackground:Z

.field private masterParent:Landroid/view/View;

.field protected final metaData:[I

.field protected volatile nativePtr:J

.field private needScale:Z

.field private newColorUpdates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private newReplaceColors:[I

.field protected volatile nextFrameIsLast:Z

.field protected volatile nextRenderingBitmap:Landroid/graphics/Bitmap;

.field private onAnimationEndListener:Ljava/lang/Runnable;

.field protected onFinishCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onFrameReadyRunnable:Ljava/lang/Runnable;

.field private parentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile pendingColorUpdates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pendingReplaceColors:[I

.field protected playInDirectionOfCustomEndFrame:Z

.field precache:Z

.field private rawBackgroundBitmapFrame:I

.field protected volatile renderingBitmap:Landroid/graphics/Bitmap;

.field private resetVibrationAfterRestart:Z

.field private scaleX:F

.field private scaleY:F

.field protected secondFramesCount:I

.field protected secondLoadingInBackground:Z

.field protected volatile secondNativePtr:J

.field protected volatile setLastFrame:Z

.field private shouldLimitFps:Z

.field private singleFrameDecoded:Z

.field public skipFrameUpdate:Z

.field protected timeBetweenFrames:I

.field protected uiRunnable:Ljava/lang/Runnable;

.field private uiRunnableCacheFinished:Ljava/lang/Runnable;

.field private uiRunnableGenerateCache:Ljava/lang/Runnable;

.field protected uiRunnableNoFrame:Ljava/lang/Runnable;

.field private vibrationPattern:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected waitingForNextTask:Z

.field protected final width:I


# direct methods
.method public static synthetic $r8$lambda$D6jNkPqP2Vk3OC0i4C_yjmrXCGw(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$recycleNativePtr$0(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Enm6_d8Tpj8uCXPh4UWcKVkh-4o(Lorg/telegram/ui/Components/RLottieDrawable;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$setDiceNumber$5([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SdDzDVtPxbAexasAFQ-phztOgn8(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$recycleNativePtr$1(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Srh8IAQq920O1kM6FMuKwtTBbwo(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$setBaseDice$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$lKPqkdnCsENdIHjM7yqK75REh-s(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$setBaseDice$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rtHUvX24CBBsfqsdfevwtQ3c3uM(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$setDiceNumber$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zuwiyTxyl1etpDY_Qwt1pMOZUaE(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$setDiceNumber$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->uiHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->readBufferLocal:Ljava/lang/ThreadLocal;

    .line 140
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->bufferLocal:Ljava/lang/ThreadLocal;

    .line 142
    new-instance v0, Lorg/telegram/messenger/DispatchQueuePool;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueuePool;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnableQueue:Lorg/telegram/messenger/DispatchQueuePool;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 583
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIZ[I)V
    .locals 6

    .line 693
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 67
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 76
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    const/4 v3, 0x1

    .line 77
    iput-boolean v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    .line 88
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    .line 90
    iput v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 91
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 116
    iput v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 117
    iput v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 120
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/graphics/RectF;

    .line 121
    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    new-array v5, v4, [Landroid/graphics/Paint;

    .line 122
    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 154
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 166
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 204
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    .line 310
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1344
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    .line 694
    iput p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    .line 695
    iput p4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 696
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    const/4 p3, 0x0

    .line 697
    invoke-static {p3, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 701
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 702
    invoke-static {p1, p2, v0, p6}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const/16 p1, 0x10

    const/high16 p2, 0x447a0000    # 1000.0f

    .line 703
    aget p3, v0, v3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    if-eqz p5, :cond_1

    .line 705
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/File;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v0, p5

    .line 475
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/4 v2, 0x3

    new-array v15, v2, [I

    .line 67
    iput-object v15, v7, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v2, -0x1

    .line 69
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    .line 73
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    .line 74
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    const/4 v4, 0x0

    .line 76
    iput-boolean v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    const/4 v14, 0x1

    .line 77
    iput-boolean v14, v7, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    .line 85
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    .line 88
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    .line 90
    iput v14, v7, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 91
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 116
    iput v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 117
    iput v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 120
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/graphics/RectF;

    .line 121
    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    new-array v6, v5, [Landroid/graphics/Paint;

    .line 122
    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 154
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$1;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable$1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 166
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$2;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable$2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$3;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable$3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 204
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$4;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable$4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    .line 310
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1344
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    move/from16 v6, p2

    .line 476
    iput v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    move/from16 v11, p3

    .line 477
    iput v11, v7, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 478
    iput-boolean v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 479
    :goto_0
    iput-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v3, :cond_1

    .line 480
    iget-boolean v2, v3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->fallback:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->fallbackCache:Z

    if-eqz v3, :cond_2

    .line 481
    iget-boolean v2, v3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->firstFrame:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    .line 482
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 484
    iput-object v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->file:Ljava/io/File;

    .line 485
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v2, :cond_3

    sget-object v2, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v2, :cond_3

    .line 486
    invoke-static {}, Lorg/telegram/ui/Components/RLottieDrawable;->createCacheGenQueue()V

    .line 488
    :cond_3
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    const/16 v5, 0x3c

    if-eqz v2, :cond_6

    .line 489
    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Components/RLottieDrawable$1;)V

    iput-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    .line 490
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    iput-object v9, v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    .line 491
    iget-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iput-object v8, v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->json:Ljava/lang/String;

    move-object/from16 v13, p6

    .line 492
    iput-object v13, v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    move/from16 v12, p7

    .line 493
    iput v12, v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    .line 494
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    if-eqz v2, :cond_4

    return-void

    .line 497
    :cond_4
    invoke-direct {v7, v1, v8, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->parseLottieMetadata(Ljava/io/File;Ljava/lang/String;[I)V

    .line 498
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v2, :cond_5

    aget v2, v15, v14

    if-ge v2, v5, :cond_5

    .line 499
    iput-boolean v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    .line 501
    :cond_5
    new-instance v8, Lorg/telegram/messenger/utils/BitmapsCache;

    xor-int/lit8 v9, v0, 0x1

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move/from16 v4, p2

    move/from16 v5, p3

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/utils/BitmapsCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V

    iput-object v8, v7, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    move-object v3, v15

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v13, p6

    move/from16 v12, p7

    .line 503
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-boolean v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    iget-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    move/from16 v10, p2

    move/from16 v11, p3

    move-object v12, v15

    move v13, v0

    const/4 v0, 0x1

    move-object/from16 v14, p6

    move-object v3, v15

    move v15, v2

    move/from16 v16, p7

    invoke-static/range {v8 .. v16}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 504
    iget-wide v8, v7, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_7

    .line 505
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 507
    :cond_7
    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v1, :cond_8

    aget v1, v3, v0

    if-ge v1, v5, :cond_8

    .line 508
    iput-boolean v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    .line 512
    :cond_8
    :goto_3
    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x21

    goto :goto_4

    :cond_9
    const/16 v1, 0x10

    :goto_4
    const/high16 v2, 0x447a0000    # 1000.0f

    aget v0, v3, v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v3, p5

    move/from16 v1, p6

    .line 515
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/4 v2, 0x3

    new-array v15, v2, [I

    .line 67
    iput-object v15, v7, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v2, -0x1

    .line 69
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    .line 73
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    .line 74
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    const/4 v4, 0x0

    .line 76
    iput-boolean v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    const/4 v14, 0x1

    .line 77
    iput-boolean v14, v7, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    .line 85
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    .line 88
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    .line 90
    iput v14, v7, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 91
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 116
    iput v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 117
    iput v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 120
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/graphics/RectF;

    .line 121
    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    new-array v6, v5, [Landroid/graphics/Paint;

    .line 122
    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 154
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$1;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable$1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 166
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$2;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable$2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$3;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable$3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 204
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$4;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable$4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    .line 310
    new-instance v6, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1344
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    move/from16 v6, p3

    .line 516
    iput v6, v7, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    move/from16 v11, p4

    .line 517
    iput v11, v7, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 518
    iput-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 519
    :goto_0
    iput-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v3, :cond_1

    .line 520
    iget-boolean v2, v3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->firstFrame:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    .line 521
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFlags(I)V

    .line 522
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v2, :cond_2

    sget-object v2, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v2, :cond_2

    .line 523
    invoke-static {}, Lorg/telegram/ui/Components/RLottieDrawable;->createCacheGenQueue()V

    .line 525
    :cond_2
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    const/16 v5, 0x3c

    if-eqz v2, :cond_5

    .line 526
    new-instance v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Components/RLottieDrawable$1;)V

    iput-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    .line 527
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    iput-object v8, v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    .line 528
    iget-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iput-object v0, v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->json:Ljava/lang/String;

    move-object/from16 v13, p7

    .line 529
    iput-object v13, v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    move/from16 v12, p8

    .line 530
    iput v12, v2, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    .line 531
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    if-eqz v2, :cond_3

    return-void

    :cond_3
    move-object/from16 v2, p1

    .line 534
    invoke-direct {v7, v2, v0, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->parseLottieMetadata(Ljava/io/File;Ljava/lang/String;[I)V

    .line 535
    iget-boolean v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v0, :cond_4

    aget v0, v15, v14

    if-ge v0, v5, :cond_4

    .line 536
    iput-boolean v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    .line 538
    :cond_4
    new-instance v8, Lorg/telegram/messenger/utils/BitmapsCache;

    xor-int/lit8 v9, v1, 0x1

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/utils/BitmapsCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V

    iput-object v8, v7, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    move-object v1, v15

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v2, p1

    move-object/from16 v13, p7

    move/from16 v12, p8

    .line 540
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    iget-boolean v3, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object v12, v15

    move v13, v1

    const/4 v0, 0x1

    move-object/from16 v14, p7

    move-object v1, v15

    move v15, v3

    move/from16 v16, p8

    invoke-static/range {v8 .. v16}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 541
    iget-wide v8, v7, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_6

    .line 542
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 544
    :cond_6
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v2, :cond_7

    aget v2, v1, v0

    if-ge v2, v5, :cond_7

    .line 545
    iput-boolean v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    .line 550
    :cond_7
    :goto_2
    iget-boolean v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x21

    goto :goto_3

    :cond_8
    const/16 v2, 0x10

    :goto_3
    const/high16 v3, 0x447a0000    # 1000.0f

    aget v0, v1, v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    float-to-int v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 5

    .line 586
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 67
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 76
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    const/4 v2, 0x1

    .line 77
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    .line 88
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    .line 90
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 91
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 116
    iput v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 117
    iput v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 120
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    const/4 v3, 0x2

    new-array v4, v3, [Landroid/graphics/RectF;

    .line 121
    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    new-array v4, v3, [Landroid/graphics/Paint;

    .line 122
    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 154
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 166
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 204
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    .line 310
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1344
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    .line 587
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    .line 588
    iput p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 589
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const-string p2, "\ud83c\udfb2"

    .line 591
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 592
    sget p1, Lorg/telegram/messenger/R$raw;->diceloop:I

    invoke-static {p3, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3c

    .line 593
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    goto :goto_0

    :cond_0
    const-string p2, "\ud83c\udfaf"

    .line 594
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 595
    sget p1, Lorg/telegram/messenger/R$raw;->dartloop:I

    invoke-static {p3, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p3

    .line 599
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 600
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v1, 0x10

    if-eqz p2, :cond_2

    .line 601
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void

    :cond_2
    const-string p2, "dice"

    .line 604
    invoke-static {p1, p2, v0, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const/high16 p1, 0x447a0000    # 1000.0f

    .line 605
    aget p2, v0, v2

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFrameReadyRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/RLottieDrawable;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/RLottieDrawable;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/RLottieDrawable;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    return p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->vibrationPattern:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkDispatchOnAnimationEnd()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/util/HashMap;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(JLjava/lang/String;I)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/RLottieDrawable;)[I
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingReplaceColors:[I

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/RLottieDrawable;[I)[I
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingReplaceColors:[I

    return-object p1
.end method

.method static synthetic access$600(J[I)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->replaceColors(J[I)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/RLottieDrawable;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/RLottieDrawable;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->genCacheSend:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/RLottieDrawable;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->genCacheSend:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/RLottieDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    return-object p0
.end method

.method private checkDispatchOnAnimationEnd()V
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 610
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 611
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public static native create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J
.end method

.method public static createCacheGenQueue()V
    .locals 2

    .line 220
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "cache generator queue"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    return-void
.end method

.method protected static native createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J
.end method

.method public static native destroy(J)V
.end method

.method public static native getFrame(JILandroid/graphics/Bitmap;IIIZ)I
.end method

.method private static synthetic lambda$recycleNativePtr$0(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 265
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_0
    cmp-long p0, p2, v0

    if-eqz p0, :cond_1

    .line 268
    invoke-static {p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$recycleNativePtr$1(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 274
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_0
    cmp-long p0, p2, v0

    if-eqz p0, :cond_1

    .line 277
    invoke-static {p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setBaseDice$2()V
    .locals 4

    const/4 v0, 0x0

    .line 635
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    .line 636
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    return-void

    :cond_0
    const/16 v0, 0x10

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 640
    iget-object v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v1, v3, v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    .line 641
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 642
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private synthetic lambda$setBaseDice$3(Ljava/lang/String;)V
    .locals 3

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const-string v1, "dice"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 634
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setDiceNumber$4()V
    .locals 1

    const/4 v0, 0x0

    .line 669
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 670
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 671
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setDiceNumber$5([I)V
    .locals 3

    const/4 v0, 0x0

    .line 679
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 680
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 681
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    return-void

    .line 684
    :cond_0
    aget v0, p1, v0

    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondFramesCount:I

    const/16 v0, 0x10

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 685
    aget p1, p1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    .line 686
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 687
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private synthetic lambda$setDiceNumber$6(Ljava/lang/String;)V
    .locals 3

    .line 667
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    .line 668
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "dice"

    .line 677
    invoke-static {p1, v2, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    .line 678
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;[I)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseLottieMetadata(Ljava/io/File;Ljava/lang/String;[I)V
    .locals 11

    .line 554
    const-class v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;

    sget-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    .line 555
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->gson:Lcom/google/gson/Gson;

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 560
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 561
    sget-object v3, Lorg/telegram/ui/Components/RLottieDrawable;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 568
    :cond_1
    :try_start_2
    sget-object v2, Lorg/telegram/ui/Components/RLottieDrawable;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;

    .line 570
    :catch_0
    :goto_0
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;->op:F

    iget v3, v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;->ip:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p3, v1

    const/4 v2, 0x1

    .line 571
    iget v0, v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;->fr:F

    float-to-int v0, v0

    aput v0, p3, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 574
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 575
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    const/4 v7, 0x0

    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v8, p1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    iget-boolean v9, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    iget v10, p1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v2 .. v10}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_2

    .line 577
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static readRes(Ljava/io/File;I)Ljava/lang/String;
    .locals 7

    .line 711
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->readBufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 714
    sget-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->readBufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 719
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 721
    :cond_1
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 724
    :goto_0
    :try_start_1
    sget-object p0, Lorg/telegram/ui/Components/RLottieDrawable;->bufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const/4 v2, 0x0

    if-nez p0, :cond_2

    const/16 p0, 0x1000

    new-array p0, p0, [B

    .line 727
    sget-object v3, Lorg/telegram/ui/Components/RLottieDrawable;->bufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    const/4 v3, 0x0

    .line 729
    :cond_3
    :goto_1
    array-length v4, p0

    invoke-virtual {p1, p0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_5

    .line 730
    array-length v5, v0

    add-int v6, v3, v4

    if-ge v5, v6, :cond_4

    .line 731
    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 732
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 734
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->readBufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, v5

    :cond_4
    if-lez v4, :cond_3

    .line 737
    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v3, v6

    goto :goto_1

    .line 746
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    :catchall_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object p0

    :catchall_1
    move-object p1, v1

    :catchall_2
    if-eqz p1, :cond_6

    .line 746
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_6
    return-object v1
.end method

.method private recycleNativePtr(Z)V
    .locals 7

    .line 256
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 257
    iget-wide v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    const-wide/16 v4, 0x0

    .line 259
    iput-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 260
    iput-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 263
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda0;-><init>(JJ)V

    invoke-static {p1}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 272
    :cond_1
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda1;-><init>(JJ)V

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static native replaceColors(J[I)V
.end method

.method private requestRedrawColors()V
    .locals 3

    .line 961
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz v0, :cond_1

    .line 962
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 963
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 965
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 966
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 967
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 968
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 971
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private setCurrentFrame(JJJZ)V
    .locals 5

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1107
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 1108
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1109
    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1110
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    sub-int/2addr v3, v2

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->finishFrame:I

    if-lt v3, v4, :cond_1

    .line 1111
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1113
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1115
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    .line 1118
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    if-nez v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    if-ne v1, v2, :cond_3

    .line 1119
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 1121
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 1122
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1123
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    goto :goto_0

    .line 1124
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    if-eqz v0, :cond_5

    .line 1125
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    .line 1127
    :cond_5
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 1128
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    .line 1129
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_6

    .line 1130
    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->lastFrameTime:J

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x10

    sub-long/2addr p3, p5

    .line 1132
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->lastFrameTime:J

    :goto_1
    if-eqz p7, :cond_7

    .line 1134
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    if-eqz p1, :cond_7

    .line 1135
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 1136
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 1138
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    if-nez p1, :cond_8

    .line 1139
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_8

    iget p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iget p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->finishFrame:I

    if-lt p2, p3, :cond_8

    .line 1140
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    .line 1142
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1146
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    return-void
.end method

.method private static native setLayerColor(JLjava/lang/String;I)V
.end method


# virtual methods
.method public addParentView(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginApplyLayerColors()V
    .locals 1

    const/4 v0, 0x1

    .line 929
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    return-void
.end method

.method public canLoadFrames()Z
    .locals 7

    .line 1380
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->fallbackCache:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 1383
    :cond_2
    iget-wide v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public checkCacheCancel()V
    .locals 5

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_6

    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_2

    .line 803
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 804
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_3

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 811
    sget-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 812
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    const/4 v0, 0x0

    .line 813
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    .line 815
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    .line 816
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->genCacheSend:Z

    :cond_6
    :goto_2
    return-void
.end method

.method protected checkRunningTasks()V
    .locals 3

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 225
    sget-object v2, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 226
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    .line 227
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    .line 229
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasParentView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 230
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 231
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public commitApplyLayerColors()V
    .locals 3

    .line 933
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 936
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    .line 937
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz v1, :cond_2

    .line 938
    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 939
    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 941
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 942
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 943
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 944
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 947
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method protected decodeFrameFinishedInternal()V
    .locals 6

    .line 236
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkRunningTasks()V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleNativePtr(Z)V

    .line 242
    :cond_0
    iget-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->fallbackCache:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-nez v0, :cond_2

    .line 243
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleResources()V

    return-void

    .line 246
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    .line 247
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->hasParentView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 248
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 250
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-eqz v0, :cond_4

    .line 251
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    :cond_4
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1151
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V

    return-void
.end method

.method public drawFrame(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 1346
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1347
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1348
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1350
    :cond_1
    iget-wide v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    iget-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    const/4 v8, 0x1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    .line 1352
    :cond_2
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawInBackground(Landroid/graphics/Canvas;FFFFILandroid/graphics/ColorFilter;I)V
    .locals 7

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object v1, v0, p8

    if-nez v1, :cond_0

    .line 1156
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, p8

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, p8

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1160
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1161
    iget-object p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p6, p6, p8

    invoke-virtual {p6, p7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1162
    iget-object p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object p6, p6, p8

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    invoke-virtual {p6, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p8

    .line 1163
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V

    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V
    .locals 4

    .line 1171
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 1175
    invoke-virtual {p0, p4, p5, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    :cond_1
    if-eqz p3, :cond_2

    .line 1178
    iget-object p4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object p4, p4, p6

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    :goto_0
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 1179
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p2, p2, p6

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    .line 1181
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p5

    if-nez p5, :cond_5

    return-void

    .line 1185
    :cond_5
    iget-boolean p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    if-nez p5, :cond_d

    iget-object p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p5, :cond_d

    const/4 p5, 0x1

    if-nez p3, :cond_9

    .line 1189
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p6

    invoke-virtual {p4, p6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1190
    iget-boolean p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyTransformation:Z

    if-eqz p6, :cond_8

    .line 1191
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p6

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    int-to-float v1, v1

    div-float/2addr p6, v1

    iput p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 1192
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p6

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    int-to-float v1, v1

    div-float/2addr p6, v1

    iput p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 1193
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyTransformation:Z

    .line 1194
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p6

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    int-to-float v1, v1

    sub-float/2addr p6, v1

    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p6

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float p6, p6, v1

    if-gez p6, :cond_6

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p6

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    int-to-float v1, v1

    sub-float/2addr p6, v1

    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p6

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float p6, p6, v1

    if-ltz p6, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->needScale:Z

    .line 1196
    :cond_8
    iget p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 1197
    iget p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 1198
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->needScale:Z

    goto :goto_2

    .line 1200
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p6

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    int-to-float v1, v1

    div-float/2addr p6, v1

    .line 1201
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1202
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_b

    :cond_a
    const/4 v0, 0x1

    :cond_b
    move p5, p6

    move p6, v1

    :goto_2
    if-nez v0, :cond_c

    .line 1205
    iget-object p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    iget p6, p4, Landroid/graphics/RectF;->left:F

    iget p4, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p5, p6, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1207
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1208
    iget v0, p4, Landroid/graphics/RectF;->left:F

    iget p4, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1209
    invoke-virtual {p1, p5, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1210
    iget-object p4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 p5, 0x0

    invoke-virtual {p1, p4, p5, p5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1214
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-eqz p1, :cond_d

    if-nez p3, :cond_d

    .line 1215
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    :cond_d
    :goto_4
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 879
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 882
    throw v0
.end method

.method public getAnimatedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 1281
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFrame()I
    .locals 1

    .line 757
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    return v0
.end method

.method public getCustomEndFrame()I
    .locals 1

    .line 761
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    return v0
.end method

.method public getDuration()J
    .locals 3

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v1, v1, v0

    float-to-long v0, v1

    return-wide v0
.end method

.method public getFramesCount()I
    .locals 2

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1091
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1096
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 1258
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 1263
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    return v0
.end method

.method public getNextFrame(Landroid/graphics/Bitmap;)I
    .locals 10

    .line 1323
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1326
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/4 v9, 0x2

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    .line 1328
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    const/4 v7, 0x1

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->getFrame(JILandroid/graphics/Bitmap;IIIZ)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x64

    .line 1331
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1333
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1335
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getNextFrame(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1

    .line 1337
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    add-int/2addr p1, v9

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    .line 1338
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-le p1, v0, :cond_3

    return v1

    :cond_3
    return v8
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public hasBaseDice()Z
    .locals 5

    .line 650
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-eqz v0, :cond_0

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

.method public hasBitmap()Z
    .locals 1

    .line 1288
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasParentView()Z
    .locals 1

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

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

.method public hasVibrationPattern()Z
    .locals 1

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->vibrationPattern:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected invalidateInternal()V
    .locals 2

    const/4 v0, 0x0

    .line 825
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 826
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 829
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 831
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 832
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public isGeneratingCache()Z
    .locals 1

    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeavyDrawable()Z
    .locals 1

    .line 999
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastFrame()Z
    .locals 3

    .line 1304
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isRunning()Z
    .locals 1

    .line 1086
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1101
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 1102
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyTransformation:Z

    return-void
.end method

.method public prepareForGenerateCache()V
    .locals 10

    .line 1311
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v0, v0, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v2, v0, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->json:Ljava/lang/String;

    iget v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    iget-boolean v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [I

    :goto_0
    const/4 v6, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    const/4 v8, 0x0

    iget v9, v0, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 1313
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public recycle(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 844
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    const/4 v0, 0x1

    .line 845
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    .line 846
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkRunningTasks()V

    .line 847
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 849
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    if-nez v1, :cond_2

    .line 850
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleNativePtr(Z)V

    .line 851
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz p1, :cond_1

    .line 852
    invoke-virtual {p1}, Lorg/telegram/messenger/utils/BitmapsCache;->recycle()V

    const/4 p1, 0x0

    .line 853
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    .line 855
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleResources()V

    goto :goto_1

    .line 857
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    goto :goto_1

    .line 848
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    :goto_1
    return-void
.end method

.method protected recycleResources()V
    .locals 2

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 289
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 290
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 291
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 292
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 295
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    .line 297
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method public releaseForGenerateCache()V
    .locals 5

    .line 1358
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1359
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    .line 1360
    iput-wide v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    :cond_0
    return-void
.end method

.method public removeParentView(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 795
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 796
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkCacheCancel()V

    return-void
.end method

.method public replaceColors([I)V
    .locals 0

    .line 951
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newReplaceColors:[I

    .line 952
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->requestRedrawColors()V

    return-void
.end method

.method public resetVibrationAfterRestart(Z)V
    .locals 0

    .line 1253
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    return-void
.end method

.method public restart()Z
    .locals 1

    const/4 v0, 0x0

    .line 907
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->restart(Z)Z

    move-result v0

    return v0
.end method

.method public restart(Z)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 911
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    if-lt p1, v0, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    if-nez p1, :cond_1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    if-gez p1, :cond_1

    return v1

    .line 914
    :cond_1
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    .line 915
    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 916
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method protected scheduleNextGetFrame()Z
    .locals 4

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz v0, :cond_6

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 978
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    if-eqz v0, :cond_1

    return v1

    .line 981
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 985
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newReplaceColors:[I

    if-eqz v0, :cond_3

    .line 986
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingReplaceColors:[I

    const/4 v0, 0x0

    .line 987
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newReplaceColors:[I

    .line 989
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 990
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v0, v3, :cond_5

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    iget-object v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v0, v1}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 993
    :cond_5
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnableQueue:Lorg/telegram/messenger/DispatchQueuePool;

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueuePool;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public setAllowDecodeSingleFrame(Z)V
    .locals 0

    .line 837
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz p1, :cond_0

    .line 839
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    :cond_0
    return-void
.end method

.method public setAllowVibration(Z)V
    .locals 0

    .line 1249
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    return-void
.end method

.method public setAutoRepeat(I)V
    .locals 2

    .line 862
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-eqz v0, :cond_0

    return-void

    .line 865
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    return-void
.end method

.method public setAutoRepeatCount(I)V
    .locals 0

    .line 869
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    return-void
.end method

.method public setAutoRepeatTimeout(J)V
    .locals 0

    return-void
.end method

.method public setBaseDice(Ljava/io/File;)Z
    .locals 6

    .line 624
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 627
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 631
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    .line 632
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return v2
.end method

.method public setCurrentFrame(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1008
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    return-void
.end method

.method public setCurrentFrame(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1012
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    return-void
.end method

.method public setCurrentFrame(IZZ)V
    .locals 3

    if-ltz p1, :cond_8

    .line 1016
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gt p1, v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-ne v0, p1, :cond_0

    if-nez p3, :cond_0

    goto :goto_2

    .line 1019
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 1020
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 1021
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 1022
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateOnProgressSet:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1023
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    .line 1024
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1025
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_3

    .line 1028
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 1029
    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1030
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1031
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 1032
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    :cond_3
    if-nez p2, :cond_4

    .line 1035
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v1, :cond_4

    .line 1036
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    :cond_4
    if-eqz p3, :cond_5

    .line 1039
    iget-boolean p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez p3, :cond_5

    .line 1040
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    .line 1042
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    move-result p3

    if-eqz p3, :cond_6

    if-nez p2, :cond_7

    .line 1045
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1047
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1049
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    goto :goto_1

    .line 1052
    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 1054
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_8
    :goto_2
    return-void
.end method

.method public setCurrentParentView(Landroid/view/View;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentParentView:Landroid/view/View;

    return-void
.end method

.method public setCustomEndFrame(I)Z
    .locals 2

    .line 773
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v0, v0, v1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 776
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public setDiceNumber(Ljava/io/File;Z)Z
    .locals 6

    .line 654
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 657
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    .line 658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 661
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez p2, :cond_2

    const/4 p2, 0x2

    .line 662
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    .line 663
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->setLastFrame:Z

    .line 665
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 666
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return v2
.end method

.method public setGeneratingFrame(I)V
    .locals 0

    .line 1318
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    return-void
.end method

.method public setInvalidateOnProgressSet(Z)V
    .locals 0

    .line 1292
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateOnProgressSet:Z

    return-void
.end method

.method public setLayerColor(Ljava/lang/String;I)V
    .locals 1

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->requestRedrawColors()V

    return-void
.end method

.method public setMasterParent(Landroid/view/View;)V
    .locals 0

    .line 1376
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Landroid/view/View;

    return-void
.end method

.method public setOnAnimationEndListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnFinishCallback(Ljava/lang/Runnable;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    .line 303
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->finishFrame:I

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 305
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayInDirectionOfCustomEndFrame(Z)V
    .locals 0

    .line 769
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->playInDirectionOfCustomEndFrame:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1067
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1076
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    return-void
.end method

.method public setProgressMs(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1062
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    rem-long/2addr p1, v0

    long-to-int p2, p1

    const/4 p1, 0x1

    .line 1063
    invoke-virtual {p0, p2, p1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    return-void
.end method

.method public setVibrationPattern(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 921
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->vibrationPattern:Ljava/util/HashMap;

    return-void
.end method

.method public start()V
    .locals 2

    .line 892
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 895
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    .line 896
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateOnProgressSet:Z

    if-eqz v1, :cond_2

    .line 897
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    .line 898
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 899
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    .line 902
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 903
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    :cond_3
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1004
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    return-void
.end method

.method public updateCurrentFrame(JZ)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    move-wide v1, p1

    .line 1222
    iget-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->lastFrameTime:J

    sub-long v3, v1, p1

    if-eqz p3, :cond_1

    .line 1224
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-nez p1, :cond_1

    .line 1225
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    add-int/lit8 p1, p1, -0x10

    goto :goto_1

    .line 1226
    :cond_1
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 p2, 0x42700000    # 60.0f

    cmpg-float p2, p1, p2

    if-lez p2, :cond_3

    if-eqz p3, :cond_2

    const/high16 p2, 0x42a00000    # 80.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    goto :goto_0

    .line 1229
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    goto :goto_1

    .line 1227
    :cond_3
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    add-int/lit8 p1, p1, -0x6

    .line 1231
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-eqz p2, :cond_8

    .line 1232
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_4

    .line 1233
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    goto :goto_3

    .line 1234
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_5

    int-to-long p2, p1

    cmp-long v0, v3, p2

    if-ltz v0, :cond_a

    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->skipFrameUpdate:Z

    if-nez p2, :cond_a

    .line 1235
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->vibrationPattern:Ljava/util/HashMap;

    if-eqz p2, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentParentView:Landroid/view/View;

    if-eqz p3, :cond_7

    iget-boolean p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    if-eqz p3, :cond_7

    .line 1236
    iget p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_7

    .line 1238
    iget-object p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentParentView:Landroid/view/View;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    const/4 p2, 0x3

    :goto_2
    const/4 v0, 0x2

    invoke-virtual {p3, p2, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    :cond_7
    int-to-long v5, p1

    const/4 v7, 0x0

    move-object v0, p0

    .line 1241
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(JJJZ)V

    goto :goto_3

    .line 1243
    :cond_8
    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz p2, :cond_a

    int-to-long p2, p1

    cmp-long v0, v3, p2

    if-ltz v0, :cond_a

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_a

    int-to-long v5, p1

    const/4 v7, 0x1

    move-object v0, p0

    .line 1244
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(JJJZ)V

    :cond_a
    :goto_3
    return-void
.end method
