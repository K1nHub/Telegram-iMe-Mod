.class public Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;
.super Landroid/view/View;
.source "PhotoVideoSwitcherView.java"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private mIsScrolling:Z

.field private mLastTouchTime:J

.field private mLastX:F

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mode:F

.field private onSwitchModeListener:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onSwitchingModeListener:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private photoRect:Landroid/graphics/RectF;

.field private photoText:Landroid/text/StaticLayout;

.field private photoTextHeight:F

.field private photoTextLeft:F

.field private photoTextWidth:F

.field private scrollWidth:F

.field private selectorPaint:Landroid/graphics/Paint;

.field private selectorRect:Landroid/graphics/RectF;

.field private textPaint:Landroid/text/TextPaint;

.field private videoRect:Landroid/graphics/RectF;

.field private videoText:Landroid/text/StaticLayout;

.field private videoTextHeight:F

.field private videoTextLeft:F

.field private videoTextWidth:F


# direct methods
.method public static synthetic $r8$lambda$q8ztBz1Rnl2s0WxcKs_igaTkhNU(Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->lambda$switchMode$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->textPaint:Landroid/text/TextPaint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->selectorPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->selectorRect:Landroid/graphics/RectF;

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->selectorPaint:Landroid/graphics/Paint;

    const v1, 0x32ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->textPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->textPaint:Landroid/text/TextPaint;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x33000000

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    const-string v0, "StoryPhoto"

    .line 55
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Photo"

    :cond_0
    move-object v5, v0

    .line 59
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->textPaint:Landroid/text/TextPaint;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v1, 0x2

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoText:Landroid/text/StaticLayout;

    .line 60
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoText:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoTextLeft:F

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoText:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoText:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoTextWidth:F

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoText:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoTextHeight:F

    const-string v0, "StoryVideo"

    .line 64
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Video"

    :cond_3
    move-object v5, v0

    .line 68
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v2, 0x2

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoText:Landroid/text/StaticLayout;

    .line 69
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoText:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoTextLeft:F

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoText:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoText:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    :cond_5
    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoTextWidth:F

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoText:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoTextHeight:F

    const/16 v0, 0x20

    .line 73
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoTextWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoTextWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->scrollWidth:F

    .line 75
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mTouchSlop:I

    return-void
.end method

.method private getScrollCx()F
    .locals 5

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/16 v2, 0x10

    .line 111
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoTextWidth:F

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 112
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoTextWidth:F

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    neg-float v1, v2

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mode:F

    .line 110
    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$switchMode$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mode:F

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->onSwitchingModeListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 98
    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 163
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 166
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->getScrollCx()F

    move-result v2

    const/4 v3, 0x1

    .line 168
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    const/16 v4, 0x1a

    .line 169
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 170
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoRect:Landroid/graphics/RectF;

    const/16 v6, 0x1c

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v2, v7

    iget v8, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoTextWidth:F

    sub-float/2addr v7, v8

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float v8, v0, v4

    int-to-float v3, v3

    add-float/2addr v8, v3

    const/4 v9, 0x4

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v2, v10

    add-float v11, v0, v4

    add-float/2addr v11, v3

    invoke-virtual {v5, v7, v8, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 171
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoRect:Landroid/graphics/RectF;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoTextWidth:F

    add-float/2addr v6, v9

    invoke-virtual {v5, v7, v8, v6, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoRect:Landroid/graphics/RectF;

    iget v7, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mode:F

    const v8, 0x3f833333    # 1.025f

    const v9, -0x43333333    # -0.025f

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->selectorRect:Landroid/graphics/RectF;

    invoke-static {v5, v6, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 173
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->selectorRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v4, 0x10

    .line 176
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoTextWidth:F

    sub-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoTextLeft:F

    sub-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoTextHeight:F

    div-float/2addr v6, v1

    sub-float v6, v0, v6

    add-float/2addr v6, v3

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->photoText:Landroid/text/StaticLayout;

    invoke-virtual {v5, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 181
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoTextLeft:F

    sub-float/2addr v2, v4

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoTextHeight:F

    div-float/2addr v4, v1

    sub-float/2addr v0, v4

    add-float/2addr v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->videoText:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 202
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 203
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mLastX:F

    sub-float/2addr v1, v0

    .line 204
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->scrollX(F)V

    .line 205
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mLastX:F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 213
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_3

    const/16 v0, 0x3e8

    .line 214
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 218
    :cond_3
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->stopScroll(F)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mLastTouchTime:J

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mLastX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->getScrollCx()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 220
    :goto_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->onSwitchModeListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_5

    .line 222
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 226
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 231
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 197
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mLastTouchTime:J

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mLastX:F

    return v1
.end method

.method public scrollX(F)V
    .locals 5

    .line 118
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mIsScrolling:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mIsScrolling:Z

    .line 122
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mIsScrolling:Z

    if-eqz v0, :cond_4

    const v0, 0x3e4ccccd    # 0.2f

    .line 124
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mode:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-gtz v3, :cond_1

    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    :goto_0
    mul-float/2addr p1, v0

    goto :goto_1

    :cond_1
    cmpl-float v3, v1, v4

    if-ltz v3, :cond_2

    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    goto :goto_0

    .line 129
    :cond_2
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->scrollWidth:F

    div-float/2addr p1, v0

    const/high16 v0, 0x40200000    # 2.5f

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mode:F

    const p1, 0x3f99999a    # 1.2f

    const v0, -0x41b33333    # -0.2f

    .line 130
    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mode:F

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->onSwitchingModeListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_3

    .line 132
    invoke-static {p1, v4, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 134
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public setOnSwitchModeListener(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->onSwitchModeListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setOnSwitchingModeListener(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->onSwitchingModeListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public stopScroll(F)Z
    .locals 3

    .line 139
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mIsScrolling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 144
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mIsScrolling:Z

    .line 147
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 150
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mode:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->switchMode(Z)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->onSwitchModeListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_3

    .line 155
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_3
    return v2
.end method

.method public switchMode(Z)V
    .locals 3

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 94
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->mode:F

    aput v2, v0, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->animator:Landroid/animation/ValueAnimator;

    .line 95
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->animator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
