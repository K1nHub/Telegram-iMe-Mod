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
.method public static synthetic $r8$lambda$0uL-5KzD5M4TQIHd_5q__bUANQU(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$checkCache$8(Ljava/lang/Runnable;)V

    return-void
.end method

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

.method public static synthetic $r8$lambda$dG0EL7t2HH-ov4g9cSyklnuZOuc(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->lambda$checkCache$7(Ljava/lang/Runnable;)V

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

    .line 573
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIZ[I)V
    .locals 6

    .line 683
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

    .line 308
    new-instance v5, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1334
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    .line 684
    iput p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    .line 685
    iput p4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 686
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    const/4 p3, 0x0

    .line 687
    invoke-static {p3, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    .line 688
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 691
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 692
    invoke-static {p1, p2, v0, p6}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const/16 p1, 0x10

    const/high16 p2, 0x447a0000    # 1000.0f

    .line 693
    aget p3, v0, v3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-int p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    if-eqz p5, :cond_1

    .line 695
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/File;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v3, p4

    move/from16 v0, p5

    .line 473
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/4 v1, 0x3

    new-array v15, v1, [I

    .line 67
    iput-object v15, v7, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, -0x1

    .line 69
    iput v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    const/4 v14, 0x0

    .line 76
    iput-boolean v14, v7, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    const/4 v13, 0x1

    .line 77
    iput-boolean v13, v7, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    .line 88
    iput v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    .line 90
    iput v13, v7, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 91
    iput v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 116
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 117
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 120
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    const/4 v2, 0x2

    new-array v4, v2, [Landroid/graphics/RectF;

    .line 121
    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    new-array v4, v2, [Landroid/graphics/Paint;

    .line 122
    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 154
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$1;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable$1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 166
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$2;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable$2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$3;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable$3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 204
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$4;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable$4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    .line 308
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1334
    iput v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    move/from16 v4, p2

    .line 474
    iput v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    move/from16 v5, p3

    .line 475
    iput v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 476
    iput-boolean v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 477
    :goto_0
    iput-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v3, :cond_1

    .line 478
    iget-boolean v1, v3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->fallback:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->fallbackCache:Z

    if-eqz v3, :cond_2

    .line 479
    iget-boolean v1, v3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->firstFrame:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    .line 480
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 482
    iput-object v8, v7, Lorg/telegram/ui/Components/RLottieDrawable;->file:Ljava/io/File;

    .line 483
    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v1, :cond_3

    sget-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v1, :cond_3

    .line 484
    invoke-static {}, Lorg/telegram/ui/Components/RLottieDrawable;->createCacheGenQueue()V

    .line 486
    :cond_3
    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v1, :cond_5

    .line 487
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    const/4 v9, 0x0

    invoke-direct {v1, v7, v9}, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Components/RLottieDrawable$1;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    .line 488
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    .line 489
    iget-object v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iput-object v9, v1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->json:Ljava/lang/String;

    move-object/from16 v2, p6

    .line 490
    iput-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    move/from16 v6, p7

    .line 491
    iput v6, v1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    .line 492
    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    if-eqz v1, :cond_4

    return-void

    .line 495
    :cond_4
    new-instance v10, Lorg/telegram/messenger/utils/BitmapsCache;

    xor-int/lit8 v6, v0, 0x1

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/utils/BitmapsCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V

    iput-object v10, v7, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    .line 496
    invoke-direct {v7, v8, v9, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->parseLottieMetadata(Ljava/io/File;Ljava/lang/String;[I)V

    move-object v0, v15

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v2, p6

    move/from16 v6, p7

    .line 498
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-boolean v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    move/from16 v11, p2

    move/from16 v12, p3

    const/4 v3, 0x1

    move-object v13, v15

    const/4 v4, 0x0

    move v14, v0

    move-object v0, v15

    move-object/from16 v15, p6

    move/from16 v16, v1

    move/from16 v17, p7

    invoke-static/range {v9 .. v17}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v1

    iput-wide v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 499
    iget-wide v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v5, 0x0

    cmp-long v9, v1, v5

    if-nez v9, :cond_6

    .line 500
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 504
    :cond_6
    :goto_3
    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v1, :cond_7

    aget v1, v0, v3

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_7

    .line 505
    iput-boolean v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    .line 507
    :cond_7
    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x21

    goto :goto_4

    :cond_8
    const/16 v1, 0x10

    :goto_4
    const/high16 v2, 0x447a0000    # 1000.0f

    aget v0, v0, v3

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

    move-object/from16 v9, p2

    move-object/from16 v3, p5

    move/from16 v0, p6

    .line 510
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    const/4 v1, 0x3

    new-array v15, v1, [I

    .line 67
    iput-object v15, v7, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, -0x1

    .line 69
    iput v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    const/4 v14, 0x0

    .line 76
    iput-boolean v14, v7, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    const/4 v13, 0x1

    .line 77
    iput-boolean v13, v7, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    .line 88
    iput v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    .line 90
    iput v13, v7, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 91
    iput v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 116
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 117
    iput v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 120
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v7, Lorg/telegram/ui/Components/RLottieDrawable;->dstRect:Landroid/graphics/RectF;

    const/4 v2, 0x2

    new-array v4, v2, [Landroid/graphics/RectF;

    .line 121
    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    new-array v4, v2, [Landroid/graphics/Paint;

    .line 122
    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    .line 154
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$1;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable$1;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableNoFrame:Ljava/lang/Runnable;

    .line 166
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$2;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable$2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$3;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable$3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableGenerateCache:Ljava/lang/Runnable;

    .line 204
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$4;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable$4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->uiRunnableCacheFinished:Ljava/lang/Runnable;

    .line 308
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1334
    iput v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    move/from16 v4, p3

    .line 511
    iput v4, v7, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    move/from16 v5, p4

    .line 512
    iput v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 513
    iput-boolean v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 514
    :goto_0
    iput-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v3, :cond_1

    .line 515
    iget-boolean v1, v3, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->firstFrame:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    .line 516
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 517
    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v1, :cond_2

    sget-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v1, :cond_2

    .line 518
    invoke-static {}, Lorg/telegram/ui/Components/RLottieDrawable;->createCacheGenQueue()V

    .line 520
    :cond_2
    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    if-eqz v1, :cond_4

    .line 521
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Lorg/telegram/ui/Components/RLottieDrawable$1;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    .line 522
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->file:Ljava/io/File;

    .line 523
    iget-object v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iput-object v9, v1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->json:Ljava/lang/String;

    move-object/from16 v2, p7

    .line 524
    iput-object v2, v1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    move/from16 v6, p8

    .line 525
    iput v6, v1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    .line 526
    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->createdForFirstFrame:Z

    if-eqz v1, :cond_3

    return-void

    .line 529
    :cond_3
    new-instance v8, Lorg/telegram/messenger/utils/BitmapsCache;

    xor-int/lit8 v6, v0, 0x1

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p5

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/utils/BitmapsCache;-><init>(Ljava/io/File;Lorg/telegram/messenger/utils/BitmapsCache$Cacheable;Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;IIZ)V

    iput-object v8, v7, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    move-object/from16 v0, p1

    .line 530
    invoke-direct {v7, v0, v9, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->parseLottieMetadata(Ljava/io/File;Ljava/lang/String;[I)V

    move-object v2, v15

    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v2, p7

    move/from16 v6, p8

    .line 532
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    iget-boolean v3, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object v12, v15

    const/4 v4, 0x1

    move v13, v1

    const/4 v1, 0x0

    move-object/from16 v14, p7

    move-object v2, v15

    move v15, v3

    move/from16 v16, p8

    invoke-static/range {v8 .. v16}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide v5

    iput-wide v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 533
    iget-wide v5, v7, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const-wide/16 v8, 0x0

    cmp-long v3, v5, v8

    if-nez v3, :cond_5

    .line 534
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 538
    :cond_5
    :goto_2
    iget-boolean v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v0, :cond_6

    aget v0, v2, v4

    const/16 v3, 0x3c

    if-ge v0, v3, :cond_6

    .line 539
    iput-boolean v1, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    .line 541
    :cond_6
    iget-boolean v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x21

    goto :goto_3

    :cond_7
    const/16 v0, 0x10

    :goto_3
    const/high16 v1, 0x447a0000    # 1000.0f

    aget v2, v2, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 5

    .line 576
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

    .line 308
    new-instance v4, Lorg/telegram/ui/Components/RLottieDrawable$5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/RLottieDrawable$5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    .line 1334
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    .line 577
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    .line 578
    iput p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    .line 579
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const-string/jumbo p2, "\ud83c\udfb2"

    .line 581
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 582
    sget p1, Lorg/telegram/messenger/R$raw;->diceloop:I

    invoke-static {p3, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3c

    .line 583
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->diceSwitchFramesCount:I

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "\ud83c\udfaf"

    .line 584
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 585
    sget p1, Lorg/telegram/messenger/R$raw;->dartloop:I

    invoke-static {p3, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p3

    .line 589
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 590
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v1, 0x10

    if-eqz p2, :cond_2

    .line 591
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    return-void

    :cond_2
    const-string p2, "dice"

    .line 594
    invoke-static {p1, p2, v0, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    const/high16 p1, 0x447a0000    # 1000.0f

    .line 595
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

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 600
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 601
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

.method private synthetic lambda$checkCache$7(Ljava/lang/Runnable;)V
    .locals 0

    .line 1406
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1407
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1408
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    .line 1409
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkCache$8(Ljava/lang/Runnable;)V
    .locals 1

    .line 1398
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_0

    .line 1400
    invoke-virtual {v0}, Lorg/telegram/messenger/utils/BitmapsCache;->createCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1403
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1405
    :cond_0
    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$recycleNativePtr$0(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 263
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_0
    cmp-long p0, p2, v0

    if-eqz p0, :cond_1

    .line 266
    invoke-static {p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$recycleNativePtr$1(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 272
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_0
    cmp-long p0, p2, v0

    if-eqz p0, :cond_1

    .line 275
    invoke-static {p2, p3}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setBaseDice$2()V
    .locals 4

    const/4 v0, 0x0

    .line 625
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    .line 626
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    return-void

    :cond_0
    const/16 v0, 0x10

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 630
    iget-object v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v1, v3, v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    .line 631
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 632
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private synthetic lambda$setBaseDice$3(Ljava/lang/String;)V
    .locals 3

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const-string v1, "dice"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 624
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setDiceNumber$4()V
    .locals 1

    const/4 v0, 0x0

    .line 659
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 660
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 661
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setDiceNumber$5([I)V
    .locals 3

    const/4 v0, 0x0

    .line 669
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 670
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    return-void

    .line 674
    :cond_0
    aget v0, p1, v0

    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondFramesCount:I

    const/16 v0, 0x10

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 675
    aget p1, p1, v2

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    .line 676
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 677
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private synthetic lambda$setDiceNumber$6(Ljava/lang/String;)V
    .locals 3

    .line 657
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    if-eqz v0, :cond_0

    .line 658
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "dice"

    .line 667
    invoke-static {p1, v2, v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->createWithJson(Ljava/lang/String;Ljava/lang/String;[I[I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    .line 668
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;[I)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseLottieMetadata(Ljava/io/File;Ljava/lang/String;[I)V
    .locals 10

    .line 545
    const-class v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;

    sget-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    .line 546
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->gson:Lcom/google/gson/Gson;

    :cond_0
    if-eqz p1, :cond_1

    .line 551
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 552
    sget-object v2, Lorg/telegram/ui/Components/RLottieDrawable;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 554
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 559
    :cond_1
    :try_start_2
    sget-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;

    :catch_0
    :goto_0
    const/4 v1, 0x0

    .line 561
    iget v2, v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;->op:F

    float-to-int v2, v2

    aput v2, p3, v1

    const/4 v1, 0x1

    .line 562
    iget v0, v0, Lorg/telegram/ui/Components/RLottieDrawable$LottieMetadata;->fr:F

    float-to-int v0, v0

    aput v0, p3, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 564
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 565
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    const/4 v6, 0x0

    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->args:Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;

    iget-object v7, p1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->colorReplacement:[I

    iget-boolean v8, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    iget v9, p1, Lorg/telegram/ui/Components/RLottieDrawable$NativePtrArgs;->fitzModifier:I

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/RLottieDrawable;->create(Ljava/lang/String;Ljava/lang/String;II[IZ[IZI)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_2

    .line 567
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static readRes(Ljava/io/File;I)Ljava/lang/String;
    .locals 7

    .line 701
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->readBufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 704
    sget-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->readBufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 709
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 711
    :cond_1
    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 714
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

    .line 717
    sget-object v3, Lorg/telegram/ui/Components/RLottieDrawable;->bufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    const/4 v3, 0x0

    .line 719
    :cond_3
    :goto_1
    array-length v4, p0

    invoke-virtual {p1, p0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_5

    .line 720
    array-length v5, v0

    add-int v6, v3, v4

    if-ge v5, v6, :cond_4

    .line 721
    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 722
    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 724
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->readBufferLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v0, v5

    :cond_4
    if-lez v4, :cond_3

    .line 727
    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v3, v6

    goto :goto_1

    .line 736
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 743
    :catchall_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object p0

    :catchall_1
    move-object p1, v1

    :catchall_2
    if-eqz p1, :cond_6

    .line 736
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

    .line 254
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 255
    iget-wide v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    const-wide/16 v4, 0x0

    .line 257
    iput-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nativePtr:J

    .line 258
    iput-wide v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondNativePtr:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 261
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda0;-><init>(JJ)V

    invoke-static {p1}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 270
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

    .line 951
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz v0, :cond_1

    .line 952
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 953
    iput v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 955
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 956
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 957
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 958
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 961
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method private setCurrentFrame(JJJZ)V
    .locals 5

    .line 1096
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1097
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 1098
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1099
    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1100
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    sub-int/2addr v3, v2

    iget v4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->finishFrame:I

    if-lt v3, v4, :cond_1

    .line 1101
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1103
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1105
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    .line 1108
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    if-nez v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    if-ne v1, v2, :cond_3

    .line 1109
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 1111
    :cond_3
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 1112
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1113
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    goto :goto_0

    .line 1114
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    if-eqz v0, :cond_5

    .line 1115
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    .line 1117
    :cond_5
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 1118
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    .line 1119
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_6

    .line 1120
    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->lastFrameTime:J

    goto :goto_1

    :cond_6
    const-wide/16 v2, 0x10

    sub-long/2addr p3, p5

    .line 1122
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->lastFrameTime:J

    :goto_1
    if-eqz p7, :cond_7

    .line 1124
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    if-eqz p1, :cond_7

    .line 1125
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 1126
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 1128
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    if-nez p1, :cond_8

    .line 1129
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_8

    iget p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    iget p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->finishFrame:I

    if-lt p2, p3, :cond_8

    .line 1130
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    .line 1132
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1136
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

    .line 778
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginApplyLayerColors()V
    .locals 1

    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    return-void
.end method

.method public canLoadFrames()Z
    .locals 7

    .line 1370
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->precache:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1371
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

    .line 1373
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

.method public checkCache(Ljava/lang/Runnable;)V
    .locals 2

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-nez v0, :cond_0

    .line 1386
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1390
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    .line 1391
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-nez v0, :cond_1

    .line 1392
    invoke-static {}, Lorg/telegram/ui/Components/RLottieDrawable;->createCacheGenQueue()V

    .line 1394
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 1395
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->incrementTaskCounter()V

    .line 1396
    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public checkCacheCancel()V
    .locals 5

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz v0, :cond_6

    sget-object v0, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_2

    .line 793
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

    .line 794
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_3

    if-eqz v0, :cond_2

    .line 795
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

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 801
    sget-object v1, Lorg/telegram/ui/Components/RLottieDrawable;->lottieCacheGenerateQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 802
    invoke-static {}, Lorg/telegram/messenger/utils/BitmapsCache;->decrementTaskCounter()V

    const/4 v0, 0x0

    .line 803
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    .line 805
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    .line 806
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

    .line 923
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 926
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyingLayerColors:Z

    .line 927
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz v1, :cond_2

    .line 928
    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 929
    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 931
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 932
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 933
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 934
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 937
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
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

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

    .line 1141
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V

    return-void
.end method

.method public drawFrame(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 1336
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->rawBackgroundBitmapFrame:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1337
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1338
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1340
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

    .line 1342
    :cond_2
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1343
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

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->dstRectBackground:[Landroid/graphics/RectF;

    aget-object v1, v0, p8

    if-nez v1, :cond_0

    .line 1146
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, p8

    .line 1147
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    aput-object v1, v0, p8

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object v0, v0, p8

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1151
    iget-object p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p6, p6, p8

    invoke-virtual {p6, p7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1152
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

    .line 1153
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V

    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Paint;ZJI)V
    .locals 4

    .line 1161
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->canLoadFrames()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 1165
    invoke-virtual {p0, p4, p5, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    :cond_1
    if-eqz p3, :cond_2

    .line 1168
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

    .line 1169
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundPaint:[Landroid/graphics/Paint;

    aget-object p2, p2, p6

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    .line 1171
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p5

    if-nez p5, :cond_5

    return-void

    .line 1175
    :cond_5
    iget-boolean p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    if-nez p5, :cond_d

    iget-object p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz p5, :cond_d

    const/4 p5, 0x1

    if-nez p3, :cond_9

    .line 1179
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p6

    invoke-virtual {p4, p6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1180
    iget-boolean p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyTransformation:Z

    if-eqz p6, :cond_8

    .line 1181
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p6

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    int-to-float v1, v1

    div-float/2addr p6, v1

    iput p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 1182
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p6

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    int-to-float v1, v1

    div-float/2addr p6, v1

    iput p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 1183
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyTransformation:Z

    .line 1184
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

    .line 1186
    :cond_8
    iget p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleX:F

    .line 1187
    iget p6, p0, Lorg/telegram/ui/Components/RLottieDrawable;->scaleY:F

    .line 1188
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->needScale:Z

    goto :goto_2

    .line 1190
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p6

    iget v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    int-to-float v1, v1

    div-float/2addr p6, v1

    .line 1191
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1192
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

    .line 1195
    iget-object p5, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    iget p6, p4, Landroid/graphics/RectF;->left:F

    iget p4, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p5, p6, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 1197
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1198
    iget v0, p4, Landroid/graphics/RectF;->left:F

    iget p4, p4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1199
    invoke-virtual {p1, p5, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1200
    iget-object p4, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    const/4 p5, 0x0

    invoke-virtual {p1, p4, p5, p5, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1204
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-eqz p1, :cond_d

    if-nez p3, :cond_d

    .line 1205
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

    .line 869
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 872
    throw v0
.end method

.method public getAnimatedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 1271
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFrame()I
    .locals 1

    .line 747
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    return v0
.end method

.method public getCustomEndFrame()I
    .locals 1

    .line 751
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    return v0
.end method

.method public getDuration()J
    .locals 3

    .line 755
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

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1081
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1086
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 1248
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->height:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 1253
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->width:I

    return v0
.end method

.method public getNextFrame(Landroid/graphics/Bitmap;)I
    .locals 10

    .line 1313
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1316
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const/4 v9, 0x2

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    .line 1318
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

    .line 1321
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1323
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1325
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getNextFrame(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1

    .line 1327
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    add-int/2addr p1, v9

    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    .line 1328
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

    .line 640
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

    .line 1278
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

    .line 811
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

    .line 915
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

    .line 815
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 816
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 818
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 819
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 821
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 822
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public isGeneratingCache()Z
    .locals 1

    .line 1286
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

    .line 989
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

    .line 1294
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

    .line 1076
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1091
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 1092
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->applyTransformation:Z

    return-void
.end method

.method public prepareForGenerateCache()V
    .locals 10

    .line 1301
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

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 1303
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public recycle(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 834
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    const/4 v0, 0x1

    .line 835
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRecycled:Z

    .line 836
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkRunningTasks()V

    .line 837
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->cacheGenerateTask:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    if-nez v1, :cond_2

    .line 840
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleNativePtr(Z)V

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    if-eqz p1, :cond_1

    .line 842
    invoke-virtual {p1}, Lorg/telegram/messenger/utils/BitmapsCache;->recycle()V

    const/4 p1, 0x0

    .line 843
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->bitmapsCache:Lorg/telegram/messenger/utils/BitmapsCache;

    .line 845
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->recycleResources()V

    goto :goto_1

    .line 847
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyWhenDone:Z

    goto :goto_1

    .line 838
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->destroyAfterLoading:Z

    :goto_1
    return-void
.end method

.method protected recycleResources()V
    .locals 2

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 287
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 288
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 289
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 290
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmaps(Ljava/util/List;)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 293
    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    .line 295
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    return-void
.end method

.method public releaseForGenerateCache()V
    .locals 5

    .line 1348
    iget-wide v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1349
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->destroy(J)V

    .line 1350
    iput-wide v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheNativePtr:J

    :cond_0
    return-void
.end method

.method public removeParentView(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->parentViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 786
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->checkCacheCancel()V

    return-void
.end method

.method public replaceColors([I)V
    .locals 0

    .line 941
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newReplaceColors:[I

    .line 942
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->requestRedrawColors()V

    return-void
.end method

.method public resetVibrationAfterRestart(Z)V
    .locals 0

    .line 1243
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->resetVibrationAfterRestart:Z

    return-void
.end method

.method public restart()Z
    .locals 1

    const/4 v0, 0x0

    .line 897
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->restart(Z)Z

    move-result v0

    return v0
.end method

.method public restart(Z)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 901
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    if-lt p1, v0, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    if-nez p1, :cond_1

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    if-gez p1, :cond_1

    return v1

    .line 904
    :cond_1
    iput v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatPlayCount:I

    .line 905
    iput v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    .line 906
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method protected scheduleNextGetFrame()Z
    .locals 4

    .line 965
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

    .line 968
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generatingCache:Z

    if-eqz v0, :cond_1

    return v1

    .line 971
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 972
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingColorUpdates:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 975
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newReplaceColors:[I

    if-eqz v0, :cond_3

    .line 976
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->pendingReplaceColors:[I

    const/4 v0, 0x0

    .line 977
    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newReplaceColors:[I

    .line 979
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 980
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

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    iget-object v3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v0, v1}, Lorg/telegram/messenger/DispatchQueuePoolBackground;->execute(Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 983
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

    .line 827
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->decodeSingleFrame:Z

    if-eqz p1, :cond_0

    .line 829
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    :cond_0
    return-void
.end method

.method public setAllowVibration(Z)V
    .locals 0

    .line 1239
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    return-void
.end method

.method public setAutoRepeat(I)V
    .locals 2

    .line 852
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-eqz v0, :cond_0

    return-void

    .line 855
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeat:I

    return-void
.end method

.method public setAutoRepeatCount(I)V
    .locals 0

    .line 859
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->autoRepeatCount:I

    return-void
.end method

.method public setAutoRepeatTimeout(J)V
    .locals 0

    return-void
.end method

.method public setBaseDice(Ljava/io/File;)Z
    .locals 6

    .line 614
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

    .line 617
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    .line 618
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 621
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadingInBackground:Z

    .line 622
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return v2
.end method

.method public setCurrentFrame(I)V
    .locals 1

    const/4 v0, 0x1

    .line 998
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    return-void
.end method

.method public setCurrentFrame(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1002
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    return-void
.end method

.method public setCurrentFrame(IZZ)V
    .locals 3

    if-ltz p1, :cond_8

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gt p1, v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    if-ne v0, p1, :cond_0

    if-nez p3, :cond_0

    goto :goto_2

    .line 1009
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    .line 1010
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextFrameIsLast:Z

    .line 1011
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->singleFrameDecoded:Z

    .line 1012
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateOnProgressSet:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1013
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    .line 1014
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1015
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_3

    .line 1018
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 1019
    iget-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 1020
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    .line 1021
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    .line 1022
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->waitingForNextTask:Z

    :cond_3
    if-nez p2, :cond_4

    .line 1025
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez v1, :cond_4

    .line 1026
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    :cond_4
    if-eqz p3, :cond_5

    .line 1029
    iget-boolean p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-nez p3, :cond_5

    .line 1030
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    .line 1032
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    move-result p3

    if-eqz p3, :cond_6

    if-nez p2, :cond_7

    .line 1035
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1037
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1039
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->frameWaitSync:Ljava/util/concurrent/CountDownLatch;

    goto :goto_1

    .line 1042
    :cond_6
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->forceFrameRedraw:Z

    .line 1044
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    :cond_8
    :goto_2
    return-void
.end method

.method public setCurrentParentView(Landroid/view/View;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentParentView:Landroid/view/View;

    return-void
.end method

.method public setCustomEndFrame(I)Z
    .locals 2

    .line 763
    iget v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->customEndFrame:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->metaData:[I

    aget v0, v0, v1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 766
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

    .line 644
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

    .line 647
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p1

    .line 648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 651
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-nez p2, :cond_2

    const/4 p2, 0x2

    .line 652
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isDice:I

    .line 653
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->setLastFrame:Z

    .line 655
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->secondLoadingInBackground:Z

    .line 656
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return v2
.end method

.method public setGeneratingFrame(I)V
    .locals 0

    .line 1308
    iput p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->generateCacheFramePointer:I

    return-void
.end method

.method public setInvalidateOnProgressSet(Z)V
    .locals 0

    .line 1282
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateOnProgressSet:Z

    return-void
.end method

.method public setLayerColor(Ljava/lang/String;I)V
    .locals 1

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->newColorUpdates:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-direct {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->requestRedrawColors()V

    return-void
.end method

.method public setMasterParent(Landroid/view/View;)V
    .locals 0

    .line 1366
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->masterParent:Landroid/view/View;

    return-void
.end method

.method public setOnAnimationEndListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onAnimationEndListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnFinishCallback(Ljava/lang/Runnable;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    .line 301
    iput p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->finishFrame:I

    goto :goto_0

    .line 302
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 303
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->onFinishCallback:Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayInDirectionOfCustomEndFrame(Z)V
    .locals 0

    .line 759
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->playInDirectionOfCustomEndFrame:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1057
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

    .line 1066
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

    .line 1052
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

    .line 1053
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

    .line 911
    iput-object p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->vibrationPattern:Ljava/util/HashMap;

    return-void
.end method

.method public start()V
    .locals 2

    .line 882
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

    .line 885
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    .line 886
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateOnProgressSet:Z

    if-eqz v1, :cond_2

    .line 887
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isInvalid:Z

    .line 888
    iget-object v1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->loadFrameTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 889
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->doNotRemoveInvalidOnFrameReady:Z

    .line 892
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    .line 893
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->invalidateInternal()V

    :cond_3
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 994
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    return-void
.end method

.method public updateCurrentFrame(JZ)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    move-wide v1, p1

    .line 1212
    iget-wide p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->lastFrameTime:J

    sub-long v3, v1, p1

    if-eqz p3, :cond_1

    .line 1214
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->shouldLimitFps:Z

    if-nez p1, :cond_1

    .line 1215
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    add-int/lit8 p1, p1, -0x10

    goto :goto_1

    .line 1216
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

    .line 1219
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    goto :goto_1

    .line 1217
    :cond_3
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;->timeBetweenFrames:I

    add-int/lit8 p1, p1, -0x6

    .line 1221
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning:Z

    if-eqz p2, :cond_8

    .line 1222
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->nextRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_4

    .line 1223
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->scheduleNextGetFrame()Z

    goto :goto_3

    .line 1224
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

    .line 1225
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/RLottieDrawable;->vibrationPattern:Ljava/util/HashMap;

    if-eqz p2, :cond_7

    iget-object p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentParentView:Landroid/view/View;

    if-eqz p3, :cond_7

    iget-boolean p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->allowVibration:Z

    if-eqz p3, :cond_7

    .line 1226
    iget p3, p0, Lorg/telegram/ui/Components/RLottieDrawable;->currentFrame:I

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_7

    .line 1228
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

    .line 1231
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(JJJZ)V

    goto :goto_3

    .line 1233
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

    .line 1234
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(JJJZ)V

    :cond_a
    :goto_3
    return-void
.end method
