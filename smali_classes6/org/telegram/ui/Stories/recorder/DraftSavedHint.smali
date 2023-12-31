.class public Lorg/telegram/ui/Stories/recorder/DraftSavedHint;
.super Landroid/view/View;
.source "DraftSavedHint.java"


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private hideRunnable:Ljava/lang/Runnable;

.field private final layout:Landroid/text/StaticLayout;

.field private final layoutLeft:F

.field private final layoutWidth:F

.field private final path:Landroid/graphics/Path;

.field private final showT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private shown:Z

.field private final textPaint:Landroid/text/TextPaint;


# direct methods
.method public static synthetic $r8$lambda$HUf8HxteZFK350QBrGpKOGq4zz4(Lorg/telegram/ui/Stories/recorder/DraftSavedHint;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->lambda$show$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->backgroundPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->textPaint:Landroid/text/TextPaint;

    .line 35
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    .line 83
    new-instance v9, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v9, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->showT:Lorg/telegram/ui/Components/AnimatedFloat;

    const v1, -0x33d7d7d8    # -4.4081312E7f

    .line 40
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const/16 p1, 0xe

    .line 43
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p1, -0x1

    .line 44
    invoke-virtual {v3, p1}, Landroid/text/TextPaint;->setColor(I)V

    const-string p1, "StoryDraftSaved"

    .line 46
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v3, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 48
    new-instance p1, Landroid/text/StaticLayout;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->layout:Landroid/text/StaticLayout;

    .line 49
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->layoutWidth:F

    .line 50
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->layoutLeft:F

    .line 52
    invoke-virtual {v9, v3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    return-void
.end method

.method private synthetic lambda$show$0()V
    .locals 1

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->hide(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->showT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->shown:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->shown:Z

    if-eqz v2, :cond_1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_BACK:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x16

    .line 99
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->layoutWidth:F

    add-float/2addr v5, v6

    const/16 v6, 0x87

    .line 101
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eb33333    # 0.35f

    mul-float/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    sub-float/2addr v2, v6

    const/16 v6, 0x8

    .line 104
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    div-float v8, v5, v7

    sub-float v8, v2, v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 106
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    .line 107
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 108
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    add-float/2addr v5, v6

    invoke-virtual {v8, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    const/16 v8, 0x12

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v4, v9

    invoke-virtual {v1, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    const/4 v5, 0x7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v4, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    const/4 v9, 0x1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v4, v11

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v2, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v4, v3

    invoke-virtual {v1, v9, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 113
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v4, v2

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x434c0000    # 204.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v1, 0xb

    .line 121
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v6, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->layoutLeft:F

    sub-float/2addr v6, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v4, v1

    div-float/2addr v4, v7

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->textPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public hide(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->show(ZZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 131
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 p2, 0x32

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->showT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 75
    invoke-virtual {p0, v2, v2}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->show(ZZ)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->hideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 79
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/DraftSavedHint$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/DraftSavedHint;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public show(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->hideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 63
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->hideRunnable:Ljava/lang/Runnable;

    .line 66
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->shown:Z

    if-nez p2, :cond_1

    .line 68
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/DraftSavedHint;->showT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
