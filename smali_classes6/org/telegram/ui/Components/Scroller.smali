.class public Lorg/telegram/ui/Components/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# static fields
.field private static DECELERATION_RATE:F

.field private static END_TENSION:F

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    const v0, 0x3ecccccd    # 0.4f

    .line 64
    sput v0, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 65
    sput v0, Lorg/telegram/ui/Components/Scroller;->END_TENSION:F

    const/16 v0, 0x65

    new-array v0, v0, [F

    .line 67
    sput-object v0, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-gt v2, v3, :cond_2

    int-to-float v3, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, v3, v4

    move v3, v1

    :goto_1
    sub-float v5, v3, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v5

    sub-float v7, v1, v5

    mul-float/2addr v6, v7

    .line 81
    sget v8, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    mul-float/2addr v7, v8

    sget v8, Lorg/telegram/ui/Components/Scroller;->END_TENSION:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    mul-float/2addr v7, v6

    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    sub-float v9, v7, v4

    .line 82
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v9, v9, v11

    if-gez v9, :cond_0

    add-float/2addr v6, v8

    .line 87
    sget-object v3, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    aput v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v6, v7, v4

    if-lez v6, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_1

    .line 89
    :cond_2
    sget-object v0, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    aput v1, v0, v3

    const/high16 v0, 0x41000000    # 8.0f

    .line 92
    sput v0, Lorg/telegram/ui/Components/Scroller;->sViscousFluidScale:F

    .line 94
    sput v1, Lorg/telegram/ui/Components/Scroller;->sViscousFluidNormalize:F

    .line 95
    invoke-static {v1}, Lorg/telegram/ui/Components/Scroller;->viscousFluid(F)F

    move-result v0

    div-float/2addr v1, v0

    sput v1, Lorg/telegram/ui/Components/Scroller;->sViscousFluidNormalize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    .line 124
    iput-object p2, p0, Lorg/telegram/ui/Components/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mPpi:F

    .line 126
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Scroller;->computeDeceleration(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mDeceleration:F

    .line 127
    iput-boolean p3, p0, Lorg/telegram/ui/Components/Scroller;->mFlywheel:Z

    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2

    .line 142
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mPpi:F

    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .locals 4

    .line 422
    sget v0, Lorg/telegram/ui/Components/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v1, v1

    .line 424
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const v1, 0x3ebc5ab2

    sub-float p0, v0, p0

    float-to-double v2, p0

    .line 427
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float p0, v2

    sub-float/2addr v0, p0

    const p0, 0x3f21d2a7

    mul-float/2addr v0, p0

    add-float p0, v0, v1

    .line 430
    :goto_0
    sget v0, Lorg/telegram/ui/Components/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 442
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    .line 443
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 7

    .line 246
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 250
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 252
    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    .line 253
    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mMode:I

    if-eqz v3, :cond_2

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v3, v0, v1

    float-to-int v3, v3

    int-to-float v4, v3

    div-float/2addr v4, v1

    add-int/lit8 v5, v3, 0x1

    int-to-float v6, v5

    div-float/2addr v6, v1

    .line 270
    sget-object v1, Lorg/telegram/ui/Components/Scroller;->SPLINE:[F

    aget v3, v1, v3

    .line 271
    aget v1, v1, v5

    sub-float/2addr v0, v4

    sub-float/2addr v6, v4

    div-float/2addr v0, v6

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 274
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    .line 276
    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    .line 277
    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    .line 279
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    .line 281
    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    .line 282
    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    .line 284
    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    if-ne v0, v1, :cond_5

    .line 285
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    .line 255
    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mDurationReciprocal:F

    mul-float/2addr v0, v1

    .line 257
    iget-object v1, p0, Lorg/telegram/ui/Components/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    .line 258
    invoke-static {v0}, Lorg/telegram/ui/Components/Scroller;->viscousFluid(F)F

    move-result v0

    goto :goto_0

    .line 260
    :cond_3
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 262
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaX:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    .line 263
    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    iget v3, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaY:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    goto :goto_1

    .line 292
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    .line 293
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    .line 294
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    :cond_5
    :goto_1
    return v2
.end method

.method public fling(IIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 366
    iget-boolean v3, v0, Lorg/telegram/ui/Components/Scroller;->mFlywheel:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    if-nez v3, :cond_0

    .line 367
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Scroller;->getCurrVelocity()F

    move-result v3

    .line 369
    iget v4, v0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    iget v5, v0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 370
    iget v5, v0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    iget v6, v0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 371
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v4, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v3

    mul-float/2addr v5, v3

    move/from16 v3, p3

    int-to-float v6, v3

    .line 378
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    move/from16 v7, p4

    int-to-float v8, v7

    .line 379
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    add-float/2addr v6, v4

    float-to-int v3, v6

    add-float/2addr v8, v5

    float-to-int v4, v8

    move v7, v4

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    :cond_1
    move/from16 v7, p4

    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 385
    iput v4, v0, Lorg/telegram/ui/Components/Scroller;->mMode:I

    const/4 v4, 0x0

    .line 386
    iput-boolean v4, v0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    mul-int v4, v3, v3

    mul-int v5, v7, v7

    add-int/2addr v4, v5

    int-to-double v4, v4

    .line 388
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 390
    iput v4, v0, Lorg/telegram/ui/Components/Scroller;->mVelocity:F

    const/high16 v5, 0x44480000    # 800.0f

    .line 392
    sget v6, Lorg/telegram/ui/Components/Scroller;->START_TENSION:F

    mul-float/2addr v6, v4

    div-float/2addr v6, v5

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    .line 393
    sget v6, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    float-to-double v12, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    div-double v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    double-to-int v6, v12

    iput v6, v0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    .line 394
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    .line 395
    iput v1, v0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    .line 396
    iput v2, v0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v6, :cond_3

    move v3, v10

    goto :goto_1

    :cond_3
    int-to-float v3, v3

    div-float/2addr v3, v4

    :goto_1
    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    int-to-float v6, v7

    div-float v10, v6, v4

    :goto_2
    float-to-double v4, v5

    .line 401
    sget v6, Lorg/telegram/ui/Components/Scroller;->DECELERATION_RATE:F

    float-to-double v11, v6

    float-to-double v6, v6

    sub-double/2addr v6, v14

    div-double/2addr v11, v6

    mul-double/2addr v11, v8

    .line 402
    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move/from16 v5, p5

    .line 404
    iput v5, v0, Lorg/telegram/ui/Components/Scroller;->mMinX:I

    move/from16 v5, p6

    .line 405
    iput v5, v0, Lorg/telegram/ui/Components/Scroller;->mMaxX:I

    move/from16 v5, p7

    .line 406
    iput v5, v0, Lorg/telegram/ui/Components/Scroller;->mMinY:I

    move/from16 v5, p8

    .line 407
    iput v5, v0, Lorg/telegram/ui/Components/Scroller;->mMaxY:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 409
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    .line 411
    iget v3, v0, Lorg/telegram/ui/Components/Scroller;->mMaxX:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    .line 412
    iget v3, v0, Lorg/telegram/ui/Components/Scroller;->mMinX:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    mul-float/2addr v4, v10

    .line 414
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    .line 416
    iget v2, v0, Lorg/telegram/ui/Components/Scroller;->mMaxY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    .line 417
    iget v2, v0, Lorg/telegram/ui/Components/Scroller;->mMinY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .line 201
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mVelocity:F

    iget v1, p0, Lorg/telegram/ui/Components/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .line 182
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .line 191
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mCurrY:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .line 237
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .line 210
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 219
    iget v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    return v0
.end method

.method public startScroll(IIIII)V
    .locals 2

    const/4 v0, 0x0

    .line 331
    iput v0, p0, Lorg/telegram/ui/Components/Scroller;->mMode:I

    .line 332
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Scroller;->mFinished:Z

    .line 333
    iput p5, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    .line 334
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    .line 335
    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mStartX:I

    .line 336
    iput p2, p0, Lorg/telegram/ui/Components/Scroller;->mStartY:I

    add-int/2addr p1, p3

    .line 337
    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mFinalX:I

    add-int/2addr p2, p4

    .line 338
    iput p2, p0, Lorg/telegram/ui/Components/Scroller;->mFinalY:I

    int-to-float p1, p3

    .line 339
    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaX:F

    int-to-float p1, p4

    .line 340
    iput p1, p0, Lorg/telegram/ui/Components/Scroller;->mDeltaY:F

    .line 341
    iget p1, p0, Lorg/telegram/ui/Components/Scroller;->mDuration:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Components/Scroller;->mDurationReciprocal:F

    return-void
.end method

.method public timePassed()I
    .locals 4

    .line 468
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
