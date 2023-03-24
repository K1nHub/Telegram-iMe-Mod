.class public Lorg/telegram/ui/Components/EmptyTextProgressView;
.super Landroid/widget/FrameLayout;
.source "EmptyTextProgressView.java"


# instance fields
.field private inLayout:Z

.field private lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private progressView:Landroid/view/View;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private showAtPos:I

.field private textView:Landroid/widget/TextView;

.field private textViewLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$8nH8zAnzG_iOQz8u5LEx8EcAeaI(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p3, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p3, -0x2

    if-nez p2, :cond_0

    .line 51
    new-instance p2, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {p3, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 54
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressView:Landroid/view/View;

    .line 58
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x14

    .line 59
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 66
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v4, 0x96

    const/16 v5, 0x96

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/high16 p1, 0x41a00000    # 20.0f

    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const-string v0, "emptyListPlaceholder"

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v1, "NoResult"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-static {p3, p3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textViewLayout:Landroid/widget/LinearLayout;

    invoke-static {p3, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p1, v3, p3, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 87
    invoke-static {p2, v3, p1, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 89
    sget-object p1, Lorg/telegram/ui/Components/EmptyTextProgressView$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/Components/EmptyTextProgressView$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->inLayout:Z

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_4

    .line 160
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 166
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p4, v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    .line 168
    iget-object v4, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressView:Landroid/view/View;

    if-ne v1, v4, :cond_1

    instance-of v4, v4, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, p5, v4

    div-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    goto :goto_1

    .line 171
    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->showAtPos:I

    if-ne v4, v3, :cond_2

    const/16 v4, 0x64

    .line 172
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    :goto_1
    add-int/2addr v4, v3

    goto :goto_2

    :cond_2
    if-ne v4, p1, :cond_3

    .line 174
    div-int/lit8 v4, p5, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, p5, v4

    div-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    goto :goto_1

    .line 179
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_4
    iput-boolean p3, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->inLayout:Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->inLayout:Z

    if-nez v0, :cond_0

    .line 187
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setLottie(III)V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 118
    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_1
    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 2

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Components/RadialProgressView;

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    :cond_0
    return-void
.end method

.method public setShowAtCenter(Z)V
    .locals 0

    .line 146
    iput p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->showAtPos:I

    return-void
.end method

.method public setShowAtTop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 150
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->showAtPos:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTopImage(I)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 134
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "emptyListPlaceholder"

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, p1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :goto_0
    return-void
.end method

.method public showProgress()V
    .locals 1

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress(Z)V

    return-void
.end method

.method public showProgress(Z)V
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressView:Landroid/view/View;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method

.method public showTextView()V
    .locals 4

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const v2, 0x3f666666    # 0.9f

    invoke-static {v0, v1, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/EmptyTextProgressView;->progressView:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method
