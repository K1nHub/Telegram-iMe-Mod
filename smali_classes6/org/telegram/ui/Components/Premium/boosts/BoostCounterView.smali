.class public Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;
.super Landroid/view/View;
.source "BoostCounterView.java"


# instance fields
.field private final bgPaint:Landroid/graphics/Paint;

.field private countAnimator:Landroid/animation/ValueAnimator;

.field private countScale:F

.field private final countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private lastCount:I


# direct methods
.method public static synthetic $r8$lambda$fy8o2bmt6olHjI_ZqHjboWvmxlI(Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->lambda$animateCount$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countScale:F

    .line 35
    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 p2, 0x0

    const/4 v7, 0x1

    invoke-direct {p1, p2, p2, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 36
    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 37
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 p2, 0xb

    .line 38
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const-string p2, "fonts/rmedium.ttf"

    .line 39
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p2, -0x1

    .line 40
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const-string p2, ""

    .line 41
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 42
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->bgPaint:Landroid/graphics/Paint;

    const p2, -0x698401

    .line 45
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0x8

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;F)F
    .locals 0

    .line 25
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countScale:F

    return p1
.end method

.method private animateCount()V
    .locals 3

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 55
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    .line 56
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$animateCount$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 57
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countScale:F

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x3

    .line 102
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 106
    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    iget v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    const/16 v2, 0xa

    .line 111
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countScale:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p1, 0x1a

    .line 93
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 94
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 92
    invoke-super {p0, p2, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setCount(IZ)V
    .locals 3

    .line 73
    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->isMultiBoostsAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p1, v1

    :cond_0
    if-lez p1, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    :cond_2
    if-eqz p2, :cond_3

    .line 82
    iget v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->lastCount:I

    if-eq p1, v0, :cond_3

    if-lez p1, :cond_3

    .line 83
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->animateCount()V

    .line 85
    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->lastCount:I

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
