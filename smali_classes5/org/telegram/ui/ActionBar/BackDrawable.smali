.class public Lorg/telegram/ui/ActionBar/BackDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackDrawable.java"


# instance fields
.field private alwaysClose:Z

.field private animationTime:F

.field private arrowRotation:I

.field private color:I

.field private currentAnimationTime:I

.field private currentRotation:F

.field private finalRotation:F

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastFrameTime:J

.field private paint:Landroid/graphics/Paint;

.field private prevPaint:Landroid/graphics/Paint;

.field private reverseAngle:Z

.field private rotated:Z

.field private rotatedColor:I


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->prevPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    const v0, -0x8a8a8b

    .line 34
    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    const/high16 v0, 0x43960000    # 300.0f

    .line 35
    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    .line 36
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->prevPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->prevPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 95
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget v1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 96
    iget-wide v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    sub-long/2addr v2, v4

    .line 99
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-long v4, v0

    add-long/2addr v4, v2

    long-to-int v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-float v2, v0

    .line 100
    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 101
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    goto :goto_0

    .line 103
    :cond_0
    iget v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 104
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    mul-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v1, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    .line 110
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 111
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 114
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 115
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_2

    :cond_5
    move v3, v2

    .line 116
    :goto_2
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotated:Z

    if-eqz v4, :cond_6

    iget v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 117
    :cond_6
    iget v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/2addr v4, v0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    add-int/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v4, v0, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 118
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->arrowRotation:I

    if-eqz v0, :cond_7

    int-to-float v0, v0

    .line 123
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 125
    :cond_7
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    .line 126
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    if-nez v2, :cond_9

    .line 127
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    if-eqz v2, :cond_8

    const/16 v2, -0xe1

    goto :goto_3

    :cond_8
    const/16 v2, 0x87

    :goto_3
    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_5

    :cond_9
    const/high16 v2, 0x43070000    # 135.0f

    .line 129
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    if-eqz v3, :cond_a

    const/16 v3, -0xb4

    goto :goto_4

    :cond_a
    const/16 v3, 0xb4

    :goto_4
    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    move v0, v1

    :goto_5
    const/high16 v2, -0x3f280000    # -6.75f

    const/high16 v3, -0x3f000000    # -8.0f

    .line 132
    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v4, v2

    const/4 v5, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    sub-float/2addr v1, v0

    mul-float/2addr v3, v1

    sub-float v6, v2, v3

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, -0x41800000    # -0.25f

    .line 133
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v5, v2

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v3, 0x41000000    # 8.0f

    .line 134
    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    sub-float v7, v2, v3

    const/high16 v1, -0x3f180000    # -7.25f

    const/4 v2, 0x0

    .line 135
    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    const/4 v6, 0x0

    neg-float v10, v5

    neg-float v12, v7

    .line 137
    iget-object v13, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    move-object v8, p1

    move v9, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 138
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0x18

    .line 164
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x18

    .line 159
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setAnimationTime(F)V
    .locals 0

    .line 86
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    return-void
.end method

.method public setArrowRotation(I)V
    .locals 0

    .line 59
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->arrowRotation:I

    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 49
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->color:I

    .line 50
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setRotatedColor(I)V
    .locals 0

    .line 54
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->rotatedColor:I

    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRotation(FZ)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 65
    iget v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 66
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 68
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    .line 70
    :cond_1
    :goto_0
    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    if-eqz p2, :cond_3

    cmpg-float p2, v2, p1

    if-gez p2, :cond_2

    .line 73
    iget p2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    mul-float/2addr v2, p2

    float-to-int p2, v2

    iput p2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    goto :goto_1

    :cond_2
    sub-float/2addr v3, v2

    .line 75
    iget p2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->animationTime:F

    mul-float/2addr v3, p2

    float-to-int p2, v3

    iput p2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    .line 77
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 78
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    goto :goto_2

    .line 80
    :cond_3
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    .line 82
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
