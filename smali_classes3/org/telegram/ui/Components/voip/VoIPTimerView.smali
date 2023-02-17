.class public Lorg/telegram/ui/Components/voip/VoIPTimerView;
.super Landroid/view/View;
.source "VoIPTimerView.java"


# instance fields
.field activePaint:Landroid/graphics/Paint;

.field currentTimeStr:Ljava/lang/String;

.field inactivePaint:Landroid/graphics/Paint;

.field rectF:Landroid/graphics/RectF;

.field private signalBarCount:I

.field textPaint:Landroid/text/TextPaint;

.field timerLayout:Landroid/text/StaticLayout;

.field updater:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$oahGu8QSiIX88glqVG6lxZzK21Q(Lorg/telegram/ui/Components/voip/VoIPTimerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->rectF:Landroid/graphics/RectF;

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->activePaint:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->inactivePaint:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->textPaint:Landroid/text/TextPaint;

    const/4 p1, 0x4

    .line 26
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->signalBarCount:I

    .line 28
    new-instance p1, Lorg/telegram/ui/Components/voip/VoIPTimerView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/voip/VoIPTimerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/voip/VoIPTimerView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->updater:Ljava/lang/Runnable;

    .line 36
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->textPaint:Landroid/text/TextPaint;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 37
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->textPaint:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 38
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f2aaaab

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x4c000000    # 3.3554432E7f

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 39
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->activePaint:Landroid/graphics/Paint;

    const/16 v1, 0xe5

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->inactivePaint:Landroid/graphics/Paint;

    const/16 v1, 0x66

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->updateTimer()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->timerLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 92
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/16 v6, 0xb

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v3, v7

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 97
    iget v4, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->signalBarCount:I

    if-le v3, v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->inactivePaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->activePaint:Landroid/graphics/Paint;

    .line 98
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->rectF:Landroid/graphics/RectF;

    const v8, 0x40851eb8    # 4.16f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    int-to-float v10, v1

    mul-float v9, v9, v10

    const/high16 v11, 0x40300000    # 2.75f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v12

    rsub-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    mul-float v12, v12, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    mul-float v1, v1, v10

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    add-float/2addr v1, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v9, v12, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 99
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->rectF:Landroid/graphics/RectF;

    const v7, 0x3f333333    # 0.7f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    invoke-virtual {p1, v1, v8, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move v1, v3

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v0, :cond_3

    .line 104
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 107
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 45
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->timerLayout:Landroid/text/StaticLayout;

    if-eqz p2, :cond_0

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0xf

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setSignalBarCount(I)V
    .locals 0

    .line 111
    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->signalBarCount:I

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 9

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    const-string v0, "00:00"

    .line 76
    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->currentTimeStr:Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->currentTimeStr:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v4, v1

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->timerLayout:Landroid/text/StaticLayout;

    .line 78
    invoke-virtual {p0}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->updateTimer()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->currentTimeStr:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->timerLayout:Landroid/text/StaticLayout;

    .line 84
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateTimer()V
    .locals 9

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->updater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 55
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatLongDuration(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->currentTimeStr:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->currentTimeStr:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->timerLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_2

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 65
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->currentTimeStr:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v4, v1

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->timerLayout:Landroid/text/StaticLayout;

    .line 67
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPTimerView;->updater:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
