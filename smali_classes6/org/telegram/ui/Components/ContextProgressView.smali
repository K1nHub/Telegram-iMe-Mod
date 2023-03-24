.class public Lorg/telegram/ui/Components/ContextProgressView;
.super Landroid/view/View;
.source "ContextProgressView.java"


# instance fields
.field private cicleRect:Landroid/graphics/RectF;

.field private innerColor:I

.field private innerKey:Ljava/lang/String;

.field private innerPaint:Landroid/graphics/Paint;

.field private lastUpdateTime:J

.field private outerColor:I

.field private outerKey:Ljava/lang/String;

.field private outerPaint:Landroid/graphics/Paint;

.field private radOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->cicleRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    .line 35
    iget-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    iget-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    if-nez p2, :cond_0

    const-string p1, "contextProgressInner1"

    .line 41
    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:Ljava/lang/String;

    const-string p1, "contextProgressOuter1"

    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const-string p1, "contextProgressInner2"

    .line 44
    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:Ljava/lang/String;

    const-string p1, "contextProgressOuter2"

    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    const-string p1, "contextProgressInner3"

    .line 47
    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:Ljava/lang/String;

    const-string p1, "contextProgressOuter3"

    .line 48
    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    const-string p1, "contextProgressInner4"

    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:Ljava/lang/String;

    const-string p1, "contextProgressOuter4"

    .line 51
    iput-object p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerKey:Ljava/lang/String;

    .line 53
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->updateColors()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    iget-wide v2, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    sub-long v2, v0, v2

    .line 99
    iput-wide v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    .line 100
    iget v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    int-to-float v0, v0

    const-wide/16 v4, 0x168

    mul-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 104
    iget-object v3, p0, Lorg/telegram/ui/Components/ContextProgressView;->cicleRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v2

    const/16 v6, 0x12

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v0, v7

    int-to-float v0, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 106
    iget-object v5, p0, Lorg/telegram/ui/Components/ContextProgressView;->cicleRect:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v6, v0

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColors(II)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerKey:Ljava/lang/String;

    .line 59
    iput p1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerColor:I

    .line 60
    iput p2, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerColor:I

    .line 61
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->updateColors()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 71
    iget-object v1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
