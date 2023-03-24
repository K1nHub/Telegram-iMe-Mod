.class public Lorg/telegram/ui/Cells/DialogsEmptyCell;
.super Landroid/widget/LinearLayout;
.source "DialogsEmptyCell.java"


# instance fields
.field private currentAccount:I

.field private currentType:I

.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private onUtyanAnimationEndListener:Ljava/lang/Runnable;

.field private onUtyanAnimationUpdateListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private prevIcon:I

.field private subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

.field private titleView:Landroid/widget/TextView;

.field private utyanAnimationTriggered:Z

.field private utyanAnimator:Landroid/animation/ValueAnimator;

.field private utyanCollapseProgress:F


# direct methods
.method public static synthetic $r8$lambda$EZBh9dIKAqFHQ518PFNPpE9QmAU(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ILcLARv7w7rmAKHEPNKWpIrd_n8(Lorg/telegram/ui/Cells/DialogsEmptyCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dVcpYCWWXOUTIe_uqruPMQei-uo(Lorg/telegram/ui/Cells/DialogsEmptyCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->lambda$startUtyanExpandAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hFx7p1wf49-ce301Fzb-0ZB50-4(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->lambda$new$2(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nsFq8ocupyV0d6qZQUSYIEgNDxI(Lorg/telegram/ui/Cells/DialogsEmptyCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->lambda$startUtyanCollapseAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    .line 83
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentAccount:I

    const/16 v0, 0x11

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    sget-object v2, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    new-instance v2, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 93
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 94
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, 0x11

    const/16 v6, 0x34

    const/4 v7, 0x4

    const/16 v8, 0x34

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v3, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    const-string v3, "chats_nameMessage_threeLines"

    .line 103
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x33

    const/16 v4, 0x34

    const/16 v5, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v0, Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/TextViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    .line 110
    new-instance v1, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$anim;->alpha_in:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    sget v1, Lorg/telegram/messenger/R$anim;->alpha_out:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x33

    const/16 v3, 0x34

    const/4 v4, 0x7

    const/16 v5, 0x34

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/DialogsEmptyCell;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationEndListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/DialogsEmptyCell;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Cells/DialogsEmptyCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$2(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 111
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p0, "chats_message"

    .line 112
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    .line 113
    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p0, 0x11

    .line 114
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p0, 0x2

    .line 115
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-object v0
.end method

.method private synthetic lambda$startUtyanCollapseAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 243
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    .line 244
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationUpdateListener:Landroidx/core/util/Consumer;

    if-eqz p1, :cond_0

    .line 246
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startUtyanExpandAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 207
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    .line 208
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 209
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationUpdateListener:Landroidx/core/util/Consumer;

    if-eqz p1, :cond_0

    .line 210
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private measureUtyanHeight(I)I
    .locals 2

    .line 294
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    const/16 v1, 0x15

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_1

    .line 298
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, p1

    goto :goto_0

    .line 301
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 304
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p1, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    sub-int v0, p1, v0

    .line 306
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-eqz p1, :cond_4

    .line 307
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/BlurredRecyclerView;

    iget p1, p1, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    sub-int/2addr v0, p1

    :cond_4
    int-to-float p1, v0

    const/16 v1, 0x140

    .line 310
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public isUtyanAnimationTriggered()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimationTriggered:Z

    return v0
.end method

.method public offsetTopAndBottom(I)V
    .locals 0

    .line 271
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->offsetTopAndBottom(I)V

    .line 272
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->updateLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 265
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 266
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->updateLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 315
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x2

    const/16 v4, 0x64

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-lt v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0xa6

    .line 342
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/16 :goto_4

    .line 319
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    const/16 v3, 0x15

    if-eqz v0, :cond_3

    .line 320
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 321
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 322
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    if-eqz p2, :cond_4

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_4

    .line 323
    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, p2

    goto :goto_1

    .line 326
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 328
    iget p2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    if-lt p2, v4, :cond_7

    .line 329
    :cond_5
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sub-int/2addr p2, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_6

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    sub-int v0, p2, v0

    .line 332
    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-eqz p2, :cond_8

    .line 333
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/BlurredRecyclerView;

    iget p2, p2, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    sub-int/2addr v0, p2

    .line 336
    :cond_8
    iget p2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->hintDialogs:Ljava/util/ArrayList;

    .line 337
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v3, 0x48

    .line 338
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr v3, p2

    sub-int/2addr v3, v2

    const/16 p2, 0x32

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr v3, p2

    sub-int/2addr v0, v3

    .line 340
    :cond_9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_4

    .line 316
    :cond_a
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->measureUtyanHeight(I)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_4
    return-void
.end method

.method public setOnUtyanAnimationEndListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationEndListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnUtyanAnimationUpdateListener(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationUpdateListener:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setType(I)V
    .locals 8

    .line 132
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 135
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-lt p1, v1, :cond_1

    .line 140
    invoke-static {}, Lcom/smedialink/ui/dialogs/EmptyCellType;->values()[Lcom/smedialink/ui/dialogs/EmptyCellType;

    move-result-object v3

    sub-int/2addr p1, v1

    aget-object p1, v3, p1

    .line 141
    invoke-virtual {p1}, Lcom/smedialink/ui/dialogs/EmptyCellType;->getIconResId()I

    move-result v3

    .line 142
    invoke-virtual {p1}, Lcom/smedialink/ui/dialogs/EmptyCellType;->getSubtitleResId()I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    .line 143
    iget-object v5, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smedialink/ui/dialogs/EmptyCellType;->getTitleResId()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 161
    sget v3, Lorg/telegram/messenger/R$raw;->filter_new:I

    .line 162
    sget p1, Lorg/telegram/messenger/R$string;->FilterAddingChatsInfo:I

    const-string v4, "FilterAddingChatsInfo"

    invoke-static {v4, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->FilterAddingChats:I

    const-string v6, "FilterAddingChats"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 154
    sget v3, Lorg/telegram/messenger/R$raw;->filter_no_chats:I

    .line 155
    sget p1, Lorg/telegram/messenger/R$string;->FilterNoChatsToDisplayInfo:I

    const-string v4, "FilterNoChatsToDisplayInfo"

    invoke-static {v4, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->FilterNoChatsToDisplay:I

    const-string v6, "FilterNoChatsToDisplay"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_3
    sget v3, Lorg/telegram/messenger/R$raw;->utyan_newborn:I

    .line 149
    sget p1, Lorg/telegram/messenger/R$string;->NoChatsHelp:I

    const-string v4, "NoChatsHelp"

    invoke-static {v4, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->NoChats:I

    const-string v6, "NoChats"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 p1, 0x20

    const/16 v5, 0xa

    if-eqz v3, :cond_7

    .line 167
    iget-object v6, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget v6, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    if-ne v6, v2, :cond_6

    .line 169
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v6

    if-eqz v6, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    .line 170
    iput v6, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    .line 171
    sget v6, Lorg/telegram/messenger/R$string;->NoChatsContactsHelp:I

    const-string v7, "NoChatsContactsHelp"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v7

    if-nez v7, :cond_4

    .line 173
    invoke-virtual {v6, v5, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 175
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v7, v6, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 176
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_1

    .line 178
    :cond_5
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    .line 181
    :cond_6
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->prevIcon:I

    if-eq v2, v3, :cond_8

    .line 182
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, v3, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 183
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 184
    iput v3, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->prevIcon:I

    goto :goto_2

    .line 187
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :cond_8
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v1

    if-nez v1, :cond_9

    .line 190
    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 192
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {p1, v4, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public startUtyanCollapseAnimation(Z)V
    .locals 3

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimationTriggered:Z

    if-eqz p1, :cond_2

    .line 233
    sget p1, Lorg/telegram/messenger/R$string;->NoChatsContactsHelp:I

    const-string v1, "NoChatsContactsHelp"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    const/16 v2, 0x20

    .line 235
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 237
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    .line 240
    iget v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    aput v2, p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    .line 241
    sget-object v0, Lorg/telegram/ui/Components/Easings;->easeOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startUtyanExpandAnimation()V
    .locals 3

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimationTriggered:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 204
    iget v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    aput v2, v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    .line 205
    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Cells/DialogsEmptyCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$1;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateLayout()V
    .locals 4

    .line 277
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_1

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 284
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :cond_2
    int-to-float v0, v1

    .line 285
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v1, v0

    .line 287
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setTranslationY(F)V

    return-void
.end method
