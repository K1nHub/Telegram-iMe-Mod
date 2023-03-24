.class public Lorg/telegram/ui/Components/CheckBoxSquare;
.super Landroid/view/View;
.source "CheckBoxSquare.java"


# instance fields
.field private attachedToWindow:Z

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private drawBitmap:Landroid/graphics/Bitmap;

.field private drawCanvas:Landroid/graphics/Canvas;

.field private isAlert:Z

.field private isChecked:Z

.field private isDisabled:Z

.field private key1:Ljava/lang/String;

.field private key2:Ljava/lang/String;

.field private key3:Ljava/lang/String;

.field private progress:F

.field private rectF:Landroid/graphics/RectF;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-object p3, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 69
    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_backgroundPaint:Landroid/graphics/Paint;

    if-nez p3, :cond_0

    .line 70
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createCommonResources(Landroid/content/Context;)V

    .line 73
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isAlert:Z

    if-eqz p1, :cond_1

    const-string p3, "dialogCheckboxSquareUnchecked"

    goto :goto_0

    :cond_1
    const-string p3, "checkboxSquareUnchecked"

    :goto_0
    iput-object p3, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->key1:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p3, "dialogCheckboxSquareBackground"

    goto :goto_1

    :cond_2
    const-string p3, "checkboxSquareBackground"

    .line 74
    :goto_1
    iput-object p3, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->key2:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, "dialogCheckboxSquareCheck"

    goto :goto_2

    :cond_3
    const-string p1, "checkboxSquareCheck"

    .line 75
    :goto_2
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->key3:Ljava/lang/String;

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->rectF:Landroid/graphics/RectF;

    const/16 p1, 0x12

    .line 78
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawBitmap:Landroid/graphics/Bitmap;

    .line 79
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p3, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawCanvas:Landroid/graphics/Canvas;

    .line 80
    iput-boolean p2, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isAlert:Z

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

    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->checkAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x12c

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private cancelCheckAnimator()V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 101
    iget v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    return v0
.end method

.method protected getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method public isChecked()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->attachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 124
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->attachedToWindow:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->key1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    .line 164
    iget-object v1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->key2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/CheckBoxSquare;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    .line 165
    iget v2, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-gtz v4, :cond_1

    div-float/2addr v2, v3

    .line 167
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 168
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    .line 169
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    sub-int/2addr v1, v7

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 170
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v4, v6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v7, v4, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 171
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v2

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    .line 175
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v2

    move v2, v5

    .line 177
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isDisabled:Z

    if-eqz v1, :cond_3

    .line 178
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_backgroundPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isAlert:Z

    if-eqz v4, :cond_2

    const-string v4, "dialogCheckboxSquareDisabled"

    goto :goto_1

    :cond_2
    const-string v4, "checkboxSquareDisabled"

    :goto_1
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/CheckBoxSquare;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    const/4 v1, 0x1

    .line 180
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 181
    iget-object v4, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->rectF:Landroid/graphics/RectF;

    const/16 v6, 0x12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    invoke-virtual {v4, v1, v1, v7, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 183
    iget-object v4, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 184
    iget-object v4, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->rectF:Landroid/graphics/RectF;

    const/4 v7, 0x2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    cmpl-float v4, v2, v5

    const/4 v6, 0x7

    if-eqz v4, :cond_4

    .line 187
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v8, v1

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 188
    iget-object v2, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->rectF:Landroid/graphics/RectF;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    const/16 v8, 0x10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    invoke-virtual {v2, v4, v7, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 189
    iget-object v1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->rectF:Landroid/graphics/RectF;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_eraserPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 192
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 193
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_checkPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->key3:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/CheckBoxSquare;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v5, v0

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    float-to-int v0, v1

    const/high16 v1, 0x41500000    # 13.0f

    .line 196
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    sub-float/2addr v3, v2

    float-to-int v2, v3

    .line 197
    iget-object v7, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawCanvas:Landroid/graphics/Canvas;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v8, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-int v3, v3

    int-to-float v9, v3

    int-to-float v10, v0

    int-to-float v11, v2

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_checkPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x40e00000    # 7.0f

    .line 199
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 200
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 201
    iget-object v4, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawCanvas:Landroid/graphics/Canvas;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v5, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v6, v0

    int-to-float v7, v2

    int-to-float v8, v3

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->checkboxSquare_checkPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 203
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->drawBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 130
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 137
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked:Z

    .line 138
    iget-boolean v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->attachedToWindow:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 139
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->animateToCheckedState(Z)V

    goto :goto_1

    .line 141
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/CheckBoxSquare;->cancelCheckAnimator()V

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 142
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CheckBoxSquare;->setProgress(F)V

    :goto_1
    return-void
.end method

.method public setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->key1:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->key2:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->key3:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->isDisabled:Z

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 92
    iget v0, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/CheckBoxSquare;->progress:F

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
