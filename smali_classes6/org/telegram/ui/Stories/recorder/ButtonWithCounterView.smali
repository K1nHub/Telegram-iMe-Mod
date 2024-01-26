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

.field private final filled:Z

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

.field public final subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private subTextT:F

.field private subTextVisible:Z

.field private subTextVisibleAnimator:Landroid/animation/ValueAnimator;

.field public final text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field private tick:Ljava/lang/Runnable;

.field private timerSeconds:I

.field private withCounterIcon:Z


# direct methods
.method public static synthetic $r8$lambda$2w5Wx4v6pB5vB4T7Rh9C988BrtA(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$animateCount$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6gdUMo3i-h8qodFOI8fanKpwm20(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setLoading$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IlU2UGJ9q3TnwoR2VyEVdpHz-5A(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setSubText$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PoUtDmB8okjFK_tuXa0ORRHMV-c(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setTimer$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZR22WdZ8fcESNOegh9XamD2QAOg(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setSubText$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aY5Svt1ul6Hn9PJYeB8_bYhdJwQ(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lambda$setEnabled$5(Landroid/animation/ValueAnimator;)V

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
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 52
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v11, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x15e

    invoke-direct {v3, v4, v5, v11}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(JLandroid/animation/TimeInterpolator;)V

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v3, 0x1

    .line 111
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    const/4 v12, 0x0

    .line 122
    iput v12, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    const/4 v4, 0x0

    .line 160
    iput v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    .line 218
    iput v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 250
    iput v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    .line 314
    iput v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    .line 315
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    const/16 v4, 0xff

    .line 347
    iput v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    .line 54
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->filled:Z

    .line 55
    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const v4, 0x3ca3d70a    # 0.02f

    const v5, 0x3f99999a    # 1.2f

    .line 57
    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 59
    new-instance v4, Landroid/view/View;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    .line 60
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    const/16 v6, 0x8

    invoke-static {v5, v6, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, -0x1

    .line 61
    invoke-static {v5, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_0
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    .line 68
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    new-instance v14, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v14, v3, v3, v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v14, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v5, 0x3e99999a    # 0.3f

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xfa

    move-object v4, v14

    move-object v10, v11

    .line 71
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 72
    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 v4, 0xe

    .line 73
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v14, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    const-string v15, "fonts/rmedium.ttf"

    if-eqz v1, :cond_1

    .line 75
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    if-eqz v1, :cond_2

    move v4, v13

    goto :goto_0

    .line 77
    :cond_2
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    :goto_0
    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v14, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 78
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 80
    new-instance v14, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v14, v3, v3, v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v14, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v5, 0x3e99999a    # 0.3f

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xfa

    move-object v4, v14

    move-object v10, v11

    .line 81
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 82
    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/16 v16, 0xc

    .line 83
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v14, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    if-eqz v1, :cond_3

    goto :goto_1

    .line 84
    :cond_3
    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    :goto_1
    invoke-static {v13, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v14, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 85
    invoke-virtual {v14, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 87
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1, v12, v12, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const v5, 0x3e99999a    # 0.3f

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xfa

    move-object v4, v1

    move-object v10, v11

    .line 88
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 89
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 90
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 91
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    const-string v2, ""

    .line 93
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 96
    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisible:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;F)F
    .locals 0

    .line 34
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;F)F
    .locals 0

    .line 34
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    return p1
.end method

.method private animateCount()V
    .locals 3

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 258
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    .line 259
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$3;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 272
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

.method private cleanSubTextVisibleAnimator()V
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private synthetic lambda$animateCount$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 260
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setEnabled$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 328
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    .line 329
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setLoading$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 230
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setSubText$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 187
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    .line 188
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setSubText$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    .line 210
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setTimer$0(Ljava/lang/Runnable;)V
    .locals 2

    .line 131
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    .line 132
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 133
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    if-lez v0, :cond_0

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    if-eqz p1, :cond_1

    .line 138
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected calculateCounterWidth(FF)F
    .locals 0

    mul-float/2addr p1, p2

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isLoading()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    return v0
.end method

.method public isTimerActive()Z
    .locals 1

    .line 144
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

    .line 356
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 358
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    .line 359
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    if-nez v2, :cond_0

    .line 360
    new-instance v2, Lorg/telegram/ui/Components/CircularProgressDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v6

    invoke-direct {v2, v6}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    .line 362
    :cond_0
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v2, v5, v2

    const/16 v6, 0x18

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 363
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v4, v2, v7, v8}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setBounds(IIII)V

    .line 364
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    const/high16 v6, 0x437f0000    # 255.0f

    iget v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setAlpha(I)V

    .line 365
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingDrawable:Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 369
    :cond_1
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    cmpg-float v6, v2, v5

    if-gez v6, :cond_f

    cmpl-float v2, v2, v3

    const v6, 0x3ecccccd    # 0.4f

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 373
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/16 v8, -0x18

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 374
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    mul-float/2addr v2, v6

    sub-float v2, v5, v2

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->scale(FF)V

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v4

    .line 377
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v8

    .line 378
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlphaAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countAlpha:F

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v9

    .line 380
    iget-boolean v10, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    if-eqz v10, :cond_3

    const/16 v10, 0xc

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    goto :goto_1

    :cond_3
    move v10, v3

    :goto_1
    add-float v11, v8, v10

    const v12, 0x417a8f5c    # 15.66f

    .line 381
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v0, v12, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->calculateCounterWidth(FF)F

    move-result v12

    add-float/2addr v11, v12

    .line 382
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    float-to-int v13, v13

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v3

    sub-float/2addr v15, v3

    div-float/2addr v15, v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v15, v3

    float-to-int v3, v15

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v15, v6

    div-float/2addr v15, v14

    add-float/2addr v15, v8

    float-to-int v6, v15

    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v5

    add-float/2addr v15, v5

    div-float/2addr v15, v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v15, v5

    float-to-int v5, v15

    .line 382
    invoke-virtual {v12, v13, v3, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v3, 0x7

    .line 388
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v12, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 389
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v6, v13, v6

    mul-float/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-static {v15, v13, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 390
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 391
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisible:Z

    if-eqz v3, :cond_4

    .line 394
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v11

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v14

    float-to-int v3, v3

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v6, v13

    div-float/2addr v6, v14

    add-float/2addr v6, v11

    float-to-int v6, v6

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    iget-object v15, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getHeight()F

    move-result v15

    add-float/2addr v13, v15

    div-float/2addr v13, v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v13, v15

    float-to-int v13, v13

    .line 396
    invoke-virtual {v12, v3, v5, v6, v13}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v3, 0xb

    .line 402
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v12, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v3, 0x3dcccccd    # 0.1f

    .line 404
    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 405
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    invoke-virtual {v1, v3, v3, v5, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 406
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v5, 0x43480000    # 200.0f

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    sub-float v13, v6, v13

    mul-float/2addr v13, v5

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    mul-float/2addr v13, v5

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-static {v15, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    mul-float/2addr v13, v5

    float-to-int v5, v13

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 407
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 408
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 409
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 413
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v11

    div-float/2addr v3, v14

    add-float/2addr v3, v8

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    const/4 v6, 0x5

    const/4 v13, 0x2

    if-eqz v5, :cond_5

    move v5, v6

    goto :goto_2

    :cond_5
    move v5, v13

    :goto_2
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 414
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    const/16 v15, 0x12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    sub-int v5, v5, v16

    int-to-float v5, v5

    div-float/2addr v5, v14

    float-to-int v5, v5

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v11

    div-float/2addr v4, v14

    add-float/2addr v4, v8

    iget-boolean v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    move v6, v13

    :goto_3
    const/4 v8, 0x4

    add-int/2addr v6, v8

    add-int/2addr v6, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    const/16 v6, 0x9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v11

    add-float/2addr v11, v10

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v6, v11

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-int v6, v6

    .line 412
    invoke-virtual {v12, v3, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 418
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v3, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 420
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 422
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 424
    :cond_7
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v4, :cond_9

    .line 425
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v6, v11, v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v9

    mul-float/2addr v5, v9

    iget v6, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledT:F

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-static {v15, v11, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 426
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    if-eqz v4, :cond_8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_4

    :cond_8
    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_4
    int-to-float v4, v4

    .line 427
    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_9
    const/high16 v15, 0x3f000000    # 0.5f

    .line 430
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    if-le v4, v7, :cond_b

    const v3, 0x3e99999a    # 0.3f

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    .line 431
    :goto_7
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v12, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 432
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v9

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v5, :cond_c

    const/high16 v15, 0x3f800000    # 1.0f

    :cond_c
    mul-float/2addr v4, v15

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 433
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 435
    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    if-eqz v3, :cond_d

    .line 436
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingT:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, v9

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 437
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    .line 438
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget v5, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 439
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget v6, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    .line 440
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget v7, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 441
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget v8, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 437
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 442
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-float/2addr v10, v14

    const/4 v3, 0x0

    .line 443
    invoke-virtual {v1, v10, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 445
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 446
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 447
    iget v3, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_e

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    if-eqz v2, :cond_f

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 458
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Button"

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCount(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    :cond_0
    if-eqz p2, :cond_1

    .line 294
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lastCount:I

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_1

    if-lez v0, :cond_1

    .line 295
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->animateCount()V

    .line 297
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->lastCount:I

    if-nez p1, :cond_3

    .line 298
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

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 300
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setCountFilled(Z)V
    .locals 2

    .line 113
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    .line 114
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

    .line 115
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 116
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countFilled:Z

    if-eqz v0, :cond_1

    .line 117
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    goto :goto_1

    .line 118
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getTextColor()I

    move-result v0

    .line 115
    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    return-void
.end method

.method public setCounterColor(I)V
    .locals 3

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 320
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabled:Z

    if-eq v0, p1, :cond_2

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->enabledAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 326
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

    .line 327
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 331
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

    .line 468
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->globalAlpha:I

    return-void
.end method

.method public setLoading(Z)V
    .locals 3

    .line 222
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loading:Z

    if-eq v0, p1, :cond_2

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 228
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

    .line 229
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$2;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->loadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method public setShowZero(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->showZero:Z

    return-void
.end method

.method public setSubText(Ljava/lang/CharSequence;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 178
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    .line 181
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 183
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisible:Z

    const-wide/16 v4, 0xc8

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 184
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->cleanSubTextVisibleAnimator()V

    new-array p1, v6, [F

    .line 185
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    aput p2, p1, v0

    const/4 p2, 0x0

    aput p2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    .line 186
    new-instance p2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$1;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 201
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 204
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisible:Z

    if-nez p1, :cond_3

    if-eqz v2, :cond_3

    .line 205
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisible:Z

    .line 206
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->cleanSubTextVisibleAnimator()V

    new-array p1, v6, [F

    .line 207
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextT:F

    aput p2, p1, v0

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    .line 208
    new-instance p2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 213
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subTextVisibleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->cancelAnimation()V

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTextAlpha(F)V
    .locals 2

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    return-void
.end method

.method public setTimer(ILjava/lang/Runnable;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCountFilled(Z)V

    .line 128
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->timerSeconds:I

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 129
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 130
    new-instance p1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->tick:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->rippleView:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->filled:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->filled:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->countText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->subText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

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

    .line 281
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon:Z

    .line 282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->mini_boost_button:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->counterDrawable:Landroid/graphics/drawable/Drawable;

    .line 283
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
