.class public Lorg/telegram/ui/Components/Premium/PremiumButtonView;
.super Landroid/widget/FrameLayout;
.source "PremiumButtonView.java"


# instance fields
.field public buttonLayout:Landroid/widget/FrameLayout;

.field public buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

.field counterOffset2:Lorg/telegram/ui/Components/AnimatedFloat;

.field counterView:Lorg/telegram/ui/Components/CounterView;

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

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 63
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    .line 113
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 114
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset2:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 64
    iput v2, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    .line 66
    new-instance v3, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const v5, 0x3f99999a    # 1.2f

    .line 67
    iput v5, v3, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->animationSpeedScale:F

    const/4 v5, 0x0

    .line 68
    iput-boolean v5, v3, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->drawFrame:Z

    const/high16 v6, 0x40800000    # 4.0f

    .line 69
    iput v6, v3, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->repeatProgress:F

    .line 70
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    new-instance v6, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v7, 0x11

    .line 73
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 74
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 75
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v9, 0xe

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 76
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v10, "fonts/rmedium.ttf"

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    new-instance v6, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 79
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 80
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    const/4 v12, -0x2

    .line 83
    invoke-static {v12, v12, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v6, v3, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v6, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    const/16 v13, 0x78

    invoke-static {v8, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v14

    invoke-static {v2, v5, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v6, 0x10

    invoke-static {v12, v12, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v14, 0x18

    const/16 v15, 0x18

    const/16 v16, 0x0

    const/16 v17, 0x10

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v14 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_0

    .line 91
    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v2, v1, v4, v4, v4}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0x22

    .line 92
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v2, v3, v5, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 94
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v2, "featuredStickers_buttonText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 95
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 96
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAllowCancel(Z)V

    .line 98
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v8, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v2, v5, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 101
    iget-object v1, v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    const-string v2, "featuredStickers_addButton"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlayProgress()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/16 v0, 0x8

    .line 59
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Premium/PremiumButtonView;F)F
    .locals 0

    .line 32
    iput p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlayProgress()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    return p0
.end method

.method private synthetic lambda$setIcon$0()V
    .locals 3

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private updateOverlay(Z)V
    .locals 4

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 188
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    .line 189
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlayProgress()V

    return-void

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v2, 0x0

    .line 192
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

    .line 193
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$1;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$2;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 208
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateOverlayProgress()V
    .locals 5

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 214
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

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    sub-float v2, v4, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 217
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

    .line 218
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

    .line 219
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public checkCounterView()V
    .locals 4

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lorg/telegram/ui/Components/CounterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    const/4 v1, 0x3

    .line 278
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CounterView;->setGravity(I)V

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    const-string v1, "featuredStickers_addButton"

    const-string v2, "featuredStickers_buttonText"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/CounterView;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/CounterView;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->circleScale:F

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 282
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

    .line 223
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    const/4 v0, 0x1

    .line 224
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlay(Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterView:Lorg/telegram/ui/Components/CounterView;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 124
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

    .line 125
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

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->counterOffset:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFloat;->get()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 127
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

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 133
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

    .line 134
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawOverlayColor:Z

    if-nez v3, :cond_5

    .line 135
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->inc:Z

    const v5, 0x3c83126f    # 0.016f

    if-eqz v3, :cond_3

    .line 136
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    add-float/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    const/high16 v5, 0x40400000    # 3.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    const/4 v3, 0x0

    .line 138
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->inc:Z

    goto :goto_1

    .line 141
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    sub-float/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->progress:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    const/4 v3, 0x1

    .line 143
    iput-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->inc:Z

    .line 146
    :cond_4
    :goto_1
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

    .line 147
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v5, v3

    int-to-float v3, v3

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getMainGradientPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v0, v5, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 151
    :cond_5
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->IS_BILLING_UNAVAILABLE:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isFlickerDisabled:Z

    if-nez v3, :cond_6

    .line 152
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setParentWidth(I)V

    .line 153
    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    iget v5, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v0, v5, v6}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/view/View;)V

    .line 156
    :cond_6
    iget v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawOverlayColor:Z

    if-eqz v1, :cond_8

    .line 157
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 158
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayProgress:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_7

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 160
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

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 163
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 166
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->radius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->paintOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 171
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIconView()Lorg/telegram/ui/Components/RLottieImageView;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object v0
.end method

.method public getTextView()Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object v0
.end method

.method public hideIcon()V
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setOnRestartCallback(Ljava/lang/Runnable;)V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V
    .locals 2

    .line 264
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isButtonTextSet:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    move p3, v1

    .line 267
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isButtonTextSet:Z

    if-eqz p3, :cond_1

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->cancelAnimation()V

    .line 271
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->buttonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setFlickerDisabled(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->isFlickerDisabled:Z

    .line 245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x18

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 229
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->flickerDrawable:Lorg/telegram/ui/Components/voip/CellFlickerDrawable;

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p1, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->progress:F

    .line 230
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/PremiumButtonView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/PremiumButtonView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/voip/CellFlickerDrawable;->setOnRestartCallback(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 235
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->iconView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setOverlayText(Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->showOverlay:Z

    .line 176
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->drawOverlayColor:Z

    .line 177
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->overlayTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 178
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->updateOverlay(Z)V

    return-void
.end method
