.class Lorg/telegram/ui/Components/Bulletin$TimerView;
.super Landroid/view/View;
.source "Bulletin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Bulletin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerView"
.end annotation


# instance fields
.field private lastUpdateTime:J

.field private prevSeconds:I

.field private final progressPaint:Landroid/graphics/Paint;

.field rect:Landroid/graphics/RectF;

.field private textPaint:Landroid/text/TextPaint;

.field private textWidth:I

.field textWidthOut:I

.field timeLayout:Landroid/text/StaticLayout;

.field timeLayoutOut:Landroid/text/StaticLayout;

.field private timeLeft:J

.field private timeLeftString:Ljava/lang/String;

.field timeReplaceProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 1667
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1660
    iput p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    .line 1664
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    .line 1669
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    const/16 v1, 0xc

    .line 1670
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1671
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1672
    iget-object p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 1674
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->progressPaint:Landroid/graphics/Paint;

    .line 1675
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x2

    .line 1676
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1677
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1678
    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/Bulletin$TimerView;J)J
    .locals 0

    .line 1648
    iput-wide p1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    return-wide p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1683
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1684
    iget-wide v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-lez v4, :cond_0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v5

    .line 1685
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v9, v4

    int-to-float v4, v9

    invoke-virtual {v1, v6, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1686
    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->prevSeconds:I

    if-eq v1, v0, :cond_2

    .line 1687
    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->prevSeconds:I

    .line 1688
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeftString:Ljava/lang/String;

    .line 1689
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 1690
    iput-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayoutOut:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    .line 1691
    iput v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    .line 1692
    iget v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textWidth:I

    iput v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textWidthOut:I

    .line 1694
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textWidth:I

    .line 1695
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v5, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeftString:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    const v7, 0x7fffffff

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayout:Landroid/text/StaticLayout;

    .line 1698
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v1

    if-gez v4, :cond_4

    const v4, 0x3dda740e

    add-float/2addr v0, v4

    .line 1699
    iput v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1701
    iput v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    goto :goto_1

    .line 1703
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1707
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 1709
    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayoutOut:Landroid/text/StaticLayout;

    const/16 v5, 0xa

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_5

    iget v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    cmpg-float v7, v4, v1

    if-gez v7, :cond_5

    .line 1710
    iget-object v7, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    int-to-float v8, v0

    sub-float v4, v1, v4

    mul-float/2addr v8, v4

    float-to-int v4, v8

    invoke-virtual {v7, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1711
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1712
    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v7, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textWidthOut:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v4, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayoutOut:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    sub-float/2addr v7, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1713
    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayoutOut:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1714
    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1715
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1718
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_8

    .line 1719
    iget v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    cmpl-float v7, v4, v1

    if-eqz v7, :cond_6

    .line 1720
    iget-object v7, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    int-to-float v8, v0

    mul-float/2addr v8, v4

    float-to-int v4, v8

    invoke-virtual {v7, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1722
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1723
    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v7, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v4, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    sub-float/2addr v7, v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    sub-float v6, v1, v6

    mul-float/2addr v5, v6

    sub-float/2addr v7, v5

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1724
    iget-object v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1725
    iget v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeReplaceProgress:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_7

    .line 1726
    iget-object v1, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1728
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1731
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->rect:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/high16 v0, -0x3c4c0000    # -360.0f

    iget-wide v7, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    long-to-float v1, v7

    const v4, 0x459c4000    # 5000.0f

    div-float/2addr v1, v4

    mul-float v7, v1, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->progressPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1733
    iget-wide v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->lastUpdateTime:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_9

    .line 1734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1735
    iget-wide v2, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->lastUpdateTime:J

    sub-long v2, v0, v2

    .line 1736
    iget-wide v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->timeLeft:J

    .line 1737
    iput-wide v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->lastUpdateTime:J

    goto :goto_2

    .line 1739
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/Bulletin$TimerView;->lastUpdateTime:J

    .line 1741
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
