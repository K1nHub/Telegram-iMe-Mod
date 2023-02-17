.class public Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;
.super Landroid/view/View;
.source "VideoTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/VideoTimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeHintView"
.end annotation


# instance fields
.field private cx:F

.field private lastTime:J

.field private scale:F

.field private show:Z

.field private tooltipBackground:Landroid/graphics/drawable/Drawable;

.field private tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

.field private tooltipLayout:Landroid/text/StaticLayout;

.field private tooltipPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 503
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 492
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipPaint:Landroid/text/TextPaint;

    const-wide/16 v1, -0x1

    .line 493
    iput-wide v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->lastTime:J

    const/16 v1, 0xe

    .line 504
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 505
    sget v0, Lorg/telegram/messenger/R$drawable;->tooltip_arrow:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x5

    .line 506
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const-string v0, "chat_gifSaveHintBackground"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 507
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->updateColors()V

    const/4 p1, 0x0

    .line 508
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->setTime(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show:Z

    const v1, 0x3df5c28f    # 0.12f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 533
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_5

    add-float/2addr v0, v1

    .line 534
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 535
    iput v2, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    .line 536
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 539
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_4

    sub-float/2addr v0, v1

    .line 540
    iput v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 541
    iput v3, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    .line 542
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 544
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    return-void

    :cond_5
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    .line 548
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v5, v1, v4

    if-lez v5, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    div-float/2addr v1, v4

    :goto_1
    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 550
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 551
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->scale:F

    iget v4, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->cx:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 552
    iget v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->cx:F

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 554
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x8

    .line 555
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    .line 556
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getWidth()I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v7, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x40800000    # 4.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    add-float/2addr v4, v9

    float-to-int v4, v4

    .line 554
    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 558
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    .line 559
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    .line 560
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 558
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 562
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 563
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 564
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 568
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 570
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 521
    iget-object p2, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    .line 522
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 521
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setCx(F)V
    .locals 0

    .line 580
    iput p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->cx:F

    .line 581
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTime(I)V
    .locals 13

    int-to-long v0, p1

    .line 512
    iget-wide v2, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->lastTime:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 513
    iput-wide v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->lastTime:J

    .line 514
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v6

    .line 515
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v8, v0

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipLayout:Landroid/text/StaticLayout;

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 0

    .line 585
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->show:Z

    .line 586
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipPaint:Landroid/text/TextPaint;

    const-string v1, "chat_gifSaveHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x5

    .line 575
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string v1, "chat_gifSaveHintBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackground:Landroid/graphics/drawable/Drawable;

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoTimelineView$TimeHintView;->tooltipBackgroundArrow:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
