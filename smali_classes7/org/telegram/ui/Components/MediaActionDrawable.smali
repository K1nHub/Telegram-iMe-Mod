.class public Lorg/telegram/ui/Components/MediaActionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MediaActionDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;
    }
.end annotation


# instance fields
.field private animatedDownloadProgress:F

.field private animatingTransition:Z

.field private backPaint:Landroid/graphics/Paint;

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private currentIcon:I

.field private delegate:Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;

.field private downloadProgress:F

.field private downloadProgressAnimationStart:F

.field private downloadProgressTime:F

.field private downloadRadOffset:F

.field private gradientDrawable:Landroid/graphics/LinearGradient;

.field private gradientMatrix:Landroid/graphics/Matrix;

.field private hasOverlayImage:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isMini:Z

.field private lastAnimationTime:J

.field private lastPercent:I

.field private messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private nextIcon:I

.field private overrideAlpha:F

.field private paint:Landroid/graphics/Paint;

.field private paint2:Landroid/graphics/Paint;

.field private paint3:Landroid/graphics/Paint;

.field private percentString:Ljava/lang/String;

.field private percentStringWidth:I

.field private rect:Landroid/graphics/RectF;

.field private savedTransitionProgress:F

.field private scale:F

.field private textPaint:Landroid/text/TextPaint;

.field private transitionAnimationTime:F

.field private transitionProgress:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    .line 55
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x43c80000    # 400.0f

    .line 59
    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    const/4 v1, -0x1

    .line 61
    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastPercent:I

    .line 65
    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    .line 69
    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private applyShaderMatrix(Z)V
    .locals 4

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->hasGradient()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getGradientShader()Landroid/graphics/Shader;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 289
    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->applyMatrixScale()V

    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTopY()I

    move-result v3

    neg-int v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getTopY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 295
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public static getCircleValue(F)F
    .locals 2

    :goto_0
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 303
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->hasGradient()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    if-nez v1, :cond_0

    .line 304
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getGradientShader()Landroid/graphics/Shader;

    move-result-object v1

    .line 305
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 306
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 307
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 308
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    if-nez v1, :cond_1

    .line 309
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 310
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v10, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 311
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 312
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 313
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 314
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 316
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 317
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 318
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 321
    :goto_0
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    .line 322
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    .line 326
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/16 v13, 0xa

    const/4 v14, 0x6

    const/4 v15, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/16 v4, 0xe

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v15, :cond_2

    .line 327
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq v1, v6, :cond_4

    if-eq v1, v4, :cond_4

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 329
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v2, v3, v2

    int-to-float v9, v11

    int-to-float v10, v12

    .line 330
    invoke-virtual {v7, v2, v2, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_1

    :cond_2
    if-eq v1, v14, :cond_3

    if-ne v1, v13, :cond_4

    .line 332
    :cond_3
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v1, v15, :cond_4

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 334
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    int-to-float v9, v11

    int-to-float v10, v12

    invoke-virtual {v7, v2, v2, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :goto_1
    move v9, v1

    goto :goto_2

    :cond_4
    move v9, v5

    .line 337
    :goto_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    .line 338
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v10, 0x9

    const/high16 v17, 0x42c80000    # 100.0f

    const/high16 v18, 0x40600000    # 3.5f

    const/16 v14, 0xc

    const/high16 v20, 0x3f000000    # 0.5f

    const/high16 v21, 0x437f0000    # 255.0f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v27, v9

    move/from16 v22, v12

    move v12, v3

    move v9, v6

    goto/16 :goto_14

    .line 339
    :cond_6
    :goto_3
    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    int-to-float v1, v12

    .line 340
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v15, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v5, v15

    sub-float v5, v1, v5

    .line 341
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    iget v10, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v15, v10

    add-float/2addr v15, v1

    .line 343
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v13, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v10, v13

    add-float/2addr v10, v1

    .line 346
    iget v13, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq v13, v6, :cond_7

    if-ne v13, v4, :cond_8

    :cond_7
    iget v13, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v13, v2, :cond_8

    .line 347
    iget-object v13, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v2, v2, v20

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v2, v2, v21

    float-to-int v2, v2

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 348
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    .line 349
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    :goto_4
    mul-float/2addr v13, v14

    add-float/2addr v13, v1

    goto :goto_6

    .line 351
    :cond_8
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v2, v6, :cond_9

    if-eq v2, v4, :cond_9

    const/4 v13, 0x2

    if-eq v2, v13, :cond_9

    .line 352
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v13, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    div-float v13, v13, v20

    invoke-static {v3, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    mul-float v13, v13, v21

    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v14, v3, v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 353
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    goto :goto_5

    .line 355
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/16 v13, 0xff

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 356
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :goto_5
    const/4 v13, 0x1

    .line 358
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v13, v14

    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    goto :goto_4

    .line 362
    :goto_6
    iget-boolean v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v14, :cond_18

    .line 364
    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v3, 0x2

    if-eq v14, v3, :cond_16

    cmpg-float v25, v2, v20

    if-gtz v25, :cond_a

    goto/16 :goto_f

    :cond_a
    const/16 v22, 0xd

    .line 383
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v5, v14

    mul-float/2addr v5, v14

    iget-boolean v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v14, :cond_b

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    :goto_7
    int-to-float v14, v14

    add-float/2addr v5, v14

    sub-float v2, v2, v20

    div-float v14, v2, v20

    const v15, 0x3e4ccccd    # 0.2f

    cmpl-float v15, v2, v15

    if-lez v15, :cond_c

    const v15, 0x3e4ccccd    # 0.2f

    sub-float/2addr v2, v15

    const v15, 0x3e99999a    # 0.3f

    div-float/2addr v2, v15

    move/from16 v25, v2

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_c
    const v15, 0x3e4ccccd    # 0.2f

    div-float/2addr v2, v15

    move v15, v2

    const/16 v25, 0x0

    .line 395
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    move/from16 v27, v9

    int-to-float v9, v11

    sub-float v3, v9, v5

    const/high16 v29, 0x40000000    # 2.0f

    div-float v5, v5, v29

    sub-float v4, v10, v5

    add-float/2addr v5, v10

    invoke-virtual {v2, v3, v4, v9, v5}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v3, v25, v17

    .line 397
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v4, 0x42d00000    # 104.0f

    mul-float/2addr v14, v4

    sub-float v4, v14, v3

    const/4 v5, 0x0

    iget-object v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v30, v1

    move-object/from16 v1, p1

    move-object/from16 v22, v8

    const/16 v8, 0xe

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sub-float v1, v10, v13

    mul-float/2addr v1, v15

    add-float/2addr v13, v1

    const/4 v1, 0x0

    cmpl-float v2, v25, v1

    if-lez v2, :cond_14

    .line 405
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v8, :cond_d

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_d
    const/high16 v1, -0x3dcc0000    # -45.0f

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v3, v14, v25

    mul-float/2addr v1, v3

    const/4 v2, 0x7

    .line 410
    :goto_9
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v2, v3

    mul-float v2, v2, v25

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v2, v3

    mul-float v3, v25, v21

    float-to-int v3, v3

    .line 412
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v15, 0x3

    if-eq v4, v15, :cond_e

    if-eq v4, v8, :cond_e

    const/4 v6, 0x2

    if-eq v4, v6, :cond_f

    .line 413
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v4, v4, v20

    invoke-static {v14, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v4, v14, v4

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_a

    :cond_e
    const/4 v6, 0x2

    :cond_f
    :goto_a
    move v5, v3

    const/4 v3, 0x0

    cmpl-float v23, v1, v3

    if-eqz v23, :cond_10

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move/from16 v3, v30

    .line 420
    invoke-virtual {v7, v1, v9, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_b

    :cond_10
    move/from16 v3, v30

    :goto_b
    if-eqz v5, :cond_13

    .line 423
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 424
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v8, :cond_12

    .line 425
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 426
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v11, v2

    int-to-float v2, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v12, v3

    int-to-float v3, v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v11

    int-to-float v4, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    add-int v14, v12, v25

    int-to-float v14, v14

    invoke-virtual {v1, v2, v3, v4, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 427
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 429
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v2, v5

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 430
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v1, :cond_11

    move v1, v6

    goto :goto_c

    :cond_11
    const/4 v1, 0x4

    :goto_c
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 431
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    move-object/from16 v14, v22

    iget v3, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v6, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    int-to-float v6, v6

    iget v15, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v1

    int-to-float v1, v15

    invoke-virtual {v2, v3, v4, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 432
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    iget-object v15, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v8, v5

    move v5, v6

    move/from16 v22, v12

    const/4 v12, 0x2

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 433
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_d

    :cond_12
    move-object/from16 v14, v22

    move/from16 v22, v12

    move v12, v6

    sub-float v8, v9, v2

    sub-float v15, v3, v2

    add-float v25, v9, v2

    add-float v26, v3, v2

    .line 435
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v3, v15

    move/from16 v4, v25

    move/from16 v5, v26

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 436
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, v25

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_13
    move-object/from16 v14, v22

    move/from16 v22, v12

    move v12, v6

    :goto_d
    if-eqz v23, :cond_15

    .line 440
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e

    :cond_14
    move-object/from16 v14, v22

    move/from16 v22, v12

    const/4 v12, 0x2

    :cond_15
    :goto_e
    move v1, v9

    move v4, v1

    move v2, v10

    move-object v8, v14

    const/16 v3, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x3

    goto :goto_11

    :cond_16
    :goto_f
    move/from16 v27, v9

    move/from16 v22, v12

    move v12, v3

    move v9, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v14, v12, :cond_17

    sub-float v3, v6, v2

    goto :goto_10

    :cond_17
    div-float v3, v2, v20

    sub-float v2, v6, v3

    :goto_10
    sub-float/2addr v13, v5

    mul-float/2addr v13, v3

    add-float/2addr v13, v5

    sub-float/2addr v10, v15

    mul-float/2addr v10, v3

    add-float/2addr v10, v15

    int-to-float v1, v11

    const/16 v3, 0x8

    .line 376
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v4, v5

    sub-float v4, v1, v4

    .line 377
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    iget v14, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v5, v14

    add-float/2addr v1, v5

    .line 378
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v5, v2

    sub-float v2, v10, v5

    move/from16 v31, v10

    move v10, v2

    move/from16 v2, v31

    :goto_11
    move v15, v2

    move v14, v10

    move v3, v13

    move v13, v1

    move v10, v4

    goto :goto_12

    :cond_18
    move/from16 v27, v9

    move/from16 v22, v12

    const/4 v12, 0x2

    move v9, v6

    move v6, v3

    const/16 v3, 0x8

    int-to-float v1, v11

    .line 447
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v2, v4

    sub-float v2, v1, v2

    .line 448
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget v10, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v4, v10

    add-float/2addr v1, v4

    .line 449
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v3, v4

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v3, v4

    sub-float v3, v15, v3

    move v13, v1

    move v10, v2

    move v14, v3

    move v3, v5

    :goto_12
    cmpl-float v1, v3, v15

    if-eqz v1, :cond_19

    int-to-float v4, v11

    .line 452
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    move-object/from16 v23, v5

    move v5, v15

    move v12, v6

    move-object/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_13

    :cond_19
    move v12, v6

    :goto_13
    int-to-float v6, v11

    cmpl-float v1, v10, v6

    if-eqz v1, :cond_1a

    .line 455
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v10

    move v3, v14

    move v4, v6

    move-object v10, v5

    move v5, v15

    move/from16 v23, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 456
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move v2, v13

    move/from16 v4, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 460
    :cond_1a
    :goto_14
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v10, 0x5

    if-eq v1, v9, :cond_22

    const/16 v2, 0xe

    if-eq v1, v2, :cond_22

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1b

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v3, v2, :cond_22

    if-ne v3, v9, :cond_1b

    goto/16 :goto_19

    :cond_1b
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1d

    .line 579
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v3, v2, :cond_1d

    const/16 v13, 0xd

    if-ne v1, v13, :cond_1c

    goto :goto_15

    :cond_1c
    move/from16 v13, v22

    const/4 v14, 0x0

    goto/16 :goto_28

    :cond_1d
    const/16 v13, 0xd

    .line 581
    :goto_15
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1e

    goto :goto_16

    :cond_1e
    const/16 v1, 0xff

    goto :goto_17

    .line 582
    :cond_1f
    :goto_16
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v3, v12, v1

    mul-float v3, v3, v21

    float-to-int v1, v3

    :goto_17
    const/4 v14, 0x0

    if-eqz v1, :cond_21

    .line 590
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 591
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x43b40000    # 360.0f

    .line 592
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    mul-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 593
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    goto :goto_18

    :cond_20
    const/4 v1, 0x4

    :goto_18
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 594
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v5, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    int-to-float v6, v6

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v15, v1

    int-to-float v1, v15

    invoke-virtual {v2, v3, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 595
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_21
    move/from16 v13, v22

    goto/16 :goto_28

    :cond_22
    :goto_19
    const/16 v13, 0xd

    const/4 v14, 0x0

    .line 461
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 468
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 469
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    cmpg-float v2, v1, v20

    if-gtz v2, :cond_23

    div-float v1, v1, v20

    sub-float v3, v12, v1

    const/4 v1, 0x7

    .line 472
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    mul-float/2addr v1, v3

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v1, v2

    mul-float v3, v3, v21

    float-to-int v5, v3

    goto :goto_1a

    :cond_23
    move v5, v14

    const/4 v1, 0x0

    :goto_1a
    move v15, v5

    move v3, v12

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1b
    const/4 v5, 0x0

    goto/16 :goto_23

    :cond_24
    const/16 v2, 0xf

    if-eq v1, v2, :cond_2d

    if-eqz v1, :cond_2d

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    if-eq v1, v10, :cond_2d

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2d

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2d

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2c

    const/16 v3, 0x64

    if-ne v1, v3, :cond_25

    goto/16 :goto_20

    :cond_25
    const/4 v3, 0x4

    if-ne v1, v3, :cond_27

    .line 496
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v3, v12, v1

    .line 498
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v1, v2

    mul-float v2, v3, v21

    float-to-int v2, v2

    .line 503
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_26

    .line 504
    iget v4, v8, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 505
    iget v5, v8, Landroid/graphics/Rect;->top:I

    goto :goto_1c

    .line 507
    :cond_26
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    .line 508
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    :goto_1c
    int-to-float v5, v5

    move v15, v2

    move v2, v5

    goto :goto_1b

    :cond_27
    const/16 v2, 0xe

    if-eq v1, v2, :cond_29

    if-ne v1, v9, :cond_28

    goto :goto_1d

    :cond_28
    const/4 v1, 0x7

    .line 532
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v1, v2

    move v3, v12

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v15, 0xff

    goto/16 :goto_23

    .line 511
    :cond_29
    :goto_1d
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v3, v12, v1

    .line 513
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2a

    move v3, v1

    const/4 v2, 0x0

    goto :goto_1e

    :cond_2a
    const/high16 v2, 0x42340000    # 45.0f

    mul-float/2addr v3, v2

    move v2, v3

    move v3, v12

    :goto_1e
    const/4 v4, 0x7

    .line 521
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v4, v5

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v4, v5

    mul-float v1, v1, v21

    float-to-int v1, v1

    .line 523
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/16 v6, 0xe

    if-ne v5, v6, :cond_2b

    .line 524
    iget v5, v8, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    .line 525
    iget v6, v8, Landroid/graphics/Rect;->top:I

    goto :goto_1f

    .line 527
    :cond_2b
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    .line 528
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    :goto_1f
    int-to-float v6, v6

    move v15, v1

    move v1, v4

    move v4, v5

    move v5, v2

    move v2, v6

    goto :goto_23

    :cond_2c
    move v2, v3

    goto :goto_21

    :cond_2d
    :goto_20
    const/4 v2, 0x6

    :goto_21
    if-ne v1, v2, :cond_2e

    .line 483
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v1, v1, v20

    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_22

    .line 485
    :cond_2e
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :goto_22
    sub-float v3, v12, v1

    .line 491
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 492
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x7

    .line 493
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v4, v5

    mul-float/2addr v4, v3

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    .line 494
    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v5, v5, v21

    float-to-int v5, v5

    move v15, v5

    const/4 v5, 0x0

    move/from16 v31, v4

    move v4, v1

    move/from16 v1, v31

    :goto_23
    cmpl-float v23, v3, v12

    if-eqz v23, :cond_2f

    .line 536
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 537
    invoke-virtual {v7, v3, v3, v4, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2f
    const/4 v2, 0x0

    cmpl-float v25, v5, v2

    if-eqz v25, :cond_30

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v11

    move/from16 v6, v22

    int-to-float v3, v6

    .line 541
    invoke-virtual {v7, v5, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_24

    :cond_30
    move/from16 v6, v22

    :goto_24
    if-eqz v15, :cond_33

    .line 544
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v3, v15

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 545
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v4, 0xe

    if-eq v2, v4, :cond_32

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v4, :cond_31

    goto :goto_25

    :cond_31
    int-to-float v2, v11

    sub-float v18, v2, v1

    int-to-float v3, v6

    sub-float v22, v3, v1

    add-float v26, v2, v1

    add-float v28, v3, v1

    .line 550
    iget-object v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v26

    move-object/from16 v30, v5

    move/from16 v5, v28

    move v13, v6

    move-object/from16 v6, v30

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 551
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, v26

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_26

    :cond_32
    :goto_25
    move v13, v6

    .line 546
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 547
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int v2, v11, v2

    int-to-float v2, v2

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v13, v3

    int-to-float v3, v3

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v11

    int-to-float v4, v4

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v13

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 548
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_26

    :cond_33
    move v13, v6

    :goto_26
    if-eqz v25, :cond_34

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_34
    if-eqz v23, :cond_35

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 564
    :cond_35
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq v1, v9, :cond_36

    const/16 v2, 0xe

    if-eq v1, v2, :cond_36

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3a

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v2, :cond_36

    if-ne v1, v9, :cond_3a

    :cond_36
    if-eqz v15, :cond_3a

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x43b40000    # 360.0f

    .line 565
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    mul-float/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 566
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    if-eqz v1, :cond_37

    const/4 v1, 0x2

    goto :goto_27

    :cond_37
    const/4 v1, 0x4

    :goto_27
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 567
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 569
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_38

    const/4 v3, 0x4

    if-ne v1, v3, :cond_39

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_39

    .line 570
    :cond_38
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v2, v15

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 571
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 572
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 574
    :cond_39
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->rect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 606
    :cond_3a
    :goto_28
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_3b

    move v6, v12

    move v15, v6

    goto :goto_2b

    :cond_3b
    const/4 v2, 0x4

    if-eq v1, v2, :cond_3d

    if-eq v1, v9, :cond_3d

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3c

    goto :goto_29

    .line 612
    :cond_3c
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v1, v1, v20

    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 613
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    div-float v1, v1, v20

    sub-float v1, v12, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_2a

    .line 609
    :cond_3d
    :goto_29
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    sub-float v1, v12, v3

    :goto_2a
    move v6, v1

    move v15, v3

    .line 617
    :goto_2b
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3e

    .line 618
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_backupIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2c

    .line 619
    :cond_3e
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3f

    .line 620
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_backupIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v2

    const/4 v2, 0x0

    goto :goto_2d

    :cond_3f
    const/4 v2, 0x0

    :goto_2c
    const/4 v3, 0x0

    :goto_2d
    const/16 v4, 0xf

    if-ne v1, v4, :cond_40

    .line 624
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_updatePath:[Landroid/graphics/Path;

    move-object/from16 v16, v4

    const/4 v4, 0x0

    goto :goto_2f

    .line 625
    :cond_40
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_41

    .line 626
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_updatePath:[Landroid/graphics/Path;

    goto :goto_2e

    :cond_41
    const/4 v4, 0x0

    :goto_2e
    const/16 v16, 0x0

    :goto_2f
    if-ne v1, v10, :cond_42

    .line 629
    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->chat_filePath:[Landroid/graphics/Path;

    goto :goto_30

    .line 630
    :cond_42
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v5, v10, :cond_43

    .line 631
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_filePath:[Landroid/graphics/Path;

    :cond_43
    :goto_30
    move-object v5, v4

    move-object/from16 v4, v16

    const/4 v10, 0x7

    if-ne v1, v10, :cond_44

    .line 634
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_flameIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_31

    .line 635
    :cond_44
    iget v12, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v12, v10, :cond_45

    .line 636
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_flameIcon:Landroid/graphics/drawable/Drawable;

    :cond_45
    :goto_31
    const/16 v10, 0x8

    if-ne v1, v10, :cond_46

    .line 639
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_gifIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_32

    .line 640
    :cond_46
    iget v12, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v12, v10, :cond_47

    .line 641
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_gifIcon:Landroid/graphics/drawable/Drawable;

    :cond_47
    :goto_32
    move-object v10, v2

    move-object v12, v3

    .line 645
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_49

    if-ne v1, v3, :cond_48

    goto :goto_33

    :cond_48
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move v14, v6

    move-object/from16 v18, v10

    goto/16 :goto_35

    .line 646
    :cond_49
    :goto_33
    invoke-direct {v0, v14}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 647
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v2, v3, :cond_4a

    const/16 v2, 0xff

    goto :goto_34

    :cond_4a
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v2, v2, v21

    float-to-int v2, v2

    :goto_34
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x7

    .line 648
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v3, v13, v2

    .line 649
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v2, v11, v1

    .line 650
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v9, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v9, :cond_4b

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 652
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    int-to-float v9, v11

    int-to-float v14, v13

    invoke-virtual {v7, v1, v1, v9, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_4b
    const/4 v1, 0x6

    .line 654
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int v9, v2, v9

    int-to-float v9, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int v1, v3, v14

    int-to-float v14, v1

    int-to-float v1, v2

    move-object/from16 v18, v10

    int-to-float v10, v3

    move/from16 v19, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v22, v1

    move-object/from16 v1, p1

    move/from16 v23, v2

    move v2, v9

    move v9, v3

    move v3, v14

    move-object v14, v4

    move/from16 v4, v22

    move-object/from16 v24, v14

    move-object v14, v5

    move v5, v10

    move-object/from16 v25, v14

    move/from16 v14, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0xc

    .line 655
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v2, v23, v2

    int-to-float v4, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v3, v9, v2

    int-to-float v5, v3

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v22

    move v3, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 656
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v2, :cond_4c

    .line 657
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 660
    :cond_4c
    :goto_35
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4d

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_52

    :cond_4d
    const/4 v1, 0x0

    .line 661
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 663
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_4e

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_36

    :cond_4e
    const/16 v3, 0xd

    if-ne v2, v3, :cond_4f

    .line 666
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_36

    .line 668
    :cond_4f
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    .line 671
    :goto_36
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    if-ne v1, v2, :cond_50

    const/16 v1, 0xff

    goto :goto_37

    :cond_50
    mul-float v1, v3, v21

    float-to-int v1, v1

    :goto_37
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x7

    .line 672
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    const/4 v2, 0x3

    .line 673
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    .line 674
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v2, v4, :cond_51

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v11

    int-to-float v4, v13

    .line 676
    invoke-virtual {v7, v3, v3, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 679
    :cond_51
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    mul-float/2addr v1, v2

    int-to-float v2, v11

    sub-float v9, v2, v1

    int-to-float v3, v13

    sub-float v10, v3, v1

    add-float v19, v2, v1

    add-float v22, v3, v1

    .line 680
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    move/from16 v4, v19

    move/from16 v5, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 681
    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v2, v19

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 683
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v2, :cond_52

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 687
    :cond_52
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_53

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_59

    :cond_53
    const/4 v1, 0x0

    .line 688
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 690
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v3, :cond_54

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_38

    :cond_54
    if-ne v3, v2, :cond_55

    .line 693
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_38

    .line 695
    :cond_55
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v1

    .line 698
    :goto_38
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    mul-float v2, v3, v21

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v1, 0x5

    .line 699
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v13

    .line 700
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentStringWidth:I

    const/4 v4, 0x2

    div-int/2addr v2, v4

    sub-int v2, v11, v2

    .line 701
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v4, v5, :cond_56

    .line 702
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v11

    int-to-float v5, v13

    .line 703
    invoke-virtual {v7, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 705
    :cond_56
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    mul-float v3, v3, v17

    float-to-int v3, v3

    .line 706
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentString:Ljava/lang/String;

    if-eqz v4, :cond_57

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastPercent:I

    if-eq v3, v4, :cond_58

    .line 707
    :cond_57
    iput v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastPercent:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 708
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v5, v4

    const-string v3, "%d%%"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentString:Ljava/lang/String;

    .line 709
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentStringWidth:I

    .line 711
    :cond_58
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->percentString:Ljava/lang/String;

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 712
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v1, v2, :cond_59

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 716
    :cond_59
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v2, 0x1

    if-eqz v1, :cond_5a

    if-eq v1, v2, :cond_5a

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eqz v3, :cond_5a

    if-ne v3, v2, :cond_71

    :cond_5a
    if-nez v1, :cond_5b

    .line 718
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v3, v2, :cond_5c

    :cond_5b
    if-ne v1, v2, :cond_61

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-nez v2, :cond_60

    .line 719
    :cond_5c
    iget-boolean v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v2, :cond_5e

    .line 720
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-nez v2, :cond_5d

    .line 721
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    goto :goto_39

    .line 723
    :cond_5d
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :goto_39
    const/4 v3, 0x1

    goto :goto_3c

    .line 726
    :cond_5e
    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5f

    :goto_3a
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3c

    :cond_5f
    const/4 v2, 0x0

    goto :goto_3c

    :cond_60
    const/4 v3, 0x1

    goto :goto_3b

    :cond_61
    move v3, v2

    :goto_3b
    if-ne v1, v3, :cond_5f

    goto :goto_3a

    .line 732
    :goto_3c
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eqz v4, :cond_63

    if-ne v4, v3, :cond_62

    goto :goto_3e

    :cond_62
    :goto_3d
    const/4 v3, 0x4

    goto :goto_3f

    :cond_63
    :goto_3e
    if-eqz v1, :cond_66

    if-eq v1, v3, :cond_66

    goto :goto_3d

    :goto_3f
    if-ne v4, v3, :cond_64

    .line 734
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float v3, v3, v21

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_41

    .line 736
    :cond_64
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    if-ne v1, v4, :cond_65

    const/16 v1, 0xff

    goto :goto_40

    :cond_65
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v1, v1, v21

    float-to-int v1, v1

    :goto_40
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_41

    .line 739
    :cond_66
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_41
    const/4 v1, 0x1

    .line 742
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 744
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 745
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v2

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v3

    .line 747
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne v3, v1, :cond_67

    const/high16 v4, 0x42b40000    # 90.0f

    goto :goto_42

    :cond_67
    const/4 v4, 0x0

    :goto_42
    if-nez v3, :cond_6a

    .line 748
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v5, v1, :cond_6a

    const/high16 v1, 0x43c00000    # 384.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_68

    const/high16 v1, 0x42be0000    # 95.0f

    .line 750
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v4, 0x43c00000    # 384.0f

    div-float v4, v2, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v1

    move v4, v3

    goto :goto_44

    :cond_68
    const/high16 v1, 0x43f20000    # 484.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_69

    const/high16 v1, 0x42be0000    # 95.0f

    const/high16 v3, 0x40a00000    # 5.0f

    .line 752
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const/high16 v5, 0x43c00000    # 384.0f

    sub-float v5, v2, v5

    div-float v5, v5, v17

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    goto :goto_43

    :cond_69
    const/high16 v1, 0x42b40000    # 90.0f

    :goto_43
    move v4, v1

    :goto_44
    add-float v2, v2, v17

    goto :goto_45

    :cond_6a
    if-ne v3, v1, :cond_6d

    .line 757
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-nez v1, :cond_6d

    cmpg-float v1, v2, v17

    if-gez v1, :cond_6b

    const/high16 v1, -0x3f600000    # -5.0f

    .line 759
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    div-float v4, v2, v17

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float v4, v3, v1

    goto :goto_45

    :cond_6b
    const/high16 v1, 0x43f20000    # 484.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_6c

    const/high16 v1, -0x3f600000    # -5.0f

    const/high16 v3, 0x42be0000    # 95.0f

    .line 761
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    sub-float v5, v2, v17

    const/high16 v6, 0x43c00000    # 384.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    goto :goto_45

    :cond_6c
    const/high16 v4, 0x42b40000    # 90.0f

    .line 766
    :cond_6d
    :goto_45
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 767
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eqz v1, :cond_6e

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6f

    :cond_6e
    const/4 v3, 0x4

    if-ne v1, v3, :cond_70

    .line 768
    :cond_6f
    invoke-virtual {v7, v15, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 770
    :cond_70
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->playPauseAnimator:Lorg/telegram/ui/Components/PathAnimator;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v2}, Lorg/telegram/ui/Components/PathAnimator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 771
    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 772
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->playPauseAnimator:Lorg/telegram/ui/Components/PathAnimator;

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v2}, Lorg/telegram/ui/Components/PathAnimator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 774
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 776
    :cond_71
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_72

    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, v2, :cond_78

    :cond_72
    const/4 v1, 0x0

    .line 777
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 780
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq v1, v2, :cond_75

    .line 781
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    cmpl-float v2, v1, v20

    if-lez v2, :cond_74

    sub-float v1, v1, v20

    div-float v1, v1, v20

    div-float v2, v1, v20

    const/high16 v3, 0x3f800000    # 1.0f

    .line 783
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v3, v2

    cmpl-float v3, v1, v20

    if-lez v3, :cond_73

    sub-float v1, v1, v20

    div-float v1, v1, v20

    goto :goto_46

    :cond_73
    const/4 v1, 0x0

    :goto_46
    move v3, v2

    goto :goto_47

    :cond_74
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 789
    :goto_47
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    move v8, v1

    const/4 v1, 0x7

    goto :goto_49

    .line 793
    :cond_75
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_76

    .line 794
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float v2, v2, v21

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_48

    .line 796
    :cond_76
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_48
    const/4 v1, 0x7

    const/4 v3, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 799
    :goto_49
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int v9, v13, v1

    const/4 v1, 0x3

    .line 800
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v10, v11, v2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v3, v1

    if-gez v2, :cond_77

    const/4 v1, 0x6

    .line 802
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int v2, v10, v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, v9, v4

    int-to-float v4, v4

    int-to-float v5, v10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    int-to-float v6, v9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v6, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_77
    const/4 v1, 0x0

    cmpl-float v2, v8, v1

    if-lez v2, :cond_78

    int-to-float v2, v10

    int-to-float v3, v9

    const/16 v1, 0xc

    .line 805
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    sub-float v5, v3, v1

    iget-object v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_78
    move-object/from16 v2, v18

    if-eqz v12, :cond_7a

    if-eq v12, v2, :cond_7a

    .line 810
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v14

    float-to-int v1, v1

    .line 811
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v14

    float-to-int v3, v3

    .line 812
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 813
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v4, v5, :cond_79

    const/16 v4, 0xff

    goto :goto_4a

    :cond_79
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float v4, v4, v21

    float-to-int v4, v4

    :goto_4a
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v4, 0x2

    .line 814
    div-int/2addr v1, v4

    sub-int v5, v11, v1

    div-int/2addr v3, v4

    sub-int v4, v13, v3

    add-int/2addr v1, v11

    add-int/2addr v3, v13

    invoke-virtual {v12, v5, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 815
    invoke-virtual {v12, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7a
    if-eqz v2, :cond_7c

    .line 818
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v15

    float-to-int v1, v1

    .line 819
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-int v3, v3

    .line 820
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 821
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v4, v5, :cond_7b

    const/16 v4, 0xff

    goto :goto_4b

    :cond_7b
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v4, v4, v21

    float-to-int v4, v4

    :goto_4b
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v4, 0x2

    .line 822
    div-int/2addr v1, v4

    sub-int v5, v11, v1

    div-int/2addr v3, v4

    sub-int v12, v13, v3

    add-int/2addr v1, v11

    add-int/2addr v3, v13

    invoke-virtual {v2, v5, v12, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 823
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7c
    move-object/from16 v1, v24

    if-eqz v25, :cond_80

    move-object/from16 v4, v25

    if-eq v4, v1, :cond_80

    const/16 v2, 0x18

    .line 827
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 828
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 829
    iget-object v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v5, v6, :cond_7d

    const/16 v5, 0xff

    goto :goto_4c

    :cond_7d
    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    mul-float v5, v5, v21

    float-to-int v5, v5

    :goto_4c
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x1

    .line 830
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v11

    int-to-float v5, v13

    .line 832
    invoke-virtual {v7, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 833
    invoke-virtual {v7, v14, v14}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v2, v2

    const/4 v3, 0x2

    .line 834
    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v7, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 835
    aget-object v3, v4, v2

    if-eqz v3, :cond_7e

    .line 836
    aget-object v3, v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7e
    const/4 v2, 0x1

    .line 838
    aget-object v3, v4, v2

    if-eqz v3, :cond_7f

    .line 839
    aget-object v3, v4, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 841
    :cond_7f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_80
    if-eqz v1, :cond_86

    const/16 v2, 0x18

    .line 844
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 845
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v3, v4, :cond_81

    const/16 v3, 0xff

    goto :goto_4d

    :cond_81
    iget v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    mul-float v3, v3, v21

    float-to-int v3, v3

    .line 846
    :goto_4d
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 847
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v4, 0x1

    .line 848
    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/MediaActionDrawable;->applyShaderMatrix(Z)V

    .line 849
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v11

    int-to-float v5, v13

    .line 850
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 851
    invoke-virtual {v7, v15, v15}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v2, v2

    const/4 v4, 0x2

    .line 852
    div-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v7, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 853
    aget-object v4, v1, v2

    if-eqz v4, :cond_82

    .line 854
    aget-object v4, v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 856
    :cond_82
    array-length v2, v1

    const/4 v4, 0x3

    if-lt v2, v4, :cond_83

    const/4 v2, 0x2

    aget-object v4, v1, v2

    if-eqz v4, :cond_83

    .line 857
    aget-object v4, v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_83
    const/4 v2, 0x1

    .line 859
    aget-object v4, v1, v2

    if-eqz v4, :cond_85

    const/16 v2, 0xff

    if-eq v3, v2, :cond_84

    .line 861
    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 862
    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    int-to-float v5, v2

    int-to-float v3, v3

    div-float v3, v3, v21

    mul-float/2addr v5, v3

    float-to-int v3, v5

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x1

    .line 863
    aget-object v1, v1, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 864
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4e

    :cond_84
    const/4 v3, 0x1

    .line 866
    aget-object v1, v1, v3

    iget-object v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 869
    :cond_85
    :goto_4e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 872
    :cond_86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 873
    iget-wide v3, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastAnimationTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x11

    cmp-long v5, v3, v5

    if-lez v5, :cond_87

    const-wide/16 v3, 0x11

    .line 877
    :cond_87
    iput-wide v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->lastAnimationTime:J

    .line 879
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_89

    const/16 v2, 0xe

    if-eq v1, v2, :cond_89

    const/4 v5, 0x4

    if-ne v1, v5, :cond_88

    iget v5, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v5, v2, :cond_89

    :cond_88
    const/16 v2, 0xa

    if-eq v1, v2, :cond_89

    const/16 v2, 0xd

    if-ne v1, v2, :cond_8c

    .line 880
    :cond_89
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    const-wide/16 v5, 0x168

    mul-long/2addr v5, v3

    long-to-float v2, v5

    const v5, 0x451c4000    # 2500.0f

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    .line 881
    invoke-static {v1}, Lorg/telegram/ui/Components/MediaActionDrawable;->getCircleValue(F)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    .line 883
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8b

    .line 884
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    iget v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    sub-float v5, v1, v2

    const/4 v6, 0x0

    cmpl-float v8, v5, v6

    if-lez v8, :cond_8b

    .line 886
    iget v8, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    long-to-float v9, v3

    add-float/2addr v8, v9

    iput v8, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    const/high16 v9, 0x43480000    # 200.0f

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_8a

    .line 888
    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    .line 889
    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    .line 890
    iput v6, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    goto :goto_4f

    .line 892
    :cond_8a
    iget-object v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x43480000    # 200.0f

    div-float/2addr v8, v6

    invoke-virtual {v1, v8}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v5, v1

    add-float/2addr v2, v5

    iput v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    .line 896
    :cond_8b
    :goto_4f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    .line 899
    :cond_8c
    iget-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v1, :cond_8e

    .line 900
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v5, v1, v2

    if-gez v5, :cond_8e

    long-to-float v3, v3

    .line 901
    iget v4, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8d

    .line 903
    iget v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    iput v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    .line 904
    iput v2, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    const/4 v1, 0x0

    .line 905
    iput-boolean v1, v0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    .line 907
    :cond_8d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    :cond_8e
    move/from16 v1, v27

    const/4 v2, 0x1

    if-lt v1, v2, :cond_8f

    .line 911
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8f
    return-void
.end method

.method public getCurrentIcon()I
    .locals 1

    .line 209
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0x30

    .line 922
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x30

    .line 917
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    const/16 v0, 0x30

    .line 932
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    const/16 v0, 0x30

    .line 927
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPreviousIcon()I
    .locals 1

    .line 213
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 235
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    return v0
.end method

.method public getTransitionProgress()F
    .locals 1

    .line 250
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    .line 277
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->delegate:Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;->invalidate()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBackColor(I)V
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->backPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->messageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-void
.end method

.method public setBackgroundGradientDrawable(Landroid/graphics/LinearGradient;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientDrawable:Landroid/graphics/LinearGradient;

    .line 259
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->gradientMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 269
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->scale:F

    const p2, 0x3f333333    # 0.7f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 137
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint3:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->delegate:Lorg/telegram/ui/Components/MediaActionDrawable$MediaActionDrawableDelegate;

    return-void
.end method

.method public setHasOverlayImage(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->hasOverlayImage:Z

    return-void
.end method

.method public setIcon(IZ)Z
    .locals 7

    .line 163
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-eq v0, p1, :cond_0

    .line 164
    iput v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    .line 165
    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xe

    const/4 v5, 0x0

    if-eqz p2, :cond_d

    .line 168
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-eq p2, p1, :cond_c

    iget v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    if-eq p1, v3, :cond_3

    :cond_2
    if-ne p2, v3, :cond_4

    if-nez p1, :cond_4

    :cond_3
    const/high16 p2, 0x43960000    # 300.0f

    .line 172
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_6

    if-eq p1, v0, :cond_5

    if-ne p1, v4, :cond_6

    :cond_5
    const/high16 p2, 0x43c80000    # 400.0f

    .line 174
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    if-eq p2, v2, :cond_7

    const/4 v6, 0x6

    if-ne p1, v6, :cond_7

    const/high16 p2, 0x43b40000    # 360.0f

    .line 176
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    goto :goto_0

    :cond_7
    if-ne p2, v2, :cond_8

    if-eq p1, v4, :cond_9

    :cond_8
    if-ne p2, v4, :cond_a

    if-ne p1, v2, :cond_a

    :cond_9
    const/high16 p2, 0x43200000    # 160.0f

    .line 178
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    goto :goto_0

    :cond_a
    const/high16 p2, 0x435c0000    # 220.0f

    .line 180
    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionAnimationTime:F

    .line 182
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    if-eqz p2, :cond_b

    .line 183
    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    .line 185
    :cond_b
    iput-boolean v3, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    .line 186
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    .line 187
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    .line 188
    iput v5, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    goto :goto_2

    :cond_c
    :goto_1
    return v2

    .line 190
    :cond_d
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    if-ne p2, p1, :cond_e

    return v2

    .line 193
    :cond_e
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatingTransition:Z

    .line 194
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->nextIcon:I

    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->currentIcon:I

    .line 195
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->savedTransitionProgress:F

    .line 196
    iput v1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->transitionProgress:F

    :goto_2
    if-eq p1, v0, :cond_f

    if-ne p1, v4, :cond_10

    :cond_f
    const/high16 p1, 0x42e00000    # 112.0f

    .line 199
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadRadOffset:F

    .line 200
    iput v5, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    .line 201
    iput v5, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    .line 202
    iput v5, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    .line 204
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    return v3
.end method

.method public setMini(Z)V
    .locals 1

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->isMini:Z

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->paint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setOverrideAlpha(F)V
    .locals 0

    .line 121
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->overrideAlpha:F

    return-void
.end method

.method public setProgress(FZ)V
    .locals 1

    .line 217
    iget v0, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 221
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    .line 222
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    goto :goto_0

    .line 224
    :cond_1
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_2

    .line 225
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    .line 227
    :cond_2
    iget p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->animatedDownloadProgress:F

    iput p2, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressAnimationStart:F

    .line 229
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgress:F

    const/4 p1, 0x0

    .line 230
    iput p1, p0, Lorg/telegram/ui/Components/MediaActionDrawable;->downloadProgressTime:F

    .line 231
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MediaActionDrawable;->invalidateSelf()V

    return-void
.end method
