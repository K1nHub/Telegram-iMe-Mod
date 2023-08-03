.class public Lorg/telegram/ui/Components/RadialProgress;
.super Ljava/lang/Object;
.source "RadialProgress.java"


# static fields
.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private alphaForMiniPrevious:Z

.field private alphaForPrevious:Z

.field private animatedAlphaValue:F

.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private checkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private cicleRect:Landroid/graphics/RectF;

.field private currentDrawable:Landroid/graphics/drawable/Drawable;

.field private currentMiniDrawable:Landroid/graphics/drawable/Drawable;

.field private currentMiniWithRound:Z

.field private currentProgress:F

.field private currentProgressTime:J

.field private currentWithRound:Z

.field private diff:I

.field private disableUpdate:Z

.field private drawMiniProgress:Z

.field private hideCurrentDrawable:Z

.field private lastUpdateTime:J

.field private miniDrawBitmap:Landroid/graphics/Bitmap;

.field private miniDrawCanvas:Landroid/graphics/Canvas;

.field private miniProgressBackgroundPaint:Landroid/graphics/Paint;

.field private miniProgressPaint:Landroid/graphics/Paint;

.field private overrideAlpha:F

.field private overridePaint:Landroid/graphics/Paint;

.field private parent:Landroid/view/View;

.field private previousDrawable:Landroid/graphics/drawable/Drawable;

.field private previousMiniDrawable:Landroid/graphics/drawable/Drawable;

.field private previousMiniWithRound:Z

.field private previousWithRound:Z

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private progressRect:Landroid/graphics/RectF;

.field private radOffset:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    const/4 v2, 0x0

    .line 29
    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    .line 30
    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    .line 31
    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    .line 32
    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    .line 33
    iput v2, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    const/4 v1, 0x4

    .line 60
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgress;->alphaForPrevious:Z

    .line 64
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RadialProgress;->alphaForMiniPrevious:Z

    .line 69
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->overridePaint:Landroid/graphics/Paint;

    .line 159
    sget-object v0, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 162
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    .line 163
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    .line 168
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    .line 174
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    return-void
.end method

.method private invalidateParent()V
    .locals 7

    const/4 v0, 0x2

    .line 315
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 316
    iget-object v2, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    iget-object v3, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    sub-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    sub-int/2addr v5, v1

    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    mul-int/2addr v1, v0

    add-int/2addr v6, v1

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v4, v5, v6, v0}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method private updateAnimation(Z)V
    .locals 14

    .line 198
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->disableUpdate:Z

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 202
    iget-wide v2, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    sub-long v2, v0, v2

    .line 203
    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->checkBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v4, v0, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v4, v0, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    throw v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x43480000    # 200.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_a

    .line 211
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_5

    .line 212
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    const-wide/16 v8, 0x168

    mul-long/2addr v8, v2

    long-to-float v8, v8

    const v9, 0x453b8000    # 3000.0f

    div-float/2addr v8, v9

    add-float/2addr p1, v8

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    .line 213
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iget v8, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    sub-float v9, p1, v8

    cmpl-float v10, v9, v6

    if-lez v10, :cond_4

    .line 215
    iget-wide v10, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    add-long/2addr v10, v2

    iput-wide v10, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    const-wide/16 v12, 0x12c

    cmp-long v12, v10, v12

    if-ltz v12, :cond_3

    .line 217
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 218
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    const-wide/16 v8, 0x0

    .line 219
    iput-wide v8, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    goto :goto_1

    .line 221
    :cond_3
    sget-object p1, Lorg/telegram/ui/Components/RadialProgress;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    long-to-float v10, v10

    const/high16 v11, 0x43960000    # 300.0f

    div-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr v9, p1

    add-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 224
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    .line 226
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    if-eqz p1, :cond_8

    .line 227
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float p1, p1, v7

    if-ltz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    .line 228
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float p1, p1, v6

    if-gtz p1, :cond_7

    .line 230
    iput v6, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 231
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    .line 234
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    goto :goto_4

    .line 237
    :cond_8
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float p1, p1, v7

    if-ltz p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    .line 238
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v0, v2

    div-float/2addr v0, v5

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float p1, p1, v6

    if-gtz p1, :cond_9

    .line 240
    iput v6, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 241
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    goto :goto_4

    .line 247
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    if-eqz p1, :cond_d

    .line 248
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    .line 249
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float p1, p1, v6

    if-gtz p1, :cond_c

    .line 251
    iput v6, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 252
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    .line 253
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_b
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    .line 255
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    goto :goto_4

    .line 258
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    .line 259
    iget p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    long-to-float v0, v2

    div-float/2addr v0, v5

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpg-float p1, p1, v6

    if-gtz p1, :cond_e

    .line 261
    iput v6, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 262
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 264
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    :cond_f
    :goto_4
    return-void
.end method


# virtual methods
.method public copyParams(Lorg/telegram/ui/Components/RadialProgress;)V
    .locals 2

    .line 78
    iget v0, p1, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    .line 79
    iget v0, p1, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 80
    iget p1, p1, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    .line 84
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 411
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v9, 0x437f0000    # 255.0f

    if-eqz v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    .line 412
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 413
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 416
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget v10, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v10, v9

    float-to-int v10, v10

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 417
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_1

    .line 418
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    float-to-int v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v2, v8, v8, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 421
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    float-to-int v11, v11

    iget v12, v10, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    iget v13, v10, Landroid/graphics/RectF;->right:F

    float-to-int v13, v13

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-int v10, v10

    invoke-virtual {v2, v11, v12, v13, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 422
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 429
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/16 v10, 0x2c

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    cmpg-float v2, v2, v10

    const/16 v10, 0x12

    const/4 v11, 0x2

    if-gez v2, :cond_2

    const/16 v2, 0x14

    .line 432
    iget-object v12, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    const/16 v13, 0x10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v12, v14

    .line 433
    iget-object v14, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v14, v13

    move v13, v8

    goto :goto_1

    :cond_2
    const/16 v2, 0x16

    .line 437
    iget-object v12, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 438
    iget-object v13, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v14, v13

    move v13, v11

    .line 440
    :goto_1
    div-int/lit8 v15, v2, 0x2

    .line 443
    iget-object v7, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Lorg/telegram/ui/Components/RadialProgress;->alphaForMiniPrevious:Z

    if-eqz v7, :cond_3

    .line 444
    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    iget v4, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v7, v4

    goto :goto_2

    :cond_3
    move v7, v6

    .line 447
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v4, :cond_4

    add-int/2addr v2, v10

    add-int/2addr v2, v13

    .line 448
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v13, v15, 0x1

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v10, v2, v13, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 450
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 452
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v3, v9

    iget v4, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    .line 454
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_3
    const/16 v2, 0xc

    .line 456
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v14, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 459
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_6

    .line 460
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    int-to-float v3, v3

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v4, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 463
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    .line 464
    iget-boolean v3, v0, Lorg/telegram/ui/Components/RadialProgress;->alphaForMiniPrevious:Z

    if-eqz v3, :cond_7

    .line 465
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v3, v9

    iget v4, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_5

    .line 467
    :cond_7
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 469
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float v3, v12, v3

    float-to-int v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    sub-float v4, v14, v4

    float-to-int v4, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    add-float/2addr v10, v12

    float-to-int v10, v10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v2, v3, v4, v10, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 470
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    :cond_8
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->hideCurrentDrawable:Z

    if-nez v2, :cond_a

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    .line 474
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    .line 475
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    sub-float/2addr v6, v3

    mul-float/2addr v6, v9

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_6

    .line 477
    :cond_9
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 479
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v12, v3

    float-to-int v3, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v14, v4

    float-to-int v4, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v12

    float-to-int v6, v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v14

    float-to-int v10, v10

    invoke-virtual {v2, v3, v4, v6, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 480
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 483
    :cond_a
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniWithRound:Z

    if-nez v2, :cond_c

    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniWithRound:Z

    if-eqz v2, :cond_b

    goto :goto_7

    .line 494
    :cond_b
    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    goto/16 :goto_f

    .line 484
    :cond_c
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniWithRound:Z

    if-eqz v2, :cond_d

    .line 486
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v3, v9

    iget v4, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    .line 488
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 490
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    sub-int/2addr v15, v11

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float v3, v12, v3

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    sub-float v4, v14, v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float/2addr v12, v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float/2addr v14, v6

    invoke-virtual {v2, v3, v4, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 491
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    add-float/2addr v3, v5

    iget v4, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/RadialProgress;->miniProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v1, 0x1

    .line 492
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    goto/16 :goto_f

    .line 497
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_10

    .line 498
    iget-boolean v3, v0, Lorg/telegram/ui/Components/RadialProgress;->alphaForPrevious:Z

    if-eqz v3, :cond_f

    .line 499
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v3, v9

    iget v4, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_9

    .line 501
    :cond_f
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 503
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v7, v3, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v10, v3, Landroid/graphics/RectF;->right:F

    float-to-int v10, v10

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v2, v4, v7, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 504
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 507
    :cond_10
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->hideCurrentDrawable:Z

    if-nez v2, :cond_12

    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_12

    .line 508
    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_11

    .line 509
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    sub-float/2addr v6, v3

    mul-float/2addr v6, v9

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_a

    .line 511
    :cond_11
    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 513
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 514
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 517
    :cond_12
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    if-nez v2, :cond_14

    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    if-eqz v2, :cond_13

    goto :goto_b

    .line 534
    :cond_13
    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    goto :goto_f

    .line 519
    :cond_14
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->overridePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_15

    :goto_c
    move-object v6, v2

    goto :goto_e

    .line 522
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    if-eqz v2, :cond_16

    .line 524
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    mul-float/2addr v3, v9

    iget v4, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_d

    .line 526
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->overrideAlpha:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 528
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->progressPaint:Landroid/graphics/Paint;

    goto :goto_c

    .line 530
    :goto_e
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v7, v0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    int-to-float v8, v7

    add-float/2addr v4, v8

    iget v8, v3, Landroid/graphics/RectF;->top:F

    int-to-float v9, v7

    add-float/2addr v8, v9

    iget v9, v3, Landroid/graphics/RectF;->right:F

    int-to-float v10, v7

    sub-float/2addr v9, v10

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v7

    sub-float/2addr v3, v7

    invoke-virtual {v2, v4, v8, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 531
    iget-object v2, v0, Lorg/telegram/ui/Components/RadialProgress;->cicleRect:Landroid/graphics/RectF;

    iget v3, v0, Lorg/telegram/ui/Components/RadialProgress;->radOffset:F

    add-float/2addr v3, v5

    iget v4, v0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v1, 0x1

    .line 532
    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RadialProgress;->updateAnimation(Z)V

    :goto_f
    return-void
.end method

.method public getAnimatedProgress()F
    .locals 1

    .line 74
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 2

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RadialProgress;->lastUpdateTime:J

    if-eqz p3, :cond_0

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 339
    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 341
    iput v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 342
    invoke-virtual {p0, v0, p3}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousWithRound:Z

    .line 347
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/RadialProgress;->currentWithRound:Z

    .line 348
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_1

    .line 350
    iget-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->parent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 352
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    :goto_1
    return-void
.end method

.method public setDiff(I)V
    .locals 0

    .line 271
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->diff:I

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lorg/telegram/ui/Components/RadialProgress;->overridePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setProgress(FZ)V
    .locals 4

    .line 287
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_2

    .line 288
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 289
    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 290
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousMiniDrawable:Landroid/graphics/drawable/Drawable;

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->currentMiniDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadialProgress;->drawMiniProgress:Z

    goto :goto_1

    :cond_1
    cmpl-float v0, p1, v2

    if-eqz v0, :cond_2

    .line 294
    iget v0, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 295
    iput v3, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedAlphaValue:F

    .line 296
    iput-object v1, p0, Lorg/telegram/ui/Components/RadialProgress;->previousDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    .line 300
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 301
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    goto :goto_2

    .line 303
    :cond_3
    iget p2, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    cmpl-float p2, p2, p1

    if-lez p2, :cond_4

    .line 304
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    .line 306
    :cond_4
    iget p2, p0, Lorg/telegram/ui/Components/RadialProgress;->animatedProgressValue:F

    iput p2, p0, Lorg/telegram/ui/Components/RadialProgress;->animationProgressStart:F

    .line 308
    :goto_2
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgress:F

    const-wide/16 p1, 0x0

    .line 309
    iput-wide p1, p0, Lorg/telegram/ui/Components/RadialProgress;->currentProgressTime:J

    .line 311
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadialProgress;->invalidateParent()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 275
    iput p1, p0, Lorg/telegram/ui/Components/RadialProgress;->progressColor:I

    return-void
.end method

.method public setProgressRect(IIII)V
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/RadialProgress;->progressRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
