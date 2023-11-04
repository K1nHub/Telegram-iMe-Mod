.class Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "PhotoViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoViewerActionBarContainer"
.end annotation


# instance fields
.field private container:Landroid/widget/FrameLayout;

.field private hasSubtitle:Z

.field lastHeight:I

.field private rightPadding:F

.field private rightPaddingAnimator:Landroid/animation/ValueAnimator;

.field private subtitleAnimator:Landroid/animation/AnimatorSet;

.field subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private titleAnimator:Landroid/animation/AnimatorSet;

.field private titleLayout:Landroid/widget/FrameLayout;

.field titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$sMVR-FaPq9WfW920YAdSYgISa_A(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->lambda$updateRightPadding$0(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 611
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 613
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->container:Landroid/widget/FrameLayout;

    .line 614
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x48

    :goto_0
    const/16 v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->container:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v4, 0x77

    invoke-static {v1, v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    new-instance v0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$1;-><init>(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    .line 624
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->container:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    new-array v2, v0, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 629
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move v2, v3

    :goto_1
    const/16 v4, 0x13

    const/4 v5, 0x1

    if-ge v2, v0, :cond_1

    .line 631
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    new-instance v7, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v7, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v2

    .line 632
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 633
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 634
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v2

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 635
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v2

    const-string v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 636
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v2

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 637
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScrollNonFitText(Z)V

    .line 638
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v2

    const/4 v7, -0x2

    invoke-static {v1, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 641
    :cond_1
    new-instance v6, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v6, p1, v5, v3, v3}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v6, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const v7, 0x3ecccccd    # 0.4f

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x140

    .line 642
    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 643
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v0, 0xe

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 644
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 645
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 646
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->container:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v1, -0x1

    const/16 v2, 0x14

    const/16 v3, 0x33

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 603
    iget-object p0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 603
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private areStringsEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_3

    return v1

    .line 683
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$updateRightPadding$0(FLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 800
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPadding:F

    .line 801
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    float-to-int v0, p1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 802
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 803
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setRightPadding(F)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 844
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 845
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 846
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 847
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 853
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 854
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 859
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 860
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 838
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move p1, v0

    .line 839
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->container:Landroid/widget/FrameLayout;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {v1, v0, p1, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 825
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 826
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 827
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 828
    :goto_0
    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->lastHeight:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v1, v2, :cond_1

    .line 829
    iput v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->lastHeight:I

    .line 830
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->updateOrientation()V

    .line 832
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->container:Landroid/widget/FrameLayout;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    sub-int v0, p2, v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 833
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 745
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 13

    .line 748
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 749
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->hasSubtitle:Z

    if-eq v0, v2, :cond_d

    .line 750
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->hasSubtitle:Z

    .line 752
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 753
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 756
    :cond_0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    if-le v3, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v0, :cond_2

    const/16 v3, 0x1e

    goto :goto_1

    :cond_2
    const/16 v3, 0x21

    :goto_1
    if-eqz v2, :cond_3

    const/4 v2, 0x6

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    sub-int/2addr v3, v2

    .line 757
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, -0xc

    const v5, 0x3f5eb852    # 0.87f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p2, :cond_8

    .line 760
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 761
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v1, [F

    if-eqz v0, :cond_4

    move v12, v7

    goto :goto_3

    :cond_4
    move v12, v6

    :goto_3
    aput v12, v11, v4

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v1, [F

    int-to-float v2, v2

    aput v2, v11, v4

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v1, [F

    if-eqz v0, :cond_5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v6, v3

    :cond_5
    aput v6, v10, v4

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v1, [F

    if-eqz v0, :cond_6

    move v9, v5

    goto :goto_4

    :cond_6
    move v9, v7

    :goto_4
    aput v9, v6, v4

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v5, v7

    :goto_5
    aput v5, v1, v4

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleAnimator:Landroid/animation/AnimatorSet;

    .line 767
    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 768
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleAnimator:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_9

    .line 771
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_9

    move v4, v7

    goto :goto_6

    :cond_9
    move v4, v6

    :goto_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 772
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 773
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v6, v2

    :cond_a
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 774
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    move v2, v5

    goto :goto_7

    :cond_b
    move v2, v7

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 775
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    move v5, v7

    :goto_8
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 778
    :cond_d
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setTextShadows(Z)V
    .locals 8

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const v2, 0x3f28f5c3    # 0.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    const/high16 v4, 0x72000000

    if-eqz p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v6, v7, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    if-eqz p1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-virtual {v0, v3, v6, v7, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    if-eqz p1, :cond_2

    move v1, v4

    :cond_2
    invoke-virtual {v0, v2, v6, v7, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setShadowLayer(FFFI)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->areStringsEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->resetScrolling()V

    .line 664
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 665
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 666
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setTitleAnimated(Ljava/lang/CharSequence;ZZ)V
    .locals 7

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->areStringsEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 694
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 695
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleAnimator:Landroid/animation/AnimatorSet;

    .line 698
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->copyScrolling(Lorg/telegram/ui/ActionBar/SimpleTextView;)V

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v2

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPadding:F

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->resetScrolling()V

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 p1, 0x8

    .line 704
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    if-eqz p3, :cond_2

    move p3, v2

    goto :goto_0

    :cond_2
    const/4 p3, -0x1

    :goto_0
    mul-int/2addr p1, p3

    int-to-float p1, p1

    .line 706
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, v2

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 707
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, v2

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p2, :cond_3

    .line 709
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, v1

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 710
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, v1

    neg-float v3, p1

    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 712
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, v1

    neg-float v3, p1

    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 713
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, v1

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 716
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, v1

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 717
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 718
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object p3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p3, p3, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 721
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 722
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    aput v0, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v1

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    aput v3, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v2

    if-eqz p2, :cond_4

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_2

    :cond_4
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    :goto_2
    new-array v5, v2, [F

    aput p1, v5, v1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    if-eqz p2, :cond_5

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_3

    :cond_5
    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    :goto_3
    new-array v2, v2, [F

    aput v0, v2, v1

    invoke-static {p1, p2, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleAnimator:Landroid/animation/AnimatorSet;

    .line 727
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 728
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$2;-><init>(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 737
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 738
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleAnimator:Landroid/animation/AnimatorSet;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 739
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public updateOrientation()V
    .locals 2

    .line 782
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->hasSubtitle:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->hasSubtitle:Z

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public updateRightPadding(FZ)V
    .locals 2

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPaddingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 795
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPaddingAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 798
    iget v1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPadding:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 799
    new-instance v0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;F)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 805
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPaddingAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer$3;-><init>(Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;F)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 811
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPaddingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 812
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPaddingAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 813
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPaddingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 815
    :cond_1
    iput p1, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->rightPadding:F

    .line 816
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v0

    float-to-int v0, p1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 817
    iget-object p2, p0, Lorg/telegram/ui/PhotoViewer$PhotoViewerActionBarContainer;->subtitleTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setRightPadding(F)V

    :goto_0
    return-void
.end method
