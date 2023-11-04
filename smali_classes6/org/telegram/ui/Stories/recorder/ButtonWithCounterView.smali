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

.field private counterDrawable:Landroid/graphics/drawable/Drawable;

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

.field public final text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private tick:Ljava/lang/Runnable;

.field private timerSeconds:I

.field private withCounterIcon:Z


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

    .line 48
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v1, 0x15e

    invoke-direct {v0, v1, v2, v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    const/4 v9, 0x0

    .line 107
    iput v9, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    const/4 v1, 0x0

    .line 141
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 173
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    .line 237
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    .line 238
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    const/16 v1, 0xff

    .line 270
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    .line 54
    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v1, 0x3ca3d70a    # 0.02f

    const v2, 0x3f99999a    # 1.2f

    .line 56
    invoke-static {p0, v1, v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 58
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    .line 59
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const/16 v2, 0x8

    invoke-static {p1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    .line 60
    invoke-static {p1, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    .line 63
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    .line 67
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v10, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1, v0, v0, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xfa

    move-object v1, p1

    move-object v7, v8

    .line 70
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 71
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 v1, 0xe

    .line 72
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const-string v11, "fonts/rmedium.ttf"

    if-eqz p2, :cond_1

    .line 74
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    .line 76
    :cond_2
    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    :goto_0
    invoke-static {v10, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 77
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 79
    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {p1, v9, v9, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v2, 0x3e99999a    # 0.3f

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xfa

    move-object v1, p1

    move-object v7, v8

    .line 80
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 81
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 p2, 0xc

    .line 82
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 83
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const-string p2, ""

    .line 85
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 88
    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    return p1
.end method

.method private animateCount()V
    .locals 3

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 181
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    .line 182
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$2;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 195
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

    .line 183
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setEnabled$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 251
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    .line 252
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setLoading$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 153
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setTimer$0(Ljava/lang/Runnable;)V
    .locals 2

    .line 116
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    .line 117
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 118
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    if-lez v0, :cond_0

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    if-eqz p1, :cond_1

    .line 123
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

    .line 170
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    return v0
.end method

.method public isTimerActive()Z
    .locals 1

    .line 129
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
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 274
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 276
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    .line 277
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    if-nez v2, :cond_0

    .line 278
    new-instance v2, Lorg/telegram/ui/Components/CircularProgressDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v6

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    .line 280
    :cond_0
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v2, v5, v2

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 281
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setBounds(IIII)V

    .line 282
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    const/high16 v6, 0x437f0000    # 255.0f

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setAlpha(I)V

    .line 283
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 287
    :cond_1
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    cmpg-float v6, v2, v5

    if-gez v6, :cond_c

    cmpl-float v2, v2, v3

    const v6, 0x3ecccccd    # 0.4f

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 291
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/16 v4, -0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 292
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    mul-float/2addr v2, v6

    sub-float v2, v5, v2

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->scale(FF)V

    move v4, v7

    .line 295
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v2

    .line 296
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlpha:F

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v8

    .line 298
    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    if-eqz v9, :cond_3

    const/16 v9, 0xc

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    goto :goto_0

    :cond_3
    move v9, v3

    :goto_0
    add-float v10, v2, v9

    const v11, 0x417a8f5c    # 15.66f

    .line 299
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v12

    add-float/2addr v11, v12

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    .line 300
    sget-object v11, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v14, v13

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    float-to-int v14, v14

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v15, v3

    div-float/2addr v15, v13

    add-float/2addr v15, v2

    float-to-int v3, v15

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v6

    add-float/2addr v15, v6

    div-float/2addr v15, v13

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v15, v6

    float-to-int v6, v15

    .line 300
    invoke-virtual {v11, v12, v14, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 306
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v6, v6

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v12, v5, v12

    mul-float/2addr v6, v12

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-static {v14, v5, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    mul-float/2addr v6, v12

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 307
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 308
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v10

    div-float/2addr v3, v13

    add-float/2addr v3, v2

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x5

    goto :goto_1

    :cond_4
    const/4 v6, 0x2

    :goto_1
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    const/16 v16, 0x12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    sub-int v6, v6, v17

    int-to-float v6, v6

    div-float/2addr v6, v13

    float-to-int v6, v6

    .line 313
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v10

    div-float/2addr v12, v13

    add-float/2addr v12, v2

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v2, :cond_5

    const/16 v17, 0x5

    goto :goto_2

    :cond_5
    const/16 v17, 0x2

    :goto_2
    const/4 v2, 0x4

    add-int/lit8 v17, v17, 0x4

    add-int/lit8 v17, v17, 0x4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v12, v10

    const/16 v10, 0x9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v15

    add-float/2addr v15, v9

    invoke-static {v10, v15}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v12, v10

    float-to-int v10, v12

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v12, v15

    int-to-float v12, v12

    div-float/2addr v12, v13

    float-to-int v12, v12

    .line 310
    invoke-virtual {v11, v3, v6, v10, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 316
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v3, v11}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 318
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_6

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 320
    iget v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1, v6, v6, v10, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 322
    :cond_6
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v6, :cond_8

    .line 323
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v10, v10

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v12, v5, v12

    mul-float/2addr v10, v12

    mul-float/2addr v10, v8

    mul-float/2addr v10, v8

    iget v12, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    invoke-static {v14, v5, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    mul-float/2addr v10, v12

    float-to-int v10, v10

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 324
    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    const/16 v2, 0xa

    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    .line 325
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_8
    const v2, 0x3e99999a    # 0.3f

    .line 328
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 329
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v3, v3

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v6, v5, v6

    mul-float/2addr v3, v6

    mul-float/2addr v3, v8

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v6, :cond_9

    move v14, v5

    :cond_9
    mul-float/2addr v3, v14

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 330
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 332
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v2, :cond_a

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    if-eqz v2, :cond_a

    .line 333
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v3, v3

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v6, v5, v6

    mul-float/2addr v3, v6

    mul-float/2addr v3, v8

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 334
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    .line 335
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v6, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    const/4 v6, 0x2

    .line 336
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iget v10, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v10

    .line 337
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget v10, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v10

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v7, v10

    .line 338
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget v10, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v10

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v6, v10

    .line 334
    invoke-virtual {v2, v3, v8, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 339
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-float/2addr v9, v13

    const/4 v2, 0x0

    .line 340
    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 344
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_b

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    if-eqz v4, :cond_c

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 355
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    .line 356
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCount(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    :cond_0
    if-eqz p2, :cond_1

    .line 217
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lastCount:I

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_1

    if-lez v0, :cond_1

    .line 218
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->animateCount()V

    .line 220
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lastCount:I

    if-nez p1, :cond_3

    .line 221
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

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setCountFilled(Z)V
    .locals 2

    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    .line 99
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

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 101
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v0, :cond_1

    .line 102
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_1

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v0

    .line 100
    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    return-void
.end method

.method public setCounterColor(I)V
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 243
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    if-eq v0, p1, :cond_2

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 249
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

    .line 250
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
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

    .line 365
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    return-void
.end method

.method public setLoading(Z)V
    .locals 3

    .line 145
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    if-eq v0, p1, :cond_2

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 151
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

    .line 152
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public setShowZero(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->showZero:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 137
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTextAlpha(F)V
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    return-void
.end method

.method public setTimer(ILjava/lang/Runnable;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCountFilled(Z)V

    .line 113
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 114
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 115
    new-instance p1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 260
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

.method public withCounterIcon()V
    .locals 4

    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    .line 205
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->mini_boost_button:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
