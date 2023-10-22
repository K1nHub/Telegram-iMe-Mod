.class Lorg/telegram/ui/DialogsActivity$ContentView;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentView"
.end annotation


# instance fields
.field private actionBarSearchPaint:Landroid/graphics/Paint;

.field private inputFieldHeight:I

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private wasPortrait:Z

.field private windowBackgroundPaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$AR44vpmvZG5dmjNm30NmGNkBUgw(Lorg/telegram/ui/DialogsActivity$ContentView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->lambda$onMeasure$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$uMoUOBSB9bjdXcMaq2CVtmggkns(Lorg/telegram/ui/DialogsActivity$ContentView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->lambda$onTouchEvent$1()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 2000
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2001
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 1996
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    .line 1997
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->windowBackgroundPaint:Landroid/graphics/Paint;

    .line 2002
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->needBlur:Z

    .line 2003
    iget-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 2

    .line 2576
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2577
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 2578
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$13602(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTouchEvent$1()V
    .locals 8

    .line 2865
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v7, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$16000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .line 2015
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2019
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/FilterTabsView;->getNextPageId(Z)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 2023
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2024
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/DialogsActivity;->access$4902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2025
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$5002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    .line 2027
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 2028
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2029
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    .line 2030
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2031
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$5302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2032
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$5400(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 2033
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/DialogsActivity;->switchToCurrentSelectedMode(Z)V

    if-eqz p2, :cond_2

    .line 2035
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 2037
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_0
    return v3
.end method


# virtual methods
.method public checkTabsAnimationInProgress()Z
    .locals 7

    .line 2049
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2051
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$5800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    .line 2052
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 2053
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2054
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v5

    :cond_0
    mul-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 2057
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 2058
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    mul-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2059
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_1
    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 2063
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/DialogsActivity;->access$5400(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 2064
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2065
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2066
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$5902(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2068
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$5702(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2070
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    return v0

    :cond_6
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 2163
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    const/16 v10, 0x51

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_b

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v1, :cond_b

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpl-float v0, v0, v13

    if-nez v0, :cond_b

    .line 2164
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v12}, Lorg/telegram/ui/DialogsActivity;->access$4002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2165
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v12

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$7500(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v12

    .line 2166
    :goto_0
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v12

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    .line 2167
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$7600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2168
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$7700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v0, v12

    goto :goto_3

    :cond_1
    if-nez v0, :cond_2

    .line 2172
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v12}, Lorg/telegram/ui/DialogsActivity;->access$7602(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2174
    :cond_2
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$7600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2175
    invoke-virtual {v1, v12}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2177
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v12}, Lorg/telegram/ui/DialogsActivity;->access$7602(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_2

    .line 2178
    :cond_3
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_4

    .line 2179
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v12}, Lorg/telegram/ui/DialogsActivity;->access$7602(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_2

    .line 2180
    :cond_4
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 2181
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v12}, Lorg/telegram/ui/DialogsActivity;->access$7602(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2183
    :cond_5
    :goto_2
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$7600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne v0, v11, :cond_6

    goto :goto_1

    .line 2190
    :cond_6
    :goto_3
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2192
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr v1, v0

    cmpl-float v0, v1, v13

    if-ltz v0, :cond_9

    .line 2194
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    neg-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    cmpl-float v0, v1, v13

    if-lez v0, :cond_8

    move v1, v13

    .line 2201
    :cond_8
    :goto_4
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;F)V

    goto :goto_5

    .line 2203
    :cond_9
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v13}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;F)V

    goto :goto_5

    .line 2206
    :cond_a
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;F)V

    .line 2209
    :cond_b
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarFullHeight()I

    move-result v14

    .line 2211
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2212
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_6

    .line 2214
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarTop()I

    move-result v0

    :goto_6
    move v15, v0

    .line 2216
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    add-int v7, v15, v14

    invoke-virtual {v0, v7}, Lorg/telegram/ui/RightSlidingDialogContainer;->setCurrentTop(I)V

    .line 2218
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity;->whiteActionBar:Z

    const/high16 v16, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_19

    .line 2219
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_d

    .line 2220
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2221
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2222
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2223
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2224
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2225
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 2226
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_7

    .line 2229
    :cond_d
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpl-float v0, v0, v13

    if-nez v0, :cond_e

    .line 2230
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 2231
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2234
    :cond_e
    :goto_7
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v5, v12, v15, v0, v7}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x0

    .line 2235
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_f

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    goto :goto_8

    :cond_f
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_8
    move-object v4, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v5

    move-object v11, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 2236
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_18

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_18

    .line 2237
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$8100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    if-nez v1, :cond_10

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    goto :goto_9

    :cond_10
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    :goto_9
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2238
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_a

    .line 2247
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v11, v12, v15, v0, v7}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x0

    .line 2248
    iget-object v4, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v11

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    move v11, v7

    goto :goto_c

    .line 2239
    :cond_12
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2240
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v9, v12, v15, v0, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2241
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 2242
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_b

    :cond_13
    move v0, v12

    :goto_b
    int-to-float v1, v0

    .line 2243
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$8500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float v4, v1, v0

    const/4 v2, 0x0

    .line 2244
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v1

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    mul-float v5, v0, v1

    iget-object v11, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v11

    move v11, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurCircle(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;Z)V

    .line 2245
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2250
    :goto_c
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 2252
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2253
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$8600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v14, v1

    int-to-float v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_d

    .line 2255
    :cond_14
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$8700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v14, v1

    int-to-float v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2257
    :cond_15
    :goto_d
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2258
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v7, v11, v0

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    sub-int/2addr v7, v0

    int-to-float v0, v7

    .line 2260
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$8800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2261
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_16

    move v1, v13

    goto :goto_e

    :cond_16
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    sub-float v1, v1, v16

    div-float v1, v1, v16

    goto :goto_e

    .line 2263
    :cond_17
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    .line 2266
    :goto_e
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2267
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2268
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$8000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 2269
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$8000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 2270
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_10

    :cond_18
    move v11, v7

    goto :goto_10

    :cond_19
    move v11, v7

    .line 2274
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2275
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_1b

    .line 2276
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$8100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    if-nez v1, :cond_1a

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    goto :goto_f

    :cond_1a
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    :goto_f
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2277
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v3, v12, v15, v0, v11}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x0

    .line 2278
    iget-object v4, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->actionBarSearchPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    goto :goto_10

    .line 2280
    :cond_1b
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v3, v12, v15, v0, v11}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x0

    .line 2281
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 2284
    :cond_1c
    :goto_10
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v13}, Lorg/telegram/ui/DialogsActivity;->access$9002(Lorg/telegram/ui/DialogsActivity;F)F

    .line 2285
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v13}, Lorg/telegram/ui/DialogsActivity;->access$9102(Lorg/telegram/ui/DialogsActivity;F)F

    .line 2286
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v1, :cond_1e

    .line 2287
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v13

    goto :goto_11

    :cond_1d
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_11
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$9024(Lorg/telegram/ui/DialogsActivity;F)F

    .line 2288
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$9102(Lorg/telegram/ui/DialogsActivity;F)F

    .line 2290
    :cond_1e
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$9200(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_14

    .line 2317
    :cond_1f
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    .line 2319
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2320
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_12

    .line 2322
    :cond_20
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6600(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2323
    :goto_12
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_13

    :cond_21
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_13
    move v0, v6

    goto/16 :goto_19

    :cond_22
    :goto_14
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2292
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2293
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget v0, v0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    goto :goto_15

    :cond_23
    move v0, v13

    .line 2295
    :goto_15
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v2, :cond_24

    .line 2296
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$7800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$9024(Lorg/telegram/ui/DialogsActivity;F)F

    .line 2297
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$9102(Lorg/telegram/ui/DialogsActivity;F)F

    .line 2299
    :cond_24
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCellVisible:Z

    if-eqz v1, :cond_25

    div-float v0, v0, v16

    .line 2300
    invoke-static {v0, v6, v13}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    sub-float v0, v6, v0

    goto :goto_16

    :cond_25
    move v0, v6

    .line 2302
    :goto_16
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_26

    .line 2303
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    sub-float v2, v6, v2

    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$9024(Lorg/telegram/ui/DialogsActivity;F)F

    .line 2304
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2305
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2307
    :cond_26
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2309
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2310
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v13

    goto :goto_17

    :cond_27
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    :goto_17
    neg-float v2, v1

    .line 2311
    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget v3, v3, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    invoke-static {v2, v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    neg-float v1, v1

    goto :goto_18

    :cond_28
    move v1, v13

    .line 2313
    :goto_18
    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v12

    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    sub-float v3, v6, v3

    neg-float v3, v3

    iget-object v4, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$9500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_19

    .line 2315
    :cond_29
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v12

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2, v12}, Lorg/telegram/ui/DialogsActivity;->access$9600(Lorg/telegram/ui/DialogsActivity;Z)F

    move-result v2

    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v12}, Lorg/telegram/ui/DialogsActivity;->access$9600(Lorg/telegram/ui/DialogsActivity;Z)F

    move-result v3

    iget-object v4, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$9500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    iget-object v5, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v5

    sub-float v5, v6, v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2325
    :goto_19
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9700(Lorg/telegram/ui/DialogsActivity;)V

    .line 2326
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->access$9800(Lorg/telegram/ui/DialogsActivity;F)V

    .line 2327
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2328
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v0, Lorg/telegram/ui/DialogsActivity;->whiteActionBar:Z

    if-eqz v1, :cond_2a

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_2a

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2a

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2329
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->windowBackgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2330
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->windowBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2331
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$9900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v15, v0

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v15, v0

    int-to-float v4, v15

    int-to-float v2, v11

    cmpl-float v0, v4, v2

    if-lez v0, :cond_2a

    const/4 v1, 0x0

    .line 2334
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->windowBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2338
    :cond_2a
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    const/high16 v7, 0x437f0000    # 255.0f

    if-eqz v0, :cond_30

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getCastShadows()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2341
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_2c

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2342
    :cond_2b
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    sub-float v1, v6, v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-interface {v0, v9, v1, v11}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;II)V

    .line 2344
    :cond_2c
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_2f

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2345
    :cond_2d
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_2f

    .line 2346
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2e

    .line 2347
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    .line 2348
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    int-to-float v1, v10

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    int-to-float v4, v11

    .line 2349
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2350
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1a

    :cond_2e
    const/4 v1, 0x0

    int-to-float v4, v11

    .line 2352
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2356
    :cond_2f
    :goto_1a
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2357
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$10400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    add-int/2addr v1, v11

    invoke-interface {v0, v9, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    .line 2362
    :cond_30
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2363
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    .line 2364
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2365
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    const/4 v1, 0x0

    .line 2366
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2367
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2369
    :cond_31
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_33

    .line 2370
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    .line 2371
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2372
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    goto :goto_1b

    :cond_32
    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    :goto_1b
    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    int-to-float v4, v0

    .line 2373
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2374
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2376
    :cond_33
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    .line 2377
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    .line 2378
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2379
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    int-to-float v4, v0

    .line 2380
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2381
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2385
    :cond_34
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_35

    .line 2386
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    sub-float v1, v6, v1

    mul-float/2addr v1, v7

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v9, v1, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;II)V

    .line 2389
    :cond_35
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2390
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2391
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2392
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    cmpl-float v2, v1, v6

    if-eqz v2, :cond_3a

    .line 2393
    iget-boolean v2, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentLite:Z

    if-eqz v2, :cond_37

    .line 2394
    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_1c

    :cond_36
    const/4 v0, -0x1

    :goto_1c
    const/16 v1, 0x28

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, v1, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float/2addr v6, v1

    mul-float/2addr v0, v6

    invoke-virtual {v9, v0, v13}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1e

    :cond_37
    const v2, 0x3d4ccccd    # 0.05f

    sub-float v1, v6, v1

    mul-float/2addr v1, v2

    sub-float v1, v6, v1

    .line 2397
    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_38

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_1d

    :cond_38
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    :goto_1d
    int-to-float v0, v0

    iget-object v2, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v2, v2, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float v2, v6, v2

    mul-float/2addr v0, v2

    invoke-virtual {v9, v0, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2398
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    if-eqz v0, :cond_39

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v13, v0

    :cond_39
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    invoke-virtual {v9, v1, v6, v13, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2401
    :cond_3a
    :goto_1e
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 2402
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2403
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 2404
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2420
    :cond_3b
    iget-object v0, v8, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$10802(Lorg/telegram/ui/DialogsActivity;Z)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1985
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1986
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ForwardingPreviewView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    return v1

    .line 1989
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1975
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/multifab/MiniFabsContainer;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->checkTouchEventOnView(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->checkTouchEventOnView(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1976
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$4500(Lorg/telegram/ui/DialogsActivity;Z)V

    const/4 p1, 0x1

    return p1

    .line 1980
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 2113
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2123
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    .line 2124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2125
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getTranslationY()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 2127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 2129
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/16 v4, 0x28

    const/4 v5, -0x1

    const v6, 0x3d4ccccd    # 0.05f

    const/4 v7, 0x4

    const/high16 v8, 0x3f800000    # 1.0f

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    if-eq p2, v0, :cond_a

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v0

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v0

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v0

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v0

    if-ne p2, v0, :cond_3

    goto/16 :goto_3

    .line 2144
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v0, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_9

    .line 2145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2146
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v9, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentLite:Z

    if-eqz v9, :cond_5

    .line 2147
    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v5

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    mul-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, v1, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float/2addr v8, v1

    mul-float/2addr v0, v8

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 2149
    :cond_5
    iget v1, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float v1, v8, v1

    mul-float/2addr v1, v6

    sub-float v1, v8, v1

    .line 2150
    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    if-eqz v0, :cond_6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    :goto_1
    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v4, v4, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float/2addr v8, v4

    mul-float/2addr v0, v8

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2151
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v2, v0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$7400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_8
    int-to-float v0, v3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2153
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 2154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 2156
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    goto/16 :goto_7

    .line 2130
    :cond_a
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2132
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarFullHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v2, v0, v3, v9}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2133
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v3, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_f

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    if-eq p2, v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v0

    if-eq p2, v0, :cond_f

    .line 2134
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentLite:Z

    if-eqz v3, :cond_c

    .line 2135
    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    move v1, v5

    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    mul-int/2addr v1, v0

    int-to-float v0, v1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, v1, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float/2addr v8, v1

    mul-float/2addr v0, v8

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 2137
    :cond_c
    iget v3, v0, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float v3, v8, v3

    mul-float/2addr v3, v6

    sub-float v3, v8, v3

    .line 2138
    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    if-eqz v0, :cond_d

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_5

    :cond_d
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    :goto_5
    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v4, v4, Lorg/telegram/ui/DialogsActivity;->slideFragmentProgress:F

    sub-float/2addr v8, v4

    mul-float/2addr v0, v8

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2139
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v2, v0

    :cond_e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    neg-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v4

    add-float/2addr v0, v4

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarFullHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4, v1}, Lorg/telegram/ui/DialogsActivity;->access$7100(Lorg/telegram/ui/DialogsActivity;Z)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$7200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v3, v3, v2, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2142
    :cond_f
    :goto_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 2143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_7
    return p2
.end method

.method protected drawList(Landroid/graphics/Canvas;Z)V
    .locals 7

    .line 3004
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$8200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3005
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_7

    .line 3006
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->drawForBlur(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    .line 3009
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 3010
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    move v1, p2

    .line 3011
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 3012
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3013
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    iget v4, v4, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    const/16 v5, 0x64

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 3014
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3015
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v0

    iget-object v6, v6, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3016
    instance-of v4, v2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v4, :cond_3

    .line 3017
    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    .line 3018
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/DialogCell;->isFolderCell()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_1
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-nez v4, :cond_4

    :cond_2
    const/4 v4, 0x1

    .line 3019
    iput-boolean v4, v2, Lorg/telegram/ui/Cells/DialogCell;->drawingForBlur:Z

    .line 3020
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3021
    iput-boolean p2, v2, Lorg/telegram/ui/Cells/DialogCell;->drawingForBlur:Z

    goto :goto_2

    .line 3024
    :cond_3
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3026
    :cond_4
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method public getActionBarFullHeight()I
    .locals 7

    .line 2076
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 2078
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2079
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v5

    sub-float v5, v4, v5

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2082
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 2083
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_1
    move v2, v3

    .line 2085
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v5

    sub-float v5, v4, v5

    mul-float/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v5

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 2087
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2088
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget v3, v1, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 2090
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x51

    .line 2091
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 2092
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    sub-float v2, v4, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    sub-float/2addr v4, v2

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 2094
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6600(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getActionBarTop()I
    .locals 4

    .line 2100
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;)F

    move-result v0

    .line 2101
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 2103
    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget v2, v1, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 2106
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    sub-float v1, v3, v1

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 2108
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    sub-float/2addr v3, v2

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 3036
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 3037
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$15900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3038
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$15900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 3044
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 3045
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$15900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3046
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$15900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2738
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2739
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$13902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2742
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->checkTabsAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->isAnimatingIndicator()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/DialogsActivity$ContentView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 2587
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 2590
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2591
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 2592
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x14

    .line 2593
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-gt v3, v2, :cond_1

    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v5

    .line 2598
    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBottomClip(I)V

    .line 2599
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$11900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->access$12502(Lorg/telegram/ui/DialogsActivity;I)I

    const/4 v6, -0x1

    move v7, v6

    :goto_2
    if-ge v7, v1, :cond_29

    if-ne v7, v6, :cond_2

    .line 2602
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v8

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    :goto_3
    if-eqz v8, :cond_28

    .line 2603
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3

    goto/16 :goto_13

    .line 2606
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 2608
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 2609
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 2614
    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v12, v6, :cond_4

    const/16 v12, 0x33

    :cond_4
    and-int/lit8 v13, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    and-int/lit8 v13, v13, 0x7

    const/4 v14, 0x1

    if-eq v13, v14, :cond_6

    const/4 v15, 0x5

    if-eq v13, v15, :cond_5

    .line 2631
    iget v13, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_5
    sub-int v13, p4, v10

    .line 2627
    iget v15, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    :cond_6
    sub-int v13, p4, p2

    sub-int/2addr v13, v10

    .line 2624
    div-int/2addr v13, v4

    iget v15, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v15

    iget v15, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_4
    sub-int/2addr v13, v15

    :goto_5
    const/16 v15, 0x10

    if-eq v12, v15, :cond_9

    const/16 v15, 0x30

    if-eq v12, v15, :cond_8

    const/16 v15, 0x50

    if-eq v12, v15, :cond_7

    .line 2645
    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_7

    :cond_7
    sub-int v12, p5, v2

    sub-int v12, v12, p3

    sub-int/2addr v12, v11

    .line 2642
    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_6

    .line 2636
    :cond_8
    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v12

    add-int/2addr v9, v12

    goto :goto_7

    :cond_9
    sub-int v12, p5, v2

    sub-int v12, v12, p3

    sub-int/2addr v12, v11

    .line 2639
    div-int/2addr v12, v4

    iget v15, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v15

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_6
    sub-int v9, v12, v9

    .line 2650
    :goto_7
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ScrollView;

    move-result-object v12

    const/16 v15, 0x2c

    if-ne v8, v12, :cond_a

    .line 2651
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$12600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    :goto_8
    add-int/2addr v9, v12

    goto/16 :goto_12

    .line 2652
    :cond_a
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$4700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ForwardingPreviewView;

    move-result-object v12

    if-ne v8, v12, :cond_b

    .line 2653
    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_12

    .line 2654
    :cond_b
    instance-of v12, v8, Lorg/telegram/ui/Components/UndoView;

    if-eqz v12, :cond_e

    .line 2655
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v12

    if-eqz v12, :cond_27

    .line 2656
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v12

    if-eqz v12, :cond_c

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2657
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    iget-object v14, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v14}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v14

    sub-float/2addr v12, v14

    float-to-int v12, v12

    sub-int/2addr v9, v12

    .line 2659
    :cond_c
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2660
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12, v5}, Lorg/telegram/ui/DialogsActivity;->access$7100(Lorg/telegram/ui/DialogsActivity;Z)I

    move-result v12

    sub-int/2addr v9, v12

    .line 2662
    :cond_d
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$12700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v12

    :goto_9
    sub-int/2addr v9, v12

    goto/16 :goto_12

    .line 2664
    :cond_e
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v12

    if-ne v8, v12, :cond_10

    .line 2665
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v12

    if-eqz v12, :cond_f

    sub-int v9, p5, p3

    .line 2666
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12, v5}, Lorg/telegram/ui/DialogsActivity;->access$7100(Lorg/telegram/ui/DialogsActivity;Z)I

    move-result v12

    sub-int/2addr v9, v12

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$12700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v12

    sub-int/2addr v9, v12

    .line 2667
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v12

    if-eqz v12, :cond_27

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v12

    if-eqz v12, :cond_27

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v12

    if-nez v12, :cond_27

    .line 2668
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v14, 0x3f800000    # 1.0f

    iget-object v15, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v15}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v15

    sub-float/2addr v14, v15

    iget-object v15, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v15}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    sub-float/2addr v12, v14

    float-to-int v12, v12

    goto :goto_9

    .line 2671
    :cond_f
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$12800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    goto/16 :goto_8

    .line 2673
    :cond_10
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/recent_chats/RecentChatsBar;

    move-result-object v12

    if-ne v8, v12, :cond_11

    .line 2674
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$12900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    goto/16 :goto_8

    .line 2676
    :cond_11
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v12

    if-eqz v12, :cond_13

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v12

    invoke-virtual {v12, v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2677
    sget-boolean v9, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v9, :cond_12

    .line 2678
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTop()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v9, v12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    goto/16 :goto_8

    .line 2680
    :cond_12
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v9

    goto/16 :goto_12

    .line 2682
    :cond_13
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v12

    if-eq v8, v12, :cond_24

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v12

    if-eq v8, v12, :cond_24

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$8000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object v12

    if-eq v8, v12, :cond_24

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v12, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-ne v8, v4, :cond_14

    goto/16 :goto_10

    .line 2694
    :cond_14
    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v4

    const/4 v12, 0x3

    if-ne v8, v4, :cond_18

    .line 2696
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2697
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$13100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$10400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$11900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v9

    :goto_a
    add-int/2addr v9, v4

    goto/16 :goto_12

    .line 2699
    :cond_15
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$11300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$12100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    if-eq v4, v12, :cond_16

    move v4, v5

    goto :goto_b

    :cond_16
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$13200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    :goto_b
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$11900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v9

    if-nez v9, :cond_17

    move v9, v5

    goto :goto_a

    :cond_17
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_a

    .line 2700
    :cond_18
    instance-of v4, v8, Lorg/telegram/ui/DatabaseMigrationHint;

    if-eqz v4, :cond_19

    .line 2701
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$13300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    goto/16 :goto_12

    .line 2702
    :cond_19
    instance-of v4, v8, Lorg/telegram/ui/DialogsActivity$ViewPage;

    if-eqz v4, :cond_20

    .line 2703
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$11300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$12100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    if-ne v4, v12, :cond_1e

    .line 2704
    :cond_1a
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v9, v4, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v9, :cond_1c

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v4

    if-eqz v4, :cond_1b

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_c

    .line 2710
    :cond_1b
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$13400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    goto :goto_d

    .line 2706
    :cond_1c
    :goto_c
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 2707
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/lit8 v9, v4, 0x0

    goto :goto_d

    :cond_1d
    move v9, v5

    .line 2713
    :cond_1e
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$11900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    add-int/2addr v9, v4

    .line 2714
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$6900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 2715
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$6900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogsHintCell;->height()I

    move-result v4

    add-int/2addr v9, v4

    .line 2717
    :cond_1f
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4, v14}, Lorg/telegram/ui/DialogsActivity;->access$7100(Lorg/telegram/ui/DialogsActivity;Z)I

    move-result v4

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$7200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v12}, Lorg/telegram/ui/DialogsActivity;->access$10400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v12

    add-int/2addr v4, v12

    goto :goto_f

    .line 2718
    :cond_20
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$6900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v4

    if-eq v8, v4, :cond_23

    instance-of v4, v8, Lorg/telegram/ui/Components/FragmentContextView;

    if-nez v4, :cond_23

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v4

    if-ne v8, v4, :cond_21

    goto :goto_e

    .line 2720
    :cond_21
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v4

    if-ne v4, v8, :cond_22

    goto/16 :goto_13

    .line 2722
    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$4400(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    if-ne v8, v4, :cond_27

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$13600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v4

    if-eqz v4, :cond_27

    add-int/2addr v9, v3

    goto/16 :goto_12

    .line 2719
    :cond_23
    :goto_e
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$13500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    :goto_f
    add-int/2addr v9, v4

    goto/16 :goto_12

    .line 2684
    :cond_24
    :goto_10
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v4

    if-ne v8, v4, :cond_25

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_25

    sub-int v4, p5, p3

    .line 2685
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v4, v9

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$12700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v9

    sub-int/2addr v4, v9

    goto :goto_11

    .line 2687
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$13000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    .line 2688
    :goto_11
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v12, v9, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v12, :cond_26

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v9

    if-ne v8, v9, :cond_26

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v9

    if-nez v9, :cond_26

    const/16 v9, 0x51

    .line 2689
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v4, v9

    :cond_26
    move v9, v4

    .line 2691
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-ne v8, v4, :cond_27

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 2692
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v4, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v4

    const/16 v12, 0x36

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int v14, v9, v14

    add-int/2addr v14, v11

    add-int v15, v13, v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int v12, v9, v12

    add-int/2addr v12, v11

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v5, v5, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v12, v5

    invoke-virtual {v4, v13, v14, v15, v12}, Landroid/view/View;->layout(IIII)V

    :cond_27
    :goto_12
    add-int/2addr v10, v13

    add-int/2addr v11, v9

    .line 2725
    invoke-virtual {v8, v13, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    :cond_28
    :goto_13
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2728
    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/SearchViewPager;->setKeyboardHeight(I)V

    .line 2729
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V

    .line 2730
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9700(Lorg/telegram/ui/DialogsActivity;)V

    .line 2731
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$13700(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v6, p0

    .line 2427
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 2428
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v8, 0x0

    if-le v0, v7, :cond_0

    const/4 v1, 0x1

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v8

    .line 2431
    :goto_0
    invoke-virtual {v6, v7, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 2432
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int v10, v0, v1

    .line 2434
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2435
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2436
    iget-object v1, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2437
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2440
    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2442
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v11

    .line 2443
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v12

    .line 2445
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    const/16 v13, 0x14

    const/4 v14, 0x0

    const/4 v15, 0x2

    if-eqz v0, :cond_8

    .line 2446
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2447
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2448
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2449
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-gt v11, v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v0, :cond_3

    .line 2450
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v0

    sub-int/2addr v10, v0

    .line 2452
    :cond_3
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->inputFieldHeight:I

    goto :goto_2

    .line 2454
    :cond_4
    iput v8, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->inputFieldHeight:I

    .line 2457
    :goto_2
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2458
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11200(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationY(F)V

    move v0, v8

    .line 2459
    :goto_3
    iget-object v1, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 2460
    iget-object v1, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 2461
    iget-object v1, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2464
    :cond_6
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2465
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    .line 2466
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2467
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->updatePosition()V

    .line 2470
    :cond_7
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, v1, Lorg/telegram/ui/DialogsActivity;->searchViewPagerTranslationY:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_8
    move v5, v8

    :goto_4
    if-ge v5, v12, :cond_29

    .line 2475
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 2476
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_28

    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    if-eq v1, v0, :cond_28

    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-ne v1, v0, :cond_9

    goto/16 :goto_13

    .line 2480
    :cond_9
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_c

    .line 2482
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_b

    if-le v10, v7, :cond_a

    goto :goto_5

    :cond_a
    const/16 v0, 0x38

    .line 2485
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_6

    :cond_b
    :goto_5
    const/16 v0, 0x90

    .line 2483
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 2487
    :goto_6
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 2488
    :cond_c
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ForwardingPreviewView;

    move-result-object v0

    if-ne v1, v0, :cond_e

    .line 2489
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2490
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v4

    .line 2491
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-le v11, v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_d

    add-int/2addr v3, v11

    .line 2494
    :cond_d
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2495
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 2497
    :cond_e
    instance-of v0, v1, Lorg/telegram/ui/DatabaseMigrationHint;

    const/16 v3, 0xa

    if-eqz v0, :cond_f

    .line 2498
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2499
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    add-int/2addr v4, v11

    .line 2500
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v13, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->inputFieldHeight:I

    sub-int/2addr v4, v13

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity;->access$11800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v4, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2501
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_13

    .line 2502
    :cond_f
    instance-of v0, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;

    const v4, 0x3d4ccccd    # 0.05f

    const/4 v13, 0x3

    const/16 v16, 0x2c

    if-eqz v0, :cond_1e

    .line 2503
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2504
    iget v2, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->inputFieldHeight:I

    sub-int v2, v10, v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v18

    add-int v2, v2, v18

    iget-object v15, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v15}, Lorg/telegram/ui/DialogsActivity;->access$11900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v15

    sub-int/2addr v2, v15

    .line 2505
    iget-object v15, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v15, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v3, :cond_12

    invoke-static {v15}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_10

    goto :goto_8

    .line 2528
    :cond_10
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$11300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$12100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    if-ne v3, v13, :cond_18

    .line 2529
    :cond_11
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$12200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    :goto_7
    sub-int/2addr v2, v3

    goto/16 :goto_9

    .line 2506
    :cond_12
    :goto_8
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_13

    .line 2507
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2509
    :cond_13
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2510
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_14

    .line 2511
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 2513
    :cond_14
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v3, :cond_15

    const/16 v3, 0x51

    .line 2514
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 2516
    :cond_15
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_16

    .line 2517
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 2519
    :cond_16
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v3

    if-eqz v3, :cond_17

    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_17

    .line 2520
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$7000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 2524
    :cond_17
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v13, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v13, :cond_18

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2525
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$12000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    goto/16 :goto_7

    .line 2531
    :cond_18
    :goto_9
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 2532
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogsHintCell;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/DialogsHintCell;->height()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2534
    :cond_19
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v8}, Lorg/telegram/ui/DialogsActivity;->access$7100(Lorg/telegram/ui/DialogsActivity;Z)I

    move-result v3

    iget-object v13, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity;->access$7200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v13}, Lorg/telegram/ui/DialogsActivity;->access$10400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v13

    add-int/2addr v3, v13

    sub-int/2addr v2, v3

    .line 2535
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$12300(Lorg/telegram/ui/DialogsActivity;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2536
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$9200(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz v3, :cond_1b

    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v13, v3, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v13, :cond_1a

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    if-eqz v3, :cond_1b

    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1b

    :cond_1a
    int-to-float v2, v2

    .line 2537
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$9500(Lorg/telegram/ui/DialogsActivity;)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_a

    .line 2539
    :cond_1b
    invoke-virtual {v1, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 2541
    :goto_a
    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v13, v3, Lorg/telegram/ui/DialogsActivity;->isSlideBackTransition:Z

    if-nez v13, :cond_1d

    iget-boolean v3, v3, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    if-eqz v3, :cond_1c

    goto :goto_b

    :cond_1c
    move v3, v8

    goto :goto_c

    :cond_1d
    :goto_b
    int-to-float v3, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_c
    add-int/2addr v2, v3

    .line 2543
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    invoke-virtual {v1, v4, v13, v15, v3}, Landroid/view/View;->setPadding(IIII)V

    const/16 v3, 0xa

    .line 2544
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 2545
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v2, 0x2

    div-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    move/from16 v15, p1

    move/from16 v17, v5

    const/4 v13, 0x2

    goto/16 :goto_14

    .line 2546
    :cond_1e
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    if-ne v1, v0, :cond_21

    .line 2547
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v2, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v2, v2, Lorg/telegram/ui/DialogsActivity;->searchViewPagerTranslationY:F

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 2548
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2549
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    add-int/2addr v0, v11

    const/16 v3, 0xa

    .line 2550
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v4, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->inputFieldHeight:I

    sub-int/2addr v0, v4

    const/4 v4, 0x2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v0, v15

    iget-object v4, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$11300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$12100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    if-eq v4, v13, :cond_1f

    move v4, v8

    goto :goto_d

    :cond_1f
    iget-object v4, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$12400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    :goto_d
    sub-int/2addr v0, v4

    iget-object v4, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$11900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$10400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v3

    if-nez v3, :cond_20

    move v3, v8

    goto :goto_e

    :cond_20
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_e
    sub-int/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2551
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 2552
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v13, 0x2

    div-int/2addr v0, v13

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_f

    :cond_21
    const/4 v13, 0x2

    .line 2553
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2554
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v0, :cond_23

    .line 2555
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_22

    const/high16 v0, 0x40000000    # 2.0f

    .line 2556
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v3, 0x140

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget v4, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->inputFieldHeight:I

    sub-int v4, v10, v4

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v4, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v15

    add-int/2addr v4, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_f

    :cond_22
    const/high16 v0, 0x40000000    # 2.0f

    .line 2558
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->inputFieldHeight:I

    sub-int v3, v10, v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_f

    :cond_23
    const/high16 v0, 0x40000000    # 2.0f

    .line 2561
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    :goto_f
    move/from16 v15, p1

    :goto_10
    move/from16 v17, v5

    goto :goto_14

    .line 2563
    :cond_24
    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-ne v1, v0, :cond_27

    .line 2564
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2565
    iget-object v2, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v3, v2, Lorg/telegram/ui/DialogsActivity;->isSlideBackTransition:Z

    if-nez v3, :cond_26

    iget-boolean v3, v2, Lorg/telegram/ui/DialogsActivity;->isDrawerTransition:Z

    if-eqz v3, :cond_25

    goto :goto_11

    :cond_25
    move v3, v8

    goto :goto_12

    :cond_26
    :goto_11
    int-to-float v3, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_12
    add-int/2addr v0, v3

    .line 2567
    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/RightSlidingDialogContainer;->setTransitionPaddingBottom(I)V

    const/16 v2, 0xa

    .line 2568
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move/from16 v15, p1

    invoke-virtual {v1, v15, v0}, Landroid/view/View;->measure(II)V

    goto :goto_10

    :cond_27
    move/from16 v15, p1

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v17, v5

    move/from16 v5, v16

    .line 2570
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_14

    :cond_28
    :goto_13
    move/from16 v17, v5

    move v13, v15

    move/from16 v15, p1

    :goto_14
    add-int/lit8 v5, v17, 0x1

    move v15, v13

    const/16 v13, 0x14

    goto/16 :goto_4

    .line 2574
    :cond_29
    iget-boolean v0, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->wasPortrait:Z

    if-eq v9, v0, :cond_2a

    .line 2575
    new-instance v0, Lorg/telegram/ui/DialogsActivity$ContentView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6}, Lorg/telegram/ui/DialogsActivity$ContentView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$ContentView;)V

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 2581
    iput-boolean v9, v6, Lorg/telegram/ui/DialogsActivity$ContentView;->wasPortrait:Z

    :cond_2a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 2756
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2757
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/topics/TopicsBar;->isEditing()Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2758
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2759
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14000(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14000(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_12

    .line 2764
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2765
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2766
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->isEditing()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2767
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    .line 2768
    invoke-virtual {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2769
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isPreviewOpenAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_2b

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2772
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->getActionBarFullHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2b

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2775
    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isMainNoFolderDialogList()Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2776
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$12100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2777
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2778
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$14800(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v0

    if-ne v0, v3, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2779
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsType()I

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsType()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_2b

    :cond_3
    if-eqz p1, :cond_5

    .line 2782
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 2783
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 2785
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_9

    .line 2787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$ContentView;->checkTabsAnimationInProgress()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2788
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v5}, Lorg/telegram/ui/DialogsActivity;->access$5002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2789
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingPointerId:I

    .line 2790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    .line 2791
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$14900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v6

    invoke-interface {v6}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawerBySwipe(Z)V

    .line 2792
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2793
    iget v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 2794
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->access$5102(Lorg/telegram/ui/DialogsActivity;F)F

    goto/16 :goto_0

    .line 2796
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    .line 2797
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v5

    aput-object v8, v7, v1

    .line 2798
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aput-object v6, v7, v5

    .line 2799
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v1}, Lorg/telegram/ui/DialogsActivity;->access$5302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2800
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->access$5102(Lorg/telegram/ui/DialogsActivity;F)F

    .line 2801
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v7

    invoke-virtual {v6, v7, v0}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 2802
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 2803
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/DialogsActivity;->switchToCurrentSelectedMode(Z)V

    .line 2804
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->resume()V

    .line 2805
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->pause()V

    goto/16 :goto_0

    .line 2808
    :cond_7
    iget v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    .line 2809
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    .line 2810
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v5

    aput-object v8, v7, v1

    .line 2811
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aput-object v6, v7, v5

    .line 2812
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v5}, Lorg/telegram/ui/DialogsActivity;->access$5302(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2813
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->access$5102(Lorg/telegram/ui/DialogsActivity;F)F

    .line 2814
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v7

    invoke-virtual {v6, v7, v0}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 2815
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)F

    move-result v8

    neg-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 2816
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/DialogsActivity;->switchToCurrentSelectedMode(Z)V

    .line 2817
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->resume()V

    .line 2818
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsAdapter;->pause()V

    goto :goto_0

    .line 2820
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->access$5102(Lorg/telegram/ui/DialogsActivity;F)F

    .line 2823
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 2824
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2825
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v1}, Lorg/telegram/ui/DialogsActivity;->access$5702(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_1

    :cond_9
    if-eqz p1, :cond_a

    .line 2826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_a

    .line 2827
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v4}, Lorg/telegram/ui/DialogsActivity;->access$5102(Lorg/telegram/ui/DialogsActivity;F)F

    :cond_a
    :goto_1
    if-eqz p1, :cond_b

    .line 2829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_b

    .line 2830
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingPointerId:I

    .line 2831
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/DialogsActivity;->access$4902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    .line 2833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingY:I

    .line 2834
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_11

    :cond_b
    if-eqz p1, :cond_15

    .line 2835
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v3, :cond_15

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_15

    .line 2836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingY:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2838
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-gtz v0, :cond_d

    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-nez v3, :cond_10

    if-gez v0, :cond_10

    :cond_d
    if-gez v0, :cond_e

    move v3, v5

    goto :goto_2

    :cond_e
    move v3, v1

    .line 2839
    :goto_2
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/DialogsActivity$ContentView;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2840
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/DialogsActivity;->access$4902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2841
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v1}, Lorg/telegram/ui/DialogsActivity;->access$5002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2842
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2843
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v3

    aget-object v3, v3, v5

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    goto :goto_3

    :cond_f
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    neg-int v6, v6

    :goto_3
    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2844
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v6

    invoke-virtual {v3, v6, v4}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    .line 2847
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    const v4, 0x3e99999a    # 0.3f

    if-eqz v3, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2848
    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v3

    .line 2849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingX:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    float-to-int v4, v4

    .line 2850
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_2a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_2a

    if-gez v0, :cond_11

    move v1, v5

    .line 2851
    :cond_11
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/DialogsActivity$ContentView;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto/16 :goto_11

    .line 2853
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 2854
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    int-to-float v2, v0

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2855
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2856
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v5

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_4

    .line 2858
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v5

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2860
    :goto_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 2861
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Z

    move-result v0

    if-eqz v0, :cond_14

    cmpl-float v0, p1, v4

    if-lez v0, :cond_14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2862
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DialogsActivity$ContentView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2863
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterTabsView;->shakeLock(I)V

    .line 2864
    new-instance p1, Lorg/telegram/ui/DialogsActivity$ContentView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$ContentView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$ContentView;)V

    const-wide/16 v2, 0xc8

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v1

    .line 2869
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/FilterTabsView;->selectTabWithId(IF)V

    goto/16 :goto_11

    :cond_15
    if-eqz p1, :cond_16

    .line 2872
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_2a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v2, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2a

    .line 2873
    :cond_16
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$15100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz p1, :cond_18

    .line 2876
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v2, :cond_18

    .line 2877
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 2878
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 2879
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 2880
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x453b8000    # 3000.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_19

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_19

    cmpg-float v7, v2, v4

    if-gez v7, :cond_17

    move v7, v5

    goto :goto_5

    :cond_17
    move v7, v1

    .line 2881
    :goto_5
    invoke-direct {p0, p1, v7}, Lorg/telegram/ui/DialogsActivity$ContentView;->prepareForMoving(Landroid/view/MotionEvent;Z)Z

    goto :goto_6

    :cond_18
    move v2, v4

    move v6, v2

    .line 2888
    :cond_19
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 2889
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    .line 2890
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v7, v8}, Lorg/telegram/ui/DialogsActivity;->access$5902(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2891
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2892
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v5}, Lorg/telegram/ui/DialogsActivity;->access$5802(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto/16 :goto_c

    .line 2894
    :cond_1a
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$5100(Lorg/telegram/ui/DialogsActivity;)F

    move-result v7

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_21

    .line 2895
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x44bb8000    # 1500.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1d

    .line 2896
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v7

    if-eqz v7, :cond_1b

    cmpl-float v7, v2, v4

    if-lez v7, :cond_1c

    goto :goto_7

    :cond_1b
    cmpg-float v7, v2, v4

    if-gez v7, :cond_1c

    :goto_7
    move v7, v5

    goto :goto_8

    :cond_1c
    move v7, v1

    :goto_8
    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->access$5802(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto/16 :goto_c

    .line 2898
    :cond_1d
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2899
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    shr-int/2addr v8, v5

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1e

    move v7, v5

    goto :goto_9

    :cond_1e
    move v7, v1

    :goto_9
    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->access$5802(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_c

    .line 2901
    :cond_1f
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    shr-int/2addr v8, v5

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_20

    move v7, v5

    goto :goto_a

    :cond_20
    move v7, v1

    :goto_a
    invoke-static {v6, v7}, Lorg/telegram/ui/DialogsActivity;->access$5802(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_c

    .line 2905
    :cond_21
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_23

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x455ac000    # 3500.0f

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_22

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v8, v6

    if-gez v6, :cond_23

    :cond_22
    move v6, v5

    goto :goto_b

    :cond_23
    move v6, v1

    :goto_b
    invoke-static {v7, v6}, Lorg/telegram/ui/DialogsActivity;->access$5802(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2909
    :goto_c
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 2910
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2911
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 2912
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2913
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v5, [F

    aput v4, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v1

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2914
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v5, [F

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v5

    .line 2912
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_d

    .line 2917
    :cond_24
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2918
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v5, [F

    aput v4, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v1

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2919
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v5, [F

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v5

    .line 2917
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_d

    .line 2923
    :cond_25
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v6, p1

    .line 2924
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5300(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 2925
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2926
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v5, [F

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v10

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v1

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2927
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v5, [F

    aput v4, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v5

    .line 2925
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_d

    .line 2930
    :cond_26
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v6

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2931
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v1

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v5, [F

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v10

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v1

    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2932
    invoke-static {v7}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v7

    aget-object v7, v7, v5

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v5, [F

    aput v4, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v5

    .line 2930
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2936
    :goto_d
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v3

    invoke-static {}, Lorg/telegram/ui/DialogsActivity;->access$15200()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2938
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    .line 2939
    div-int/lit8 v6, v3, 0x2

    mul-float v7, p1, v0

    int-to-float v3, v3

    div-float/2addr v7, v3

    .line 2940
    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v6, v6

    .line 2941
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    mul-float/2addr v3, v6

    add-float/2addr v6, v3

    .line 2942
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v3, v2, v4

    if-lez v3, :cond_27

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v6, v2

    .line 2945
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_e

    .line 2947
    :cond_27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    add-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :goto_e
    const/16 v0, 0x96

    const/16 v2, 0x258

    .line 2950
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2952
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2953
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/DialogsActivity$ContentView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DialogsActivity$ContentView$1;-><init>(Lorg/telegram/ui/DialogsActivity$ContentView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2977
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5900(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 2978
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v5}, Lorg/telegram/ui/DialogsActivity;->access$5702(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2979
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$5002(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_10

    .line 2981
    :cond_28
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/FilterTabsView;->getFirstTabId()I

    move-result v2

    if-ne v0, v2, :cond_29

    move v0, v5

    goto :goto_f

    :cond_29
    move v0, v1

    :goto_f
    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$15402(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2982
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$15500(Lorg/telegram/ui/DialogsActivity;)V

    .line 2983
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$4902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 2984
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$15800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 2985
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2987
    :goto_10
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_2a

    .line 2988
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 2989
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 2992
    :cond_2a
    :goto_11
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    return p1

    :cond_2b
    :goto_12
    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 2747
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2748
    invoke-virtual {p0, v0}, Lorg/telegram/ui/DialogsActivity$ContentView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2750
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 2044
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$5502(Lorg/telegram/ui/DialogsActivity;I)I

    .line 2045
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$ContentView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$5600(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method
