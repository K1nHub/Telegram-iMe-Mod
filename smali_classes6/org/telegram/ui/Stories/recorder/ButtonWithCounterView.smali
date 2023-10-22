.class public Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
.super Landroid/widget/FrameLayout;
.source "ButtonWithCounterView.java"


# instance fields
.field private countAlpha:F

.field private final countAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private countAnimator:Landroid/animation/ValueAnimator;

.field private countFilled:Z

.field private countScale:F

.field private final countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private enabled:Z

.field private enabledAnimator:Landroid/animation/ValueAnimator;

.field private enabledT:F

.field private globalAlpha:I

.field private lastCount:I

.field private loading:Z

.field private loadingAnimator:Landroid/animation/ValueAnimator;

.field private loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

.field private loadingT:F

.field private final paint:Landroid/graphics/Paint;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final rippleView:Landroid/view/View;

.field private showZero:Z

.field private final text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private tick:Ljava/lang/Runnable;

.field private timerSeconds:I


# direct methods
.method public static synthetic $r8$lambda$Nq-B587y-YuSIzDrNOsiVZRDI1Y(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$animateCount$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PoUtDmB8okjFK_tuXa0ORRHMV-c(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setTimer$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rcrKYDZ5fPio4vYFLnGrPjhPUBg(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setLoading$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yxYEsmsAG5UXbqA2y271uYRQLxA(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setEnabled$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0x15e

    invoke-direct {v0, v1, v2, v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    const/4 v9, 0x0

    .line 99
    iput v9, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    const/4 v1, 0x0

    .line 133
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 165
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    .line 221
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    .line 222
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    const/16 v1, 0xff

    .line 254
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    .line 51
    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v1, 0x3ca3d70a    # 0.02f

    const v2, 0x3f99999a    # 1.2f

    .line 53
    invoke-static {p0, v1, v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 55
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    .line 56
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const/16 v2, 0x8

    invoke-static {p1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    .line 57
    invoke-static {p1, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 60
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    .line 64
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v10, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1, v0, v0, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xfa

    move-object v1, p1

    move-object v7, v8

    .line 67
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 68
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 v1, 0xe

    .line 69
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const-string v11, "fonts/rmedium.ttf"

    if-eqz p2, :cond_1

    .line 71
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    :goto_0
    invoke-static {v10, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 74
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 76
    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1, v9, v9, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xfa

    move-object v1, p1

    move-object v7, v8

    .line 77
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 78
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 p2, 0xc

    .line 79
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 80
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const-string p2, ""

    .line 82
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 85
    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;F)F
    .locals 0

    .line 33
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;F)F
    .locals 0

    .line 33
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    return p1
.end method

.method private animateCount()V
    .locals 3

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 173
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    .line 174
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$2;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$animateCount$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 175
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    .line 176
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setEnabled$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 235
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    .line 236
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setLoading$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 145
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setTimer$0(Ljava/lang/Runnable;)V
    .locals 2

    .line 108
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    .line 109
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 110
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    if-lez v0, :cond_0

    .line 111
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    if-eqz p1, :cond_1

    .line 115
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isLoading()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    return v0
.end method

.method public isTimerActive()Z
    .locals 1

    .line 121
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 258
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 260
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    .line 261
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    if-nez v2, :cond_0

    .line 262
    new-instance v2, Lorg/telegram/ui/Components/CircularProgressDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v6

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    .line 264
    :cond_0
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v2, v5, v2

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 265
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setBounds(IIII)V

    .line 266
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    const/high16 v6, 0x437f0000    # 255.0f

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setAlpha(I)V

    .line 267
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 271
    :cond_1
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    cmpg-float v6, v2, v5

    if-gez v6, :cond_9

    cmpl-float v2, v2, v3

    const v6, 0x3ecccccd    # 0.4f

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 275
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/16 v4, -0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 276
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    mul-float/2addr v2, v6

    sub-float v2, v5, v2

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->scale(FF)V

    move v4, v7

    .line 279
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v2

    .line 280
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlpha:F

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v3

    const v8, 0x417a8f5c    # 15.66f

    .line 282
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v3

    add-float/2addr v8, v2

    .line 283
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v13

    sub-float/2addr v12, v13

    div-float/2addr v12, v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    float-to-int v12, v12

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    div-float/2addr v13, v11

    add-float/2addr v13, v2

    float-to-int v13, v13

    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v15

    add-float/2addr v14, v15

    div-float/2addr v14, v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v14, v7

    float-to-int v7, v14

    .line 283
    invoke-virtual {v9, v10, v12, v13, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 289
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v10, v10

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v12, v5, v12

    mul-float/2addr v10, v12

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-static {v13, v5, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    mul-float/2addr v10, v12

    float-to-int v10, v10

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 290
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 291
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v8

    div-float/2addr v7, v11

    add-float/2addr v7, v2

    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    const/4 v14, 0x2

    if-eqz v10, :cond_3

    const/4 v10, 0x5

    goto :goto_0

    :cond_3
    move v10, v14

    :goto_0
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    float-to-int v7, v7

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    const/16 v15, 0x12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    sub-int v10, v10, v16

    int-to-float v10, v10

    div-float/2addr v10, v11

    float-to-int v10, v10

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v8

    div-float/2addr v12, v11

    add-float/2addr v12, v2

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v2, :cond_4

    const/4 v14, 0x5

    :cond_4
    add-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v12, v2

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v12, v2

    float-to-int v2, v12

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v8, v12

    int-to-float v8, v8

    div-float/2addr v8, v11

    float-to-int v8, v8

    .line 293
    invoke-virtual {v9, v7, v10, v2, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 299
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v2, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 301
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_5

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 303
    iget v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1, v7, v7, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 305
    :cond_5
    iget-boolean v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v7, :cond_6

    .line 306
    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    iget v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v8, v8

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v10, v5, v10

    mul-float/2addr v8, v10

    mul-float/2addr v8, v3

    mul-float/2addr v8, v3

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    invoke-static {v13, v5, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    mul-float/2addr v8, v10

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v7, 0xa

    .line 307
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v8, v7, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_6
    const v2, 0x3e99999a    # 0.3f

    .line 310
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v9, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 311
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v7, v5, v7

    mul-float/2addr v6, v7

    mul-float/2addr v6, v3

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v3, :cond_7

    move v13, v5

    :cond_7
    mul-float/2addr v6, v13

    float-to-int v3, v6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 312
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 313
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 314
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_8

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    if-eqz v4, :cond_9

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 325
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCount(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    :cond_0
    if-eqz p2, :cond_1

    .line 201
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lastCount:I

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_1

    if-lez v0, :cond_1

    .line 202
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->animateCount()V

    .line 204
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lastCount:I

    if-nez p1, :cond_3

    .line 205
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->showZero:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlpha:F

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setCountFilled(Z)V
    .locals 2

    .line 90
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    :cond_0
    const/16 p1, 0xe

    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 93
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v0, :cond_1

    .line 94
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_1

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v0

    .line 92
    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 227
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    if-eq v0, p1, :cond_2

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 233
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    .line 234
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 238
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public setGlobalAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 335
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    return-void
.end method

.method public setLoading(Z)V
    .locals 3

    .line 137
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    if-eq v0, p1, :cond_2

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 143
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    if-eqz p1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    .line 144
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 157
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public setShowZero(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->showZero:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTextAlpha(F)V
    .locals 2

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    return-void
.end method

.method public setTimer(ILjava/lang/Runnable;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCountFilled(Z)V

    .line 105
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 106
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 107
    new-instance p1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
