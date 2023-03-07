.class public Lorg/telegram/ui/Components/MotionBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MotionBackgroundDrawable.java"


# static fields
.field private static errorWhileGenerateLegacyBitmap:Z

.field private static legacyBitmapScale:F

.field private static final useLegacyBitmap:Z

.field private static final useSoftLight:Z


# instance fields
.field private alpha:I

.field private animationProgressProvider:Lorg/telegram/messenger/GenericProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/GenericProvider<",
            "Lorg/telegram/ui/Components/MotionBackgroundDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundAlpha:F

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private colors:[I

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private disableGradientShaderScaling:Z

.field private fastAnimation:Z

.field private gradientCanvas:Landroid/graphics/Canvas;

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private gradientFromBitmap:Landroid/graphics/Bitmap;

.field private gradientFromCanvas:Landroid/graphics/Canvas;

.field private gradientShader:Landroid/graphics/BitmapShader;

.field private gradientToBitmap:[Landroid/graphics/Bitmap;

.field private ignoreInterpolator:Z

.field private indeterminateSpeedScale:F

.field private intensity:I

.field private final interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

.field private invalidateLegacy:Z

.field private isIndeterminateAnimation:Z

.field private isPreview:Z

.field private lastUpdateTime:J

.field private legacyBitmap:Landroid/graphics/Bitmap;

.field private legacyBitmap2:Landroid/graphics/Bitmap;

.field private legacyBitmapColor:I

.field private legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

.field private legacyCanvas:Landroid/graphics/Canvas;

.field private legacyCanvas2:Landroid/graphics/Canvas;

.field private matrix:Landroid/graphics/Matrix;

.field private overrideBitmapPaint:Landroid/graphics/Paint;

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private paint3:Landroid/graphics/Paint;

.field private parentView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private patternAlpha:F

.field private patternBitmap:Landroid/graphics/Bitmap;

.field private patternBounds:Landroid/graphics/Rect;

.field private patternColorFilter:Landroid/graphics/ColorFilter;

.field private phase:I

.field public posAnimationProgress:F

.field private postInvalidateParent:Z

.field private rect:Landroid/graphics/RectF;

.field private rotatingPreview:Z

.field private rotationBack:Z

.field private roundRadius:I

.field private translationY:I

.field private updateAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$YNHeImVoQc_7vod2uQxR4yYFtTU(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-ge v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_1
    sput-boolean v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    .line 44
    sput-boolean v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    const v0, 0x3f333333    # 0.7f

    .line 45
    sput v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 121
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    .line 58
    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 67
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Bitmap;

    .line 70
    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    const/16 v1, 0x64

    .line 74
    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    .line 92
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 101
    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    .line 109
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    .line 110
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    const/16 v1, 0xff

    .line 111
    iput v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    .line 116
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    .line 122
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0xbd92a9
        -0x81b75
        -0x785d7c
        -0x20936
    .end array-data
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 17

    move-object/from16 v7, p0

    .line 130
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    iput-object v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    .line 58
    new-instance v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v9, 0x3fd51eb851eb851fL    # 0.33

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 67
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Bitmap;

    .line 70
    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    const/16 v1, 0x64

    .line 74
    iput v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    .line 92
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 101
    new-instance v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MotionBackgroundDrawable;)V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    .line 109
    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    .line 110
    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    const/16 v1, 0xff

    .line 111
    iput v1, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    .line 116
    iput v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    move/from16 v0, p6

    .line 131
    iput-boolean v0, v7, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 132
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    .line 133
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        -0xbd92a9
        -0x81b75
        -0x785d7c
        -0x20936
    .end array-data
.end method

.method public constructor <init>(IIIIZ)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 126
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>(IIIIIZ)V

    return-void
.end method

.method private createLegacyBitmap()V
    .locals 5

    .line 471
    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v0, :cond_4

    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    if-nez v0, :cond_4

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 473
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    if-lez v0, :cond_4

    if-lez v1, :cond_4

    .line 474
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 475
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 476
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 478
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 479
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 480
    iput-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    :cond_2
    const/4 v2, 0x1

    .line 483
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 484
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    .line 485
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 487
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 488
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 489
    iput-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    .line 491
    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 492
    sput-boolean v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_4
    :goto_0
    return-void
.end method

.method public static getPatternColor(IIII)I
    .locals 1

    .line 200
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isDark(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    sget-boolean p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    if-nez p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    .line 203
    :cond_1
    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    if-nez v0, :cond_3

    .line 204
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    invoke-static {p2, p0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    if-eqz p3, :cond_2

    .line 206
    invoke-static {p3, p0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    :cond_2
    const/4 p1, 0x1

    .line 208
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(IZ)I

    move-result p0

    const p1, 0xffffff

    and-int/2addr p0, p1

    const/high16 p1, 0x64000000

    or-int/2addr p0, p1

    return p0

    :cond_3
    const/high16 p0, -0x1000000

    return p0
.end method

.method private init()V
    .locals 10

    .line 138
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x3c

    const/16 v2, 0x50

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 140
    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    .line 144
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    .line 145
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromCanvas:Landroid/graphics/Canvas;

    .line 147
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    iget v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    .line 148
    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :cond_1
    return-void
.end method

.method private invalidateParent()V
    .locals 4

    .line 364
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->parentView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->parentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 368
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->postInvalidateParent:Z

    if-eqz v0, :cond_1

    .line 369
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->invalidateMotionBackground:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public static isDark(IIII)Z
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    if-eqz p2, :cond_0

    .line 180
    invoke-static {p0, p2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    :cond_0
    if-eqz p3, :cond_1

    .line 183
    invoke-static {p0, p3}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result p0

    .line 185
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, p2, p0}, Lorg/telegram/messenger/AndroidUtilities;->RGBtoHSB(III)[F

    move-result-object p0

    const/4 p1, 0x2

    .line 186
    aget p0, p0, p1

    const p1, 0x3e99999a    # 0.3f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 689
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 691
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    :goto_0
    int-to-float v3, v3

    .line 692
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 693
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 694
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 695
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    int-to-float v4, v4

    div-float v8, v6, v4

    int-to-float v5, v5

    div-float v9, v7, v5

    .line 696
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v4, v4, v8

    mul-float v5, v5, v8

    sub-float v8, v6, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v10, v7, v5

    div-float/2addr v10, v9

    .line 701
    iget-boolean v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v11, :cond_1

    .line 702
    iget v11, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v11

    add-float/2addr v8, v12

    .line 703
    iget v12, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v12

    add-float/2addr v10, v13

    .line 704
    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 706
    :cond_1
    iget v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    const/4 v13, 0x1

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x0

    const/4 v12, 0x0

    if-gez v11, :cond_c

    const/high16 v4, -0x1000000

    .line 707
    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v5, v5

    iget v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v5, v5, v11

    float-to-int v5, v5

    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 708
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_10

    .line 709
    sget-boolean v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v5, :cond_8

    .line 710
    sget-boolean v5, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    const/4 v8, 0x0

    if-eqz v5, :cond_5

    .line 711
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 712
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v2, v2

    div-float v5, v6, v2

    int-to-float v4, v4

    div-float v10, v7, v4

    .line 713
    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v2, v2, v5

    mul-float v4, v4, v5

    sub-float/2addr v6, v2

    div-float/2addr v6, v9

    sub-float/2addr v7, v4

    div-float/2addr v7, v9

    .line 718
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v6

    add-float/2addr v4, v7

    invoke-virtual {v5, v6, v7, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 720
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v4, 0x2

    aget v4, v2, v4

    aget v5, v2, v8

    aget v2, v2, v13

    invoke-static {v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    .line 721
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v5, 0x3

    aget v6, v4, v5

    if-eqz v6, :cond_2

    .line 722
    aget v4, v4, v5

    invoke-static {v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v2

    .line 724
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v4, :cond_3

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    if-eq v2, v4, :cond_4

    .line 725
    :cond_3
    iput v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    .line 726
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    .line 728
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 729
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v14

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 730
    invoke-virtual {v1, v15, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 731
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 732
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_10

    .line 733
    iget-boolean v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    if-eqz v4, :cond_6

    .line 734
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v15, v15, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 735
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 736
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 737
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v10, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v12, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 738
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 740
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 741
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v3, v3

    div-float v5, v6, v3

    int-to-float v4, v4

    div-float v10, v7, v4

    .line 742
    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v3, v3, v5

    mul-float v4, v4, v5

    sub-float/2addr v6, v3

    div-float/2addr v6, v9

    sub-float/2addr v7, v4

    div-float/2addr v7, v9

    .line 747
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v3, v6

    add-float/2addr v4, v7

    invoke-virtual {v5, v6, v7, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 749
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 750
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v14

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 751
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 752
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    sget v4, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 753
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v12, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 754
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 755
    iput-boolean v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    .line 758
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 759
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    iget v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_7

    .line 760
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v5, v5, v6

    sub-float v15, v3, v2

    mul-float v5, v5, v15

    float-to-int v2, v5

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 761
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 763
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v3, v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 764
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 765
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    .line 767
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 771
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_9

    .line 772
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    .line 774
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 775
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    add-float/2addr v10, v3

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 776
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 777
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    .line 778
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v15, v5, v4

    .line 779
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v15, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 780
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 782
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 783
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 784
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v4, v4

    div-float v8, v6, v4

    int-to-float v5, v5

    div-float v10, v7, v5

    .line 785
    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v4, v4, v8

    mul-float v5, v5, v8

    sub-float/2addr v6, v4

    div-float/2addr v6, v9

    sub-float/2addr v7, v5

    div-float/2addr v7, v9

    .line 790
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    float-to-int v5, v6

    int-to-float v5, v5

    add-float/2addr v7, v3

    float-to-int v3, v7

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 791
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->disableGradientShaderScaling:Z

    if-eqz v3, :cond_a

    const v3, 0x3fb33333    # 1.4f

    cmpl-float v3, v8, v3

    if-gtz v3, :cond_a

    const v3, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v8, v3

    if-gez v3, :cond_b

    .line 792
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 794
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 795
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 796
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v14

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 797
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 798
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 802
    :cond_c
    iget v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    if-eqz v11, :cond_d

    .line 803
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 804
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 805
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 806
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 807
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v15, v4, v3

    .line 808
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v15, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 809
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 811
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 812
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 814
    :cond_d
    invoke-virtual {v1, v15, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 815
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_e

    float-to-int v3, v8

    float-to-int v11, v10

    add-float/2addr v8, v4

    float-to-int v4, v8

    add-float/2addr v10, v5

    float-to-int v5, v10

    .line 816
    invoke-virtual {v2, v3, v11, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 817
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 818
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 820
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v4, v8

    add-float/2addr v5, v10

    invoke-virtual {v2, v8, v10, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 821
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->overrideBitmapPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_f

    goto :goto_1

    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 822
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v4, v3

    .line 823
    iget v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 824
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v12, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 825
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 829
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_10

    .line 830
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 831
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    div-float v4, v6, v2

    int-to-float v3, v3

    div-float v5, v7, v3

    .line 832
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v2, v2, v4

    mul-float v3, v3, v4

    sub-float/2addr v6, v2

    div-float/2addr v6, v9

    sub-float/2addr v7, v3

    div-float/2addr v7, v9

    .line 837
    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v6

    add-float/2addr v3, v7

    invoke-virtual {v4, v6, v7, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 839
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 840
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v14

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 841
    iget-object v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 844
    :cond_10
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 846
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 10

    .line 500
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 501
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 502
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    :goto_0
    int-to-float v1, v1

    .line 503
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 504
    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 505
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 506
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    int-to-float v2, v2

    div-float v6, v4, v2

    int-to-float v3, v3

    div-float v7, v5, v3

    .line 507
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v2, v2, v6

    mul-float v3, v3, v6

    sub-float/2addr v4, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 512
    iget-boolean v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v6, :cond_1

    .line 513
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v6

    add-float/2addr v4, v7

    .line 514
    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v7

    add-float/2addr v5, v8

    .line 515
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 517
    :cond_1
    iget v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v6, :cond_2

    const/high16 v0, -0x1000000

    .line 518
    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_2

    .line 520
    :cond_2
    iget v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    if-eqz v6, :cond_3

    .line 521
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 522
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 523
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 524
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 525
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v3, v1

    .line 526
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 527
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 529
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 531
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v2, v0

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 532
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 533
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 535
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4

    float-to-int v1, v4

    float-to-int v6, v5

    add-float/2addr v4, v2

    float-to-int v2, v4

    add-float/2addr v5, v3

    float-to-int v3, v5

    .line 537
    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 541
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, v4

    add-float/2addr v3, v5

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->overrideBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 543
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v2, v1

    .line 544
    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 545
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 546
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 550
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    .line 552
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public drawPattern(Landroid/graphics/Canvas;)V
    .locals 14

    .line 555
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 556
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 557
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    :goto_0
    int-to-float v1, v1

    .line 558
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 559
    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 560
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 561
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    int-to-float v2, v2

    div-float v6, v4, v2

    int-to-float v3, v3

    div-float v7, v5, v3

    .line 562
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v2, v2, v6

    mul-float v3, v3, v6

    sub-float v2, v4, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float v3, v5, v3

    div-float/2addr v3, v6

    .line 567
    iget-boolean v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    if-eqz v7, :cond_1

    .line 568
    iget v7, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v7

    add-float/2addr v2, v8

    .line 569
    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v8

    add-float/2addr v3, v9

    .line 570
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 572
    :cond_1
    iget v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    const/4 v8, 0x1

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v10, 0x0

    if-gez v7, :cond_c

    .line 573
    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_d

    .line 574
    sget-boolean v11, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v11, :cond_8

    .line 575
    sget-boolean v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    const/4 v3, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    .line 576
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 577
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v0, v0

    div-float v7, v4, v0

    int-to-float v2, v2

    div-float v12, v5, v2

    .line 578
    invoke-static {v7, v12}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v0, v0, v7

    mul-float v2, v2, v7

    sub-float/2addr v4, v0

    div-float/2addr v4, v6

    sub-float/2addr v5, v2

    div-float/2addr v5, v6

    .line 583
    iget-object v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v0, v4

    add-float/2addr v2, v5

    invoke-virtual {v6, v4, v5, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v2, 0x2

    aget v2, v0, v2

    aget v3, v0, v3

    aget v0, v0, v8

    invoke-static {v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    .line 586
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    if-eqz v4, :cond_2

    .line 587
    aget v2, v2, v3

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v0

    .line 589
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    if-eq v0, v2, :cond_4

    .line 590
    :cond_3
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColor:I

    .line 591
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    .line 593
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 595
    invoke-virtual {p1, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 597
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d

    .line 598
    iget-boolean v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    if-eqz v2, :cond_6

    .line 599
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v11, v11, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 600
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 601
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 602
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    iget-object v11, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v13, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7, v10, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 603
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 605
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 606
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v1, v1

    div-float v7, v4, v1

    int-to-float v2, v2

    div-float v11, v5, v2

    .line 607
    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v1, v1, v7

    mul-float v2, v2, v7

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    sub-float/2addr v5, v2

    div-float/2addr v5, v6

    .line 612
    iget-object v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v1, v4

    add-float/2addr v2, v5

    invoke-virtual {v6, v4, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 614
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 615
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 616
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 617
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    sget v2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmapScale:F

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 618
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v10, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 619
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 620
    iput-boolean v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    .line 623
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v1, v0, v12

    if-eqz v1, :cond_7

    .line 625
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v2, v2, v3

    sub-float/2addr v12, v0

    mul-float v2, v2, v12

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 628
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    .line 632
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 636
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    if-nez v7, :cond_9

    .line 637
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    .line 639
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 640
    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    add-float/2addr v3, v1

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 641
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 642
    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    .line 643
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v12, v2

    .line 644
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v12, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 645
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 647
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 648
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 649
    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v2, v2

    div-float v7, v4, v2

    int-to-float v3, v3

    div-float v11, v5, v3

    .line 650
    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v2, v2, v7

    mul-float v3, v3, v7

    sub-float/2addr v4, v2

    div-float/2addr v4, v6

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 655
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    float-to-int v3, v4

    int-to-float v3, v3

    add-float/2addr v5, v1

    float-to-int v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 656
    iget-boolean v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->disableGradientShaderScaling:Z

    if-eqz v1, :cond_a

    const v1, 0x3fb33333    # 1.4f

    cmpl-float v1, v7, v1

    if-gtz v1, :cond_a

    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v7, v1

    if-gez v1, :cond_b

    .line 657
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 659
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 660
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v9

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 662
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 667
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 668
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 669
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v0, v0

    div-float v2, v4, v0

    int-to-float v1, v1

    div-float v3, v5, v1

    .line 670
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v0, v0, v2

    mul-float v1, v1, v2

    sub-float/2addr v4, v0

    div-float/2addr v4, v6

    sub-float/2addr v5, v1

    div-float/2addr v5, v6

    .line 675
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    add-float/2addr v0, v4

    add-float/2addr v1, v5

    invoke-virtual {v2, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 682
    :cond_d
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 684
    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public generateNextGradient()V
    .locals 12

    .line 278
    sget-boolean v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 280
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 281
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    .line 282
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 283
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 285
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    .line 286
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas2:Landroid/graphics/Canvas;

    .line 290
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyCanvas2:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 293
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 295
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->legacyBitmap2:Landroid/graphics/Bitmap;

    .line 300
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    iget v4, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    :cond_4
    const/4 v0, -0x1

    :goto_3
    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    add-int/lit8 v1, v0, 0x1

    int-to-float v2, v1

    const/high16 v3, 0x40400000    # 3.0f

    div-float v7, v2, v3

    if-gez v0, :cond_5

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    aget-object v0, v2, v0

    :goto_4
    move-object v4, v0

    const/4 v5, 0x1

    iget v6, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    invoke-static/range {v4 .. v11}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    move v0, v1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapShader()Landroid/graphics/BitmapShader;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    return-object v0
.end method

.method public getIntensity()I
    .locals 1

    .line 174
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 393
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 385
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPatternBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPatternColor()I
    .locals 5

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v0

    return v0
.end method

.method public getPhase()I
    .locals 1

    .line 220
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    return v0
.end method

.method public getPosAnimationProgress()F
    .locals 1

    .line 248
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    return v0
.end method

.method public hasPattern()Z
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndeterminateAnimation()Z
    .locals 1

    .line 1033
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    return v0
.end method

.method public isOneColor()Z
    .locals 5

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    if-ne v2, v4, :cond_0

    aget v2, v0, v1

    const/4 v4, 0x2

    aget v4, v0, v4

    if-ne v2, v4, :cond_0

    aget v2, v0, v1

    const/4 v4, 0x3

    aget v0, v0, v4

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public rotatePreview(Z)V
    .locals 2

    .line 228
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 233
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    .line 234
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1005
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->alpha:I

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimationProgressProvider(Lorg/telegram/messenger/GenericProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/GenericProvider<",
            "Lorg/telegram/ui/Components/MotionBackgroundDrawable;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 850
    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    const/4 p1, 0x1

    .line 851
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0

    .line 459
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->backgroundAlpha:F

    .line 460
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 465
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 467
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->createLegacyBitmap()V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColors(IIII)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 331
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    return-void
.end method

.method public setColors(IIIIIZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 343
    iget-boolean v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 344
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-static/range {p5 .. p5}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v9

    new-array v10, v6, [I

    aput v1, v10, v8

    aput v2, v10, v7

    invoke-direct {v5, v9, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 346
    iput-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 348
    :goto_0
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    aget v9, v5, v8

    const/4 v10, 0x3

    if-ne v9, v1, :cond_1

    aget v9, v5, v7

    if-ne v9, v2, :cond_1

    aget v9, v5, v6

    if-ne v9, v3, :cond_1

    aget v9, v5, v10

    if-ne v9, v4, :cond_1

    return-void

    .line 351
    :cond_1
    aput v1, v5, v8

    .line 352
    aput v2, v5, v7

    .line 353
    aput v3, v5, v6

    .line 354
    aput v4, v5, v10

    .line 355
    iget-object v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    const/4 v12, 0x1

    .line 356
    iget v13, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v14

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v17

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    move-object/from16 v18, v1

    invoke-static/range {v11 .. v18}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    if-eqz p6, :cond_2

    .line 358
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    :cond_2
    return-void
.end method

.method public setColors(IIIILandroid/graphics/Bitmap;)V
    .locals 9

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 336
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 337
    aput p3, v0, p1

    const/4 p1, 0x3

    .line 338
    aput p4, v0, p1

    .line 339
    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    const/4 v2, 0x1

    move-object v1, p5

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    return-void
.end method

.method public setIndeterminateAnimation(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1037
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3e000000    # 0.125f

    .line 1039
    iget v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    div-float v2, v1, v0

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v2, v2

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    sub-float/2addr v3, v1

    .line 1040
    iput v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/4 v0, 0x1

    .line 1041
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    .line 1043
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    return-void
.end method

.method public setIndeterminateSpeedScale(F)V
    .locals 0

    .line 1029
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 327
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->parentView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setPatternAlpha(F)V
    .locals 0

    .line 454
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternAlpha:F

    .line 455
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setPatternBitmap(I)V
    .locals 2

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setPatternBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 405
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setPatternBitmap(ILandroid/graphics/Bitmap;Z)V
    .locals 3

    .line 410
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    .line 411
    iput-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    .line 412
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    if-nez p2, :cond_0

    return-void

    .line 416
    :cond_0
    sget-boolean p2, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useSoftLight:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-ltz p1, :cond_1

    .line 418
    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :cond_2
    :goto_0
    if-gez p1, :cond_5

    .line 424
    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-nez p1, :cond_3

    .line 425
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 426
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object p2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    .line 427
    iput-boolean p3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->disableGradientShaderScaling:Z

    .line 428
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/ComposeShader;

    iget-object p3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientShader:Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 429
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 430
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    goto :goto_1

    .line 432
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->createLegacyBitmap()V

    .line 433
    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->errorWhileGenerateLegacyBitmap:Z

    if-nez p1, :cond_4

    .line 434
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    .line 436
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    .line 440
    :cond_5
    sget-boolean p1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-nez p1, :cond_6

    goto :goto_1

    .line 443
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_1
    return-void
.end method

.method public setPatternColorFilter(I)V
    .locals 2

    .line 449
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->patternColorFilter:Landroid/graphics/ColorFilter;

    .line 450
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setPhase(I)V
    .locals 9

    .line 238
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 240
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 242
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    .line 244
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    return-void
.end method

.method public setPosAnimationProgress(F)V
    .locals 0

    .line 252
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/4 p1, 0x1

    .line 253
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->updateAnimation(Z)V

    return-void
.end method

.method public setPostInvalidateParent(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->postInvalidateParent:Z

    return-void
.end method

.method public setRoundRadius(I)V
    .locals 2

    .line 154
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->roundRadius:I

    .line 155
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->matrix:Landroid/graphics/Matrix;

    .line 156
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 158
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    return-void
.end method

.method public setTranslationY(I)V
    .locals 0

    .line 397
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->translationY:I

    return-void
.end method

.method public switchToNextPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->switchToNextPosition(Z)V

    return-void
.end method

.method public switchToNextPosition(Z)V
    .locals 3

    .line 261
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    .line 265
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    .line 266
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->fastAnimation:Z

    const/4 p1, 0x0

    .line 267
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 268
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-gez v0, :cond_1

    const/4 v0, 0x7

    .line 270
    iput v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    .line 272
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->generateNextGradient()V

    :cond_2
    :goto_0
    return-void
.end method

.method public switchToPrevPosition(Z)V
    .locals 8

    .line 310
    iget v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    .line 314
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->fastAnimation:Z

    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    const/4 p1, 0x0

    .line 316
    iput p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 317
    invoke-direct {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    iget v2, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    const/4 v3, 0x0

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object p1, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    .line 319
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->generateNextGradient()V

    return-void
.end method

.method public updateAnimation(Z)V
    .locals 20

    move-object/from16 v0, p0

    .line 855
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 856
    iget-wide v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->lastUpdateTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x14

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    const-wide/16 v3, 0x11

    .line 860
    :cond_0
    iput-wide v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->lastUpdateTime:J

    const-wide/16 v1, 0x1

    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    return-void

    .line 865
    :cond_1
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isIndeterminateAnimation:Z

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v6, v6, v5

    if-nez v6, :cond_2

    .line 866
    iput v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 868
    :cond_2
    iget v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpg-float v7, v6, v5

    if-gez v7, :cond_27

    .line 870
    iget-boolean v7, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->postInvalidateParent:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_4

    iget-boolean v7, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v7, 0x1

    :goto_1
    const/4 v10, 0x2

    if-eqz v1, :cond_6

    long-to-float v1, v3

    const v3, 0x463b8000    # 12000.0f

    div-float/2addr v1, v3

    .line 872
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->indeterminateSpeedScale:F

    mul-float v1, v1, v3

    add-float/2addr v6, v1

    iput v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v1, v6, v5

    if-ltz v1, :cond_5

    .line 874
    iput v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    :cond_5
    const/high16 v1, 0x3e000000    # 0.125f

    .line 877
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    div-float v4, v3, v1

    float-to-int v4, v4

    iput v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float v1, v5, v3

    move v15, v1

    const/4 v7, 0x1

    goto/16 :goto_d

    .line 881
    :cond_6
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotatingPreview:Z

    const/4 v11, 0x7

    if-eqz v1, :cond_1a

    .line 883
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v6, 0x3f400000    # 0.75f

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3e800000    # 0.25f

    cmpg-float v14, v1, v13

    if-gtz v14, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    cmpg-float v14, v1, v12

    if-gtz v14, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    cmpg-float v1, v1, v6

    if-gtz v1, :cond_9

    const/4 v1, 0x2

    goto :goto_2

    :cond_9
    const/4 v1, 0x3

    .line 893
    :goto_2
    iget-object v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-eqz v14, :cond_a

    .line 894
    invoke-interface {v14, v0}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    goto :goto_4

    .line 896
    :cond_a
    iget v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    long-to-float v3, v3

    iget-boolean v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v4, :cond_b

    const/high16 v4, 0x447a0000    # 1000.0f

    goto :goto_3

    :cond_b
    const/high16 v4, 0x44fa0000    # 2000.0f

    :goto_3
    div-float/2addr v3, v4

    add-float/2addr v14, v3

    iput v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 898
    :goto_4
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    .line 899
    iput v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 901
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-nez v3, :cond_d

    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-nez v3, :cond_d

    .line 902
    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_5

    .line 904
    :cond_d
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 906
    :goto_5
    iget-boolean v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-eqz v4, :cond_f

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_e

    cmpl-float v4, v3, v5

    if-nez v4, :cond_f

    .line 907
    :cond_e
    iput-boolean v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    :cond_f
    if-nez v1, :cond_10

    cmpl-float v4, v3, v13

    if-gtz v4, :cond_12

    :cond_10
    if-ne v1, v9, :cond_11

    cmpl-float v4, v3, v12

    if-gtz v4, :cond_12

    :cond_11
    if-ne v1, v10, :cond_14

    cmpl-float v1, v3, v6

    if-lez v1, :cond_14

    .line 912
    :cond_12
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v1, :cond_13

    .line 913
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-le v1, v11, :cond_14

    .line 915
    iput v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    goto :goto_6

    .line 918
    :cond_13
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    sub-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-gez v1, :cond_14

    .line 920
    iput v11, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    :cond_14
    :goto_6
    cmpg-float v1, v3, v13

    if-gtz v1, :cond_15

    :goto_7
    div-float/2addr v3, v13

    goto :goto_8

    :cond_15
    cmpg-float v1, v3, v12

    if-gtz v1, :cond_16

    sub-float/2addr v3, v13

    goto :goto_7

    :cond_16
    cmpg-float v1, v3, v6

    if-gtz v1, :cond_17

    sub-float/2addr v3, v12

    goto :goto_7

    :cond_17
    sub-float/2addr v3, v6

    goto :goto_7

    .line 933
    :goto_8
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v1, :cond_19

    sub-float v1, v5, v3

    .line 936
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_22

    .line 937
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-le v1, v11, :cond_18

    .line 939
    iput v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    :cond_18
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_19
    move v1, v3

    goto :goto_c

    .line 945
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-eqz v1, :cond_1b

    .line 946
    invoke-interface {v1, v0}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    goto :goto_a

    :cond_1b
    long-to-float v1, v3

    .line 948
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->fastAnimation:Z

    if-eqz v3, :cond_1c

    const/high16 v3, 0x43960000    # 300.0f

    goto :goto_9

    :cond_1c
    const/high16 v3, 0x43fa0000    # 500.0f

    :goto_9
    div-float/2addr v1, v3

    add-float/2addr v6, v1

    iput v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 950
    :goto_a
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1d

    .line 951
    iput v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 953
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->animationProgressProvider:Lorg/telegram/messenger/GenericProvider;

    if-nez v1, :cond_1e

    iget-boolean v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-nez v1, :cond_1e

    .line 954
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->interpolator:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_b

    .line 956
    :cond_1e
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    .line 958
    :goto_b
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    if-eqz v3, :cond_20

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1f

    cmpl-float v3, v1, v5

    if-nez v3, :cond_20

    .line 959
    :cond_1f
    iput-boolean v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->ignoreInterpolator:Z

    .line 961
    :cond_20
    iget-boolean v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->rotationBack:Z

    if-eqz v3, :cond_22

    sub-float v1, v5, v1

    .line 963
    iget v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->posAnimationProgress:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_22

    .line 964
    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    add-int/2addr v1, v9

    iput v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    if-le v1, v11, :cond_21

    .line 966
    iput v8, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    :cond_21
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_22
    :goto_c
    move v15, v1

    :goto_d
    if-eqz v7, :cond_23

    .line 975
    iget-object v12, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v13, 0x1

    iget v14, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->phase:I

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v18

    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->colors:[I

    move-object/from16 v19, v1

    invoke-static/range {v12 .. v19}, Lorg/telegram/messenger/Utilities;->generateGradient(Landroid/graphics/Bitmap;ZIFIII[I)V

    .line 976
    iput-boolean v9, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateLegacy:Z

    goto :goto_f

    .line 978
    :cond_23
    sget-boolean v1, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->useLegacyBitmap:Z

    if-eqz v1, :cond_24

    iget v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->intensity:I

    if-gez v1, :cond_24

    goto :goto_f

    :cond_24
    cmpl-float v1, v15, v5

    if-eqz v1, :cond_26

    const v1, 0x3eaaaaab

    div-float v3, v15, v1

    float-to-int v3, v3

    const/4 v4, 0x0

    if-nez v3, :cond_25

    .line 985
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientFromBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_e

    .line 987
    :cond_25
    iget-object v5, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v6, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_e
    int-to-float v4, v3

    mul-float v4, v4, v1

    sub-float/2addr v15, v4

    div-float/2addr v15, v1

    .line 990
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v15, v15, v4

    float-to-int v4, v15

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 991
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v4, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_f

    .line 993
    :cond_26
    iget-object v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientCanvas:Landroid/graphics/Canvas;

    iget-object v3, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->gradientToBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v10

    iget-object v4, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_f
    if-eqz p1, :cond_27

    .line 998
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->invalidateParent()V

    :cond_27
    return-void
.end method
