.class public Lorg/telegram/ui/Components/ProxyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProxyDrawable.java"


# instance fields
.field private cicleRect:Landroid/graphics/RectF;

.field private colorKey:I

.field private connected:Z

.field private connectedAnimationProgress:F

.field private emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private fullDrawable:Landroid/graphics/drawable/Drawable;

.field private horizontalOffset:I

.field private isEnabled:Z

.field private lastUpdateTime:J

.field private outerPaint:Landroid/graphics/Paint;

.field private radOffset:I

.field private verticalOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->cicleRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->radOffset:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->colorKey:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg2_proxy_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg2_proxy_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    const v0, 0x3fd47ae1    # 1.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    return-void
.end method

.method private setBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 129
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ProxyDrawable;->horizontalOffset:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/ProxyDrawable;->verticalOffset:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ProxyDrawable;->horizontalOffset:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 134
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ProxyDrawable;->verticalOffset:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 130
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 81
    iget-wide v2, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    sub-long v6, v0, v2

    .line 82
    iput-wide v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    .line 84
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->isEnabled:Z

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ProxyDrawable;->setBounds(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_3

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ProxyDrawable;->setBounds(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->colorKey:I

    if-gez v1, :cond_2

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter2:I

    :cond_2
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    sub-float v1, v9, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->radOffset:I

    int-to-float v0, v0

    const-wide/16 v1, 0x168

    mul-long/2addr v1, v6

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->radOffset:I

    .line 96
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 97
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x4

    .line 99
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 100
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v2

    .line 101
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v2

    .line 102
    iget-object v3, p0, Lorg/telegram/ui/Components/ProxyDrawable;->cicleRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->cicleRect:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->radOffset:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 104
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 107
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->isEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 108
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ProxyDrawable;->setBounds(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    const/high16 v2, 0x43960000    # 300.0f

    if-eqz v0, :cond_7

    iget v3, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v4, v3, v9

    if-eqz v4, :cond_7

    long-to-float v0, v6

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    .line 114
    iput v3, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v0, v3, v9

    if-lez v0, :cond_6

    .line 116
    iput v9, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    .line 118
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_7
    if-nez v0, :cond_9

    .line 119
    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_9

    long-to-float v3, v6

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    .line 120
    iput v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 122
    iput v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    .line 124
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_9
    :goto_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0x18

    .line 165
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x18

    .line 160
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
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setColorKey(I)V
    .locals 0

    .line 150
    iput p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->colorKey:I

    return-void
.end method

.method public setConnected(ZZZ)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->isEnabled:Z

    .line 70
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    if-nez p3, :cond_1

    .line 73
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->horizontalOffset:I

    .line 34
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 28
    iput p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->verticalOffset:I

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
