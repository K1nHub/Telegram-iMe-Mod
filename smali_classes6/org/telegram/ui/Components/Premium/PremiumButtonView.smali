.class public Lorg/telegram/ui/Components/Premium/PremiumButtonView;
.super Landroid/widget/FrameLayout;
.source "PremiumButtonView.java"


# instance fields
.field public buttonLayout:Landroid/widget/FrameLayout;

.field public buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

.field counterOffset2:Lorg/telegram/ui/Components/AnimatedFloat;

.field counterView:Lorg/telegram/ui/Components/CounterView;

.field public drawGradient:Z

.field private drawOverlayColor:Z

.field flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

.field iconView:Lorg/telegram/ui/Components/RLottieImageView;

.field private inc:Z

.field private isButtonTextSet:Z

.field private isFlickerDisabled:Z

.field overlayAnimator:Landroid/animation/ValueAnimator;

.field private overlayProgress:F

.field public overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private paintOverlayPaint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private progress:F

.field private radius:I

.field private showOverlay:Z


# direct methods
.method public static synthetic $r8$lambda$-cqe-2AfwnIIrQ95lESXdQ1-KwE(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->lambda$setIcon$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    .line 79
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    .line 72
    iput-boolean v5, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawGradient:Z

    .line 130
    new-instance v4, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 131
    new-instance v4, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset2:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 80
    iput v2, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    .line 82
    new-instance v4, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v4}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const v6, 0x3f99999a    # 1.2f

    .line 83
    iput v6, v4, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    const/4 v6, 0x0

    .line 84
    iput-boolean v6, v4, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const/high16 v7, 0x40800000    # 4.0f

    .line 85
    iput v7, v4, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    .line 86
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 89
    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v8, 0x3eb33333    # 0.35f

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x15e

    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 90
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 91
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 92
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v10, 0xe

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 93
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    new-instance v7, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 96
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 97
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    const/4 v13, -0x2

    .line 100
    invoke-static {v13, v13, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v4, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v7, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    const/16 v14, 0x78

    invoke-static {v9, v14}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v15

    invoke-static {v2, v6, v15}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v7, 0x10

    invoke-static {v13, v13, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v15, 0x18

    const/16 v16, 0x18

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v15 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 108
    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v2, v1, v5, v5, v5}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x22

    .line 109
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v4, v6, v1, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 110
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 111
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 112
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 113
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAllowCancel(Z)V

    .line 115
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v9, v14}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-static {v2, v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 118
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlayProgress()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/16 v0, 0x8

    .line 75
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Premium/PremiumButtonView;F)F
    .locals 0

    .line 35
    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlayProgress()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    return p0
.end method

.method private synthetic lambda$setIcon$0()V
    .locals 3

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private updateOverlay(Z)V
    .locals 4

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 210
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    .line 211
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlayProgress()V

    return-void

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v2, 0x0

    .line 214
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    aput v3, p1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    aput v0, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    .line 215
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateOverlayProgress()V
    .locals 5

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    sub-float v2, v4, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    cmpl-float v1, v1, v4

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public checkCounterView()V
    .locals 4

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lorg/telegram/ui/Components/CounterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    const/4 v1, 0x3

    .line 300
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CounterView;->setGravity(I)V

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;->setColors(II)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    const/4 v1, -0x1

    const/16 v2, 0x18

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public clearOverlayText()V
    .locals 1

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    const/4 v0, 0x1

    .line 246
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlay(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 141
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v0, v0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v4

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float/2addr v0, v2

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset2:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getWidth()F

    move-result v5

    div-float/2addr v5, v2

    add-float/2addr v3, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset2:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 150
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 151
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawOverlayColor:Z

    if-nez v3, :cond_6

    .line 152
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->inc:Z

    const v5, 0x3c83126f    # 0.016f

    if-eqz v3, :cond_3

    .line 153
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    add-float/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    const/4 v3, 0x0

    .line 155
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->inc:Z

    goto :goto_1

    .line 158
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    sub-float/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    const/4 v3, 0x1

    .line 160
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->inc:Z

    .line 163
    :cond_4
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawGradient:Z

    if-eqz v3, :cond_5

    .line 164
    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v10

    iget v10, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    mul-float/2addr v10, v3

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->updateMainGradientMatrix(IIIIFF)V

    .line 165
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v5, v3

    int-to-float v3, v3

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v0, v5, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 167
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 168
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v5, v3

    int-to-float v3, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 170
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 173
    :cond_6
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isFlickerDisabled:Z

    if-nez v3, :cond_7

    .line 174
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    .line 175
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v0, v5, v6}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 178
    :cond_7
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawOverlayColor:Z

    if-eqz v1, :cond_9

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    .line 181
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 182
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3fb33333    # 1.4f

    mul-float/2addr v2, v5

    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    mul-float/2addr v2, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 184
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 185
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 188
    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 193
    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIconView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method public getTextView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method public hideIcon()V
    .locals 2

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setOnRestartCallback(Ljava/lang/Runnable;)V

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V
    .locals 2

    .line 286
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isButtonTextSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    move p3, v1

    .line 289
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isButtonTextSet:Z

    if-eqz p3, :cond_1

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    .line 293
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 294
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 272
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setFlickerDisabled(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isFlickerDisabled:Z

    .line 267
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x18

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    .line 252
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setOnRestartCallback(Ljava/lang/Runnable;)V

    .line 256
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOverlayText(Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    .line 198
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawOverlayColor:Z

    .line 199
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 200
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlay(Z)V

    return-void
.end method
