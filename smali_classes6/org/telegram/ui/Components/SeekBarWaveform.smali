.class public Lorg/telegram/ui/Components/SeekBarWaveform;
.super Ljava/lang/Object;
.source "SeekBarWaveform.java"


# static fields
.field private static paintInner:Landroid/graphics/Paint;

.field private static paintOuter:Landroid/graphics/Paint;


# instance fields
.field private alpha:F

.field private alphaPath:Landroid/graphics/Path;

.field private animatedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private appearFloat:Lorg/telegram/ui/Components/AnimatedFloat;

.field private clearProgress:F

.field private delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

.field private fromHeights:[F

.field private fromWidth:I

.field private height:I

.field private heights:[F

.field private innerColor:I

.field private isUnread:Z

.field private loading:Z

.field private loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

.field private loadingPaint:Landroid/graphics/Paint;

.field private loadingPaintColor1:I

.field private loadingPaintColor2:I

.field private loadingPaintWidth:F

.field private loadingStart:J

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private outerColor:I

.field private parentView:Landroid/view/View;

.field private path:Landroid/graphics/Path;

.field private pressed:Z

.field private progress:F

.field private selected:Z

.field private selectedColor:I

.field private startDraging:Z

.field private startX:F

.field private thumbDX:I

.field private thumbX:I

.field private toHeights:[F

.field private toWidth:I

.field private waveScaling:F

.field private waveformBytes:[B

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    .line 36
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    .line 39
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    .line 40
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 53
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alpha:F

    .line 55
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    .line 57
    new-instance v6, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0x7d

    const-wide/16 v3, 0x258

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JJLandroid/animation/TimeInterpolator;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->appearFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 59
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveScaling:F

    .line 65
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0x96

    invoke-direct {p1, v1, v2, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 76
    sget-object p1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    .line 78
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    .line 79
    sget-object p1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    sget-object p1, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    return-void
.end method

.method private addBar(Landroid/graphics/Path;FF)V
    .locals 9

    const/high16 v0, 0x40000000    # 2.0f

    .line 395
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    .line 396
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    const/16 v3, 0xe

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 397
    iget v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveScaling:F

    mul-float/2addr p3, v3

    .line 398
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 399
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    add-float/2addr v5, p2

    div-float v0, v1, v0

    sub-float/2addr v5, v0

    const/4 v6, 0x7

    .line 400
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v2

    int-to-float v7, v7

    neg-float v8, p3

    sub-float/2addr v8, v0

    add-float/2addr v7, v8

    .line 401
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    add-float/2addr p2, v4

    add-float/2addr p2, v0

    .line 402
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr p3, v0

    add-float/2addr v2, p3

    .line 398
    invoke-virtual {v3, v5, v7, p2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 404
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v3, v1, v1, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private calculateHeights(I)[F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 224
    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    if-eqz v2, :cond_7

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 227
    :cond_0
    new-array v3, v1, [F

    .line 229
    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    const/4 v4, 0x5

    div-int/2addr v2, v4

    int-to-float v5, v2

    int-to-float v6, v1

    div-float/2addr v5, v6

    const/4 v6, 0x0

    move v10, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v2, :cond_6

    if-eq v8, v9, :cond_1

    goto :goto_3

    :cond_1
    move v12, v9

    const/4 v13, 0x0

    :goto_1
    if-ne v9, v12, :cond_2

    add-float/2addr v10, v5

    float-to-int v12, v10

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v9, v8, 0x5

    .line 250
    div-int/lit8 v14, v9, 0x8

    mul-int/lit8 v15, v14, 0x8

    sub-int/2addr v9, v15

    rsub-int/lit8 v15, v9, 0x8

    rsub-int/lit8 v16, v15, 0x5

    .line 254
    iget-object v7, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    aget-byte v7, v7, v14

    shr-int/2addr v7, v9

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v15, 0x2

    shl-int v9, v15, v9

    add-int/lit8 v9, v9, -0x1

    and-int/2addr v7, v9

    int-to-byte v7, v7

    if-lez v16, :cond_3

    add-int/lit8 v14, v14, 0x1

    .line 255
    iget-object v9, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    array-length v4, v9

    if-ge v14, v4, :cond_3

    shl-int v4, v7, v16

    int-to-byte v4, v4

    .line 257
    aget-byte v7, v9, v14

    add-int/lit8 v16, v16, -0x1

    shl-int v9, v15, v16

    add-int/lit8 v9, v9, -0x1

    and-int/2addr v7, v9

    or-int/2addr v4, v7

    int-to-byte v7, v4

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v13, :cond_5

    if-lt v11, v1, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v9, v11, 0x1

    mul-int/lit8 v14, v7, 0x7

    int-to-float v14, v14

    const/high16 v15, 0x41f80000    # 31.0f

    div-float/2addr v14, v15

    .line 264
    invoke-static {v6, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    aput v14, v3, v11

    add-int/lit8 v4, v4, 0x1

    move v11, v9

    goto :goto_2

    :cond_5
    move v9, v12

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x5

    goto :goto_0

    :cond_6
    return-object v3

    :cond_7
    :goto_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private drawFill(Landroid/graphics/Canvas;F)V
    .locals 16

    move-object/from16 v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    .line 352
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    .line 354
    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->isUnread:Z

    .line 355
    sget-object v6, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    goto :goto_1

    :cond_1
    iget-boolean v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->selected:Z

    if-eqz v2, :cond_2

    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->selectedColor:I

    goto :goto_1

    :cond_2
    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    :goto_1
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    sget-object v2, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    iget-object v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    .line 359
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    .line 360
    iget-object v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v7, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loading:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_3

    if-nez v2, :cond_3

    move v2, v8

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    .line 361
    sget-object v6, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    iget v9, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    invoke-static {v7, v9, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    sget-object v6, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    int-to-float v7, v7

    sub-float v9, v8, v2

    mul-float/2addr v7, v9

    mul-float v7, v7, p2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 363
    sget-object v6, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 365
    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v6, v6

    add-float v13, v6, v1

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float v14, v6

    sget-object v15, Lorg/telegram/ui/Components/SeekBarWaveform;->paintInner:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    cmpg-float v6, v2, v8

    if-gez v6, :cond_4

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 367
    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    iget v7, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    mul-float/2addr v6, v7

    mul-float v13, v6, v9

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float v14, v1

    sget-object v15, Lorg/telegram/ui/Components/SeekBarWaveform;->paintOuter:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    cmpl-float v1, v2, v5

    if-lez v1, :cond_8

    .line 371
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintWidth:F

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v6, v6

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/16 v6, 0x8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v1, v1, v6

    if-gtz v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor1:I

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    if-ne v1, v6, :cond_5

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor2:I

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    if-eq v1, v6, :cond_7

    .line 372
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_6

    .line 373
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    .line 375
    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    iput v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor1:I

    .line 376
    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    iput v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor2:I

    .line 377
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v6, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v9, v6

    iput v9, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintWidth:F

    const/4 v10, 0x0

    const/4 v6, 0x3

    new-array v11, v6, [I

    iget v12, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor1:I

    aput v12, v11, v3

    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintColor2:I

    aput v3, v11, v4

    const/4 v3, 0x2

    aput v12, v11, v3

    new-array v12, v6, [F

    fill-array-data v12, :array_0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 379
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    mul-float v2, v2, p2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingStart:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43870000    # 270.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    .line 382
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3fcccccd    # 1.6f

    rem-float/2addr v1, v2

    const v2, 0x3f19999a    # 0.6f

    sub-float/2addr v1, v2

    .line 383
    iget v2, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaintWidth:F

    mul-float/2addr v1, v2

    move-object/from16 v2, p1

    .line 384
    invoke-virtual {v2, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    neg-float v7, v1

    const/4 v8, 0x0

    .line 385
    iget v3, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    sub-float v9, v3, v1

    iget v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float v10, v1

    iget-object v11, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 388
    iget-object v1, v0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 389
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 13

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-eqz v0, :cond_f

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alpha:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    goto/16 :goto_a

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 274
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    div-float/2addr v0, v3

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    return-void

    .line 278
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_3

    const v5, 0x3dda740e

    add-float/2addr v3, v5

    .line 279
    iput v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 281
    iput v4, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 287
    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->appearFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result p2

    .line 289
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->path:Landroid/graphics/Path;

    if-nez v3, :cond_4

    .line 290
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->path:Landroid/graphics/Path;

    goto :goto_1

    .line 292
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 296
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alphaPath:Landroid/graphics/Path;

    if-nez v3, :cond_5

    .line 297
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alphaPath:Landroid/graphics/Path;

    goto :goto_2

    .line 299
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 302
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromHeights:[F

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toHeights:[F

    if-eqz v6, :cond_a

    .line 303
    iget p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromWidth:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toWidth:I

    sub-int/2addr v7, v0

    int-to-float v0, v7

    div-float/2addr p2, v0

    .line 304
    array-length v0, v3

    array-length v3, v6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 305
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromHeights:[F

    array-length v3, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toHeights:[F

    array-length v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 306
    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromHeights:[F

    array-length v7, v6

    iget-object v8, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toHeights:[F

    array-length v9, v8

    if-ge v7, v9, :cond_6

    move-object v7, v6

    goto :goto_3

    :cond_6
    move-object v7, v8

    .line 307
    :goto_3
    array-length v9, v6

    array-length v10, v8

    if-ge v9, v10, :cond_7

    move-object v9, v8

    goto :goto_4

    :cond_7
    move-object v9, v6

    .line 309
    :goto_4
    array-length v6, v6

    array-length v8, v8

    if-ge v6, v8, :cond_8

    goto :goto_5

    :cond_8
    sub-float p2, v4, p2

    :goto_5
    const/4 v4, -0x1

    move v8, v2

    move v6, v5

    :goto_6
    if-ge v6, v0, :cond_d

    int-to-float v10, v6

    int-to-float v11, v0

    div-float v11, v10, v11

    int-to-float v12, v3

    mul-float/2addr v11, v12

    float-to-double v11, v11

    .line 312
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    add-int/lit8 v12, v3, -0x1

    invoke-static {v11, v5, v12}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v11

    if-ge v4, v11, :cond_9

    int-to-float v4, v11

    .line 314
    invoke-static {v4, v10, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    mul-float/2addr v4, v10

    .line 315
    aget v10, v7, v11

    aget v12, v9, v6

    invoke-static {v10, v12, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    .line 316
    iget-object v12, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->path:Landroid/graphics/Path;

    invoke-direct {p0, v12, v4, v10}, Lorg/telegram/ui/Components/SeekBarWaveform;->addBar(Landroid/graphics/Path;FF)V

    move v4, v11

    goto :goto_7

    :cond_9
    int-to-float v8, v11

    .line 319
    invoke-static {v8, v10, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    mul-float/2addr v8, v10

    .line 320
    aget v10, v7, v11

    aget v11, v9, v6

    invoke-static {v10, v11, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v10

    .line 321
    iget-object v11, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alphaPath:Landroid/graphics/Path;

    invoke-direct {p0, v11, v8, v10}, Lorg/telegram/ui/Components/SeekBarWaveform;->addBar(Landroid/graphics/Path;FF)V

    move v8, p2

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 325
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    if-eqz v3, :cond_c

    :goto_8
    int-to-float v3, v5

    cmpg-float v6, v3, v0

    if-gez v6, :cond_c

    .line 327
    iget-object v6, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    array-length v6, v6

    if-lt v5, v6, :cond_b

    goto :goto_9

    .line 330
    :cond_b
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    mul-float/2addr v6, v3

    mul-float v7, p2, v0

    sub-float/2addr v7, v3

    .line 331
    invoke-static {v7, v2, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    .line 332
    iget-object v7, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    aget v7, v7, v5

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    mul-float/2addr v7, v3

    .line 333
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    sub-float v3, v4, v3

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    .line 334
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->path:Landroid/graphics/Path;

    invoke-direct {p0, v3, v6, v7}, Lorg/telegram/ui/Components/SeekBarWaveform;->addBar(Landroid/graphics/Path;FF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    :goto_9
    move v8, v2

    :cond_d
    cmpl-float p2, v8, v2

    if-lez p2, :cond_e

    .line 339
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 340
    iget-object p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alphaPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 341
    iget p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alpha:F

    mul-float/2addr v8, p2

    invoke-direct {p0, p1, v8}, Lorg/telegram/ui/Components/SeekBarWaveform;->drawFill(Landroid/graphics/Canvas;F)V

    .line 342
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 345
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 346
    iget-object p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->path:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 347
    iget p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alpha:F

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarWaveform;->drawFill(Landroid/graphics/Canvas;F)V

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    :goto_a
    return-void
.end method

.method public getProgress()F
    .locals 2

    .line 168
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    return v0
.end method

.method public isStartDraging()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    return v0
.end method

.method public onTouch(IFF)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    cmpg-float v2, p1, p2

    if-gtz v2, :cond_9

    .line 126
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_9

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_9

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_9

    .line 127
    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    .line 128
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    .line 129
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    .line 130
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->onSeekBarPressed()V

    return v1

    :cond_0
    if-eq p1, v1, :cond_7

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x2

    if-ne p1, p3, :cond_9

    .line 144
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    if-eqz p1, :cond_9

    .line 145
    iget-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    if-eqz p1, :cond_4

    .line 146
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbDX:I

    int-to-float p1, p1

    sub-float p1, p2, p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    if-gez p1, :cond_2

    .line 148
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    goto :goto_0

    .line 149
    :cond_2
    iget p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-le p1, p3, :cond_3

    .line 150
    iput p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    .line 152
    :cond_3
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float p1, p1

    iget p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    .line 154
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float v0, p1, p3

    if-eqz v0, :cond_6

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3e4ccccd    # 0.2f

    invoke-static {p2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 158
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startDraging:Z

    .line 159
    iput p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->startX:F

    :cond_6
    return v1

    .line 135
    :cond_7
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    if-eqz p2, :cond_9

    if-ne p1, v1, :cond_8

    .line 136
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    if-eqz p1, :cond_8

    .line 137
    iget p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    int-to-float p2, p2

    iget p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-interface {p1, p2}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->onSeekBarDrag(F)V

    .line 139
    :cond_8
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->pressed:Z

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;->onSeekBarReleased()V

    return v1

    :cond_9
    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    .line 111
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->alpha:F

    return-void
.end method

.method public setColors(III)V
    .locals 0

    .line 89
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->innerColor:I

    .line 90
    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->outerColor:I

    .line 91
    iput p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->selectedColor:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->delegate:Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;

    return-void
.end method

.method public setLoading(Z)V
    .locals 2

    .line 412
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loading:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingStart:J

    .line 415
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loading:Z

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->animatedValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->animatedValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->appearFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->setParent(Landroid/view/View;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SeekBarWaveform;->setProgress(FZ)V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 3

    .line 176
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->isUnread:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    iput v2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->progress:F

    if-eqz v0, :cond_1

    .line 177
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    :goto_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v2, p1, v0

    if-nez v2, :cond_2

    .line 179
    iput v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    .line 181
    iput v1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->clearProgress:F

    .line 183
    :cond_3
    :goto_2
    iget p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    if-gez p1, :cond_4

    const/4 p1, 0x0

    .line 185
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    goto :goto_3

    .line 186
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    if-le p1, p2, :cond_5

    .line 187
    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->thumbX:I

    :cond_5
    :goto_3
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->selected:Z

    return-void
.end method

.method public setSent()V
    .locals 3

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->appearFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1, p2, p1, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->setSize(IIII)V

    return-void
.end method

.method public setSize(IIII)V
    .locals 2

    .line 201
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    .line 202
    iput p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->height:I

    .line 203
    iget-object p2, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    const/high16 v0, 0x40400000    # 3.0f

    if-eqz p2, :cond_0

    array-length p2, p2

    int-to-float p1, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    if-eq p2, p1, :cond_1

    .line 204
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float p1, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->calculateHeights(I)[F

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    :cond_1
    if-eq p3, p4, :cond_3

    .line 206
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromWidth:I

    if-ne p1, p3, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toWidth:I

    if-eq p1, p4, :cond_3

    .line 207
    :cond_2
    iput p3, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromWidth:I

    .line 208
    iput p4, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toWidth:I

    int-to-float p1, p3

    .line 209
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->calculateHeights(I)[F

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromHeights:[F

    .line 210
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toWidth:I

    int-to-float p1, p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->calculateHeights(I)[F

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toHeights:[F

    goto :goto_0

    :cond_3
    if-ne p3, p4, :cond_4

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->toHeights:[F

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->fromHeights:[F

    :cond_4
    :goto_0
    return-void
.end method

.method public setWaveScaling(F)V
    .locals 0

    .line 408
    iput p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveScaling:F

    return-void
.end method

.method public setWaveform([B)V
    .locals 1

    .line 95
    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->waveformBytes:[B

    .line 96
    iget p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->width:I

    int-to-float p1, p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SeekBarWaveform;->calculateHeights(I)[F

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SeekBarWaveform;->heights:[F

    return-void
.end method
