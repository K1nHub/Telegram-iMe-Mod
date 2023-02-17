.class public Lorg/telegram/ui/Components/RadioButton;
.super Landroid/view/View;
.source "RadioButton.java"


# static fields
.field private static checkedPaint:Landroid/graphics/Paint;

.field private static eraser:Landroid/graphics/Paint;

.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private attachedToWindow:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapCanvas:Landroid/graphics/Canvas;

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkedColor:I

.field private color:I

.field private isChecked:Z

.field private progress:F

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    .line 41
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    .line 45
    sget-object p1, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    .line 47
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    sget-object p1, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/Components/RadioButton;->eraser:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    sget-object p1, Lorg/telegram/ui/Components/RadioButton;->eraser:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 56
    :cond_0
    :try_start_0
    iget p1, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    .line 57
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 59
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private animateToCheckedState(Z)V
    .locals 2

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

    .line 111
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelCheckAnimator()V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    return v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 74
    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->attachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 124
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->attachedToWindow:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    iput-object v1, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    .line 154
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    .line 155
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 157
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 162
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, v0, v3

    if-gtz v4, :cond_3

    .line 163
    sget-object v0, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    sget-object v0, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    div-float/2addr v0, v3

    goto :goto_1

    :cond_3
    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v0, v4, v0

    .line 168
    iget v4, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 169
    iget v5, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    sub-int/2addr v5, v4

    int-to-float v5, v5

    sub-float v6, v2, v0

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 170
    iget v7, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 171
    iget v8, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    sub-int/2addr v8, v7

    int-to-float v8, v8

    mul-float v8, v8, v6

    float-to-int v8, v8

    .line 172
    iget v9, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 173
    iget v10, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    sub-int/2addr v10, v9

    int-to-float v10, v10

    mul-float v10, v10, v6

    float-to-int v6, v10

    add-int/2addr v4, v5

    add-int/2addr v7, v8

    add-int/2addr v9, v6

    .line 174
    invoke-static {v4, v7, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 175
    sget-object v5, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    sget-object v5, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    .line 179
    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 180
    iget v4, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float v5, v0, v2

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    .line 181
    iget-object v5, p0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sget-object v8, Lorg/telegram/ui/Components/RadioButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    iget v5, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    const/4 v6, 0x1

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_4

    .line 183
    iget-object v3, p0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v4, v8

    sget-object v9, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    iget-object v3, p0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    sub-float/2addr v2, v0

    mul-float v4, v4, v2

    sget-object v0, Lorg/telegram/ui/Components/RadioButton;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v7, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 186
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/RadioButton;->bitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v7, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    div-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iget v6, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    sub-float/2addr v4, v6

    mul-float v4, v4, v0

    add-float/2addr v7, v4

    sget-object v0, Lorg/telegram/ui/Components/RadioButton;->checkedPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RadioButton;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 95
    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->isChecked:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 132
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RadioButton;->isChecked:Z

    .line 134
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RadioButton;->attachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RadioButton;->animateToCheckedState(Z)V

    goto :goto_1

    .line 137
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RadioButton;->cancelCheckAnimator()V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 138
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RadioButton;->setProgress(F)V

    :goto_1
    return-void
.end method

.method public setCheckedColor(I)V
    .locals 0

    .line 100
    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColor(II)V
    .locals 0

    .line 89
    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->color:I

    .line 90
    iput p2, p0, Lorg/telegram/ui/Components/RadioButton;->checkedColor:I

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 65
    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->progress:F

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSize(I)V
    .locals 1

    .line 78
    iget v0, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    if-ne v0, p1, :cond_0

    return-void

    .line 81
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/RadioButton;->size:I

    return-void
.end method
