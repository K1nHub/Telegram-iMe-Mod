.class public Lorg/telegram/ui/Cells/DialogsEmptyCell;
.super Landroid/widget/LinearLayout;
.source "DialogsEmptyCell.java"


# instance fields
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

    .line 103
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

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

    .line 112
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

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

    .line 248
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    .line 249
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationUpdateListener:Landroidx/core/util/Consumer;

    if-eqz p1, :cond_0

    .line 251
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startUtyanExpandAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 212
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    .line 213
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 214
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->onUtyanAnimationUpdateListener:Landroidx/core/util/Consumer;

    if-eqz p1, :cond_0

    .line 215
    iget v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private measureUtyanHeight(I)I
    .locals 3

    .line 299
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    const/16 v1, 0x15

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 303
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v2, v0

    goto :goto_0

    .line 306
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 309
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 311
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-eqz v0, :cond_3

    .line 312
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/BlurredRecyclerView;

    iget v0, v0, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    .line 314
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float v0, p1

    const/16 v1, 0x140

    .line 316
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    iget v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method


# virtual methods
.method public isUtyanAnimationTriggered()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimationTriggered:Z

    return v0
.end method

.method public offsetTopAndBottom(I)V
    .locals 0

    .line 276
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->offsetTopAndBottom(I)V

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->updateLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 270
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 271
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->updateLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 322
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-direct {p0, p2}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->measureUtyanHeight(I)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

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

.method public setType(IZ)V
    .locals 7

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
    invoke-static {}, Lcom/iMe/ui/dialogs/EmptyCellType;->values()[Lcom/iMe/ui/dialogs/EmptyCellType;

    move-result-object p2

    sub-int/2addr p1, v1

    aget-object p1, p2, p1

    .line 141
    invoke-virtual {p1}, Lcom/iMe/ui/dialogs/EmptyCellType;->getIconResId()I

    move-result p2

    .line 142
    invoke-virtual {p1}, Lcom/iMe/ui/dialogs/EmptyCellType;->getSubtitleResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    iget-object v4, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iMe/ui/dialogs/EmptyCellType;->getTitleResId()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 166
    sget p2, Lorg/telegram/messenger/R$raw;->filter_new:I

    .line 167
    sget p1, Lorg/telegram/messenger/R$string;->FilterAddingChatsInfo:I

    const-string v3, "FilterAddingChatsInfo"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->FilterAddingChats:I

    const-string v5, "FilterAddingChats"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 153
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 154
    sget p1, Lorg/telegram/messenger/R$raw;->filter_no_chats:I

    if-eqz p2, :cond_3

    .line 156
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->FilterNoChatsToForward:I

    const-string v4, "FilterNoChatsToForward"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget p2, Lorg/telegram/messenger/R$string;->FilterNoChatsToForwardInfo:I

    const-string v3, "FilterNoChatsToForwardInfo"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 159
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->FilterNoChatsToDisplay:I

    const-string v4, "FilterNoChatsToDisplay"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    sget p2, Lorg/telegram/messenger/R$string;->FilterNoChatsToDisplayInfo:I

    const-string v3, "FilterNoChatsToDisplayInfo"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move p2, p1

    goto :goto_1

    .line 148
    :cond_4
    sget p2, Lorg/telegram/messenger/R$raw;->utyan_newborn:I

    .line 149
    sget p1, Lorg/telegram/messenger/R$string;->NoChatsHelp:I

    const-string v3, "NoChatsHelp"

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->NoChats:I

    const-string v5, "NoChats"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/16 p1, 0x20

    const/16 v4, 0xa

    if-eqz p2, :cond_8

    .line 172
    iget-object v5, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget v5, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->currentType:I

    if-ne v5, v2, :cond_7

    .line 174
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->isUtyanAnimationTriggered()Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x3f800000    # 1.0f

    .line 175
    iput v5, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    .line 176
    sget v5, Lorg/telegram/messenger/R$string;->NoChatsContactsHelp:I

    const-string v6, "NoChatsContactsHelp"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v6

    if-nez v6, :cond_5

    .line 178
    invoke-virtual {v5, v4, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 180
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v6, v5, v2}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    .line 181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_2

    .line 183
    :cond_6
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V

    .line 186
    :cond_7
    :goto_2
    iget v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->prevIcon:I

    if-eq v2, p2, :cond_9

    .line 187
    iget-object v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v2, p2, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 189
    iput p2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->prevIcon:I

    goto :goto_3

    .line 192
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    :cond_9
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result p2

    if-nez p2, :cond_a

    .line 195
    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {p1, v3, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public startUtyanCollapseAnimation(Z)V
    .locals 3

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimationTriggered:Z

    if-eqz p1, :cond_2

    .line 238
    sget p1, Lorg/telegram/messenger/R$string;->NoChatsContactsHelp:I

    const-string v1, "NoChatsContactsHelp"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    const/16 v2, 0x20

    .line 240
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 242
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/TextViewSwitcher;->setText(Ljava/lang/CharSequence;Z)V

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    .line 245
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

    .line 246
    sget-object v0, Lorg/telegram/ui/Components/Easings;->easeOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 265
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startUtyanExpandAnimation()V
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimationTriggered:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 209
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

    .line 210
    sget-object v1, Lorg/telegram/ui/Components/Easings;->easeOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Cells/DialogsEmptyCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/DialogsEmptyCell$1;-><init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateLayout()V
    .locals 4

    const/4 v0, 0x0

    int-to-float v0, v0

    .line 290
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->utyanCollapseProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 292
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 293
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell;->subtitleView:Lorg/telegram/ui/Components/TextViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setTranslationY(F)V

    return-void
.end method
