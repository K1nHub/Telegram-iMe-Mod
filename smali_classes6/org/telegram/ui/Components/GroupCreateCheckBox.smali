.class public Lorg/telegram/ui/Components/GroupCreateCheckBox;
.super Landroid/view/View;
.source "GroupCreateCheckBox.java"


# static fields
.field private static eraser:Landroid/graphics/Paint;

.field private static eraser2:Landroid/graphics/Paint;


# instance fields
.field private attachedToWindow:Z

.field private backgroundInnerPaint:Landroid/graphics/Paint;

.field private backgroundKey:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private bitmapCanvas:Landroid/graphics/Canvas;

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkKey:I

.field private checkPaint:Landroid/graphics/Paint;

.field private checkScale:F

.field private drawBitmap:Landroid/graphics/Bitmap;

.field private innerKey:I

.field private innerRadDiff:I

.field private isCheckAnimation:Z

.field private isChecked:Z

.field private progress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->isCheckAnimation:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkScale:F

    .line 46
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundKey:I

    .line 47
    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkKey:I

    .line 48
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerKey:I

    .line 55
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser2:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    sget-object v0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser2:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundInnerPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkPaint:Landroid/graphics/Paint;

    .line 68
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x2

    .line 69
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerRadDiff:I

    .line 70
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    sget-object p1, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser2:Landroid/graphics/Paint;

    const/16 v0, 0x1c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 p1, 0x18

    .line 73
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    .line 74
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    return-void
.end method

.method private animateToCheckedState(Z)V
    .locals 2

    .line 117
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->isCheckAnimation:Z

    const/4 v0, 0x1

    new-array v0, v0, [F

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    .line 118
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelCheckAnimator()V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 103
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->progress:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 126
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->attachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->attachedToWindow:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->progress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v2, 0x2

    div-int/2addr v0, v2

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v2

    .line 166
    sget-object v4, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser2:Landroid/graphics/Paint;

    const/16 v5, 0x1e

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 170
    iget v4, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->progress:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v6, v4, v5

    const/high16 v7, 0x3f800000    # 1.0f

    if-ltz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    div-float v6, v4, v5

    :goto_0
    cmpg-float v8, v4, v5

    if-gez v8, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    sub-float v8, v4, v5

    div-float/2addr v8, v5

    .line 173
    :goto_1
    iget-boolean v5, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->isCheckAnimation:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    sub-float v4, v7, v4

    :goto_2
    const v5, 0x3e4ccccd    # 0.2f

    cmpg-float v9, v4, v5

    if-gez v9, :cond_4

    .line 176
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    div-float/2addr v9, v5

    goto :goto_3

    :cond_4
    const v9, 0x3ecccccd    # 0.4f

    cmpg-float v9, v4, v9

    if-gez v9, :cond_5

    .line 178
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v4, v5

    mul-float/2addr v10, v4

    div-float/2addr v10, v5

    sub-float/2addr v9, v10

    goto :goto_3

    :cond_5
    move v9, v1

    :goto_3
    cmpl-float v4, v8, v1

    if-eqz v4, :cond_6

    int-to-float v4, v0

    int-to-float v5, v3

    .line 184
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int v10, v0, v10

    int-to-float v10, v10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v10, v2

    sub-float/2addr v10, v9

    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v10, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 187
    :cond_6
    iget v2, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerRadDiff:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    sub-float/2addr v2, v9

    .line 188
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    int-to-float v5, v0

    int-to-float v9, v3

    iget-object v10, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v9, v2, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->bitmapCanvas:Landroid/graphics/Canvas;

    sub-float/2addr v7, v6

    mul-float/2addr v2, v7

    sget-object v6, Lorg/telegram/ui/Components/GroupCreateCheckBox;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v9, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    iget-object v2, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 v1, 0xa

    .line 192
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    iget v2, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkScale:F

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    .line 193
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    iget v4, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkScale:F

    mul-float/2addr v2, v4

    const/4 v4, 0x1

    .line 194
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v0, v4

    const/4 v4, 0x4

    .line 195
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    mul-float/2addr v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    float-to-double v5, v2

    .line 196
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    int-to-float v6, v0

    int-to-float v3, v3

    sub-float v8, v6, v2

    sub-float v9, v3, v2

    .line 197
    iget-object v10, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float/2addr v1, v1

    div-float/2addr v1, v4

    float-to-double v1, v1

    .line 198
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    .line 199
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v8, v0

    add-float v10, v8, v1

    sub-float v11, v3, v1

    .line 200
    iget-object v12, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkPaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v3

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method public setCheckScale(F)V
    .locals 0

    .line 107
    iput p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkScale:F

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->isChecked:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 140
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->isChecked:Z

    .line 142
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->attachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 143
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->animateToCheckedState(Z)V

    goto :goto_1

    .line 145
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->cancelCheckAnimator()V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 146
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->setProgress(F)V

    :goto_1
    return-void
.end method

.method public setColorKeysOverrides(III)V
    .locals 0

    .line 79
    iput p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkKey:I

    .line 80
    iput p2, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerKey:I

    .line 81
    iput p3, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundKey:I

    .line 82
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupCreateCheckBox;->updateColors()V

    return-void
.end method

.method public setInnerRadDiff(I)V
    .locals 0

    .line 155
    iput p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerRadDiff:I

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 94
    iget v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->progress:F

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundInnerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->innerKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->backgroundKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/GroupCreateCheckBox;->checkKey:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
