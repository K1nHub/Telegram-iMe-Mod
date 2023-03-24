.class public Lorg/telegram/ui/Components/ProxyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProxyDrawable.java"


# instance fields
.field private cicleRect:Landroid/graphics/RectF;

.field private connected:Z

.field private connectedAnimationProgress:F

.field private emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private fullDrawable:Landroid/graphics/drawable/Drawable;

.field private isEnabled:Z

.field private lastUpdateTime:J

.field private outerPaint:Landroid/graphics/Paint;

.field private radOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->cicleRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->radOffset:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->proxy_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->proxy_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    iget-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 56
    iget-wide v2, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    sub-long v6, v0, v2

    .line 57
    iput-wide v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    .line 59
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->isEnabled:Z

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 62
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_2

    .line 63
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    const-string v1, "contextProgressOuter2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    sub-float v1, v9, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
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

    .line 71
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 72
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 74
    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 75
    div-int/lit8 v1, v1, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 76
    iget-object v2, p0, Lorg/telegram/ui/Components/ProxyDrawable;->cicleRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v0, v10

    int-to-float v0, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->cicleRect:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->radOffset:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/ProxyDrawable;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 81
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->isEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 82
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    const/high16 v2, 0x43960000    # 300.0f

    if-eqz v0, :cond_6

    iget v3, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v4, v3, v9

    if-eqz v4, :cond_6

    long-to-float v0, v6

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    .line 88
    iput v3, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v0, v3, v9

    if-lez v0, :cond_5

    .line 90
    iput v9, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    .line 92
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_6
    if-nez v0, :cond_8

    .line 93
    iget v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpl-float v3, v0, v1

    if-eqz v3, :cond_8

    long-to-float v3, v6

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    .line 94
    iput v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 96
    iput v1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    .line 98
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_8
    :goto_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/16 v0, 0x18

    .line 125
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/16 v0, 0x18

    .line 120
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

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/ProxyDrawable;->fullDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setConnected(ZZZ)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->isEnabled:Z

    .line 45
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->lastUpdateTime:J

    if-nez p3, :cond_1

    .line 48
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connected:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ProxyDrawable;->connectedAnimationProgress:F

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
