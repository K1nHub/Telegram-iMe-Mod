.class public Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ActionBarPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;,
        Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;,
        Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;,
        Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;
    }
.end annotation


# static fields
.field private static final NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private static final allowAnimation:Z

.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private static layoutInScreenMethod:Ljava/lang/reflect/Method;

.field private static final superListenerField:Ljava/lang/reflect/Field;


# instance fields
.field private animationEnabled:Z

.field private dismissAnimationDuration:I

.field private isClosingAnimated:Z

.field private mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private outEmptyTime:J

.field private pauseNotifications:Z

.field private scaleOut:Z

.field private windowAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public static synthetic $r8$lambda$1CevpuSzcNOEuYdi1-0VdtkJvK4(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->lambda$init$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F2NVd4EcEYq8sJT_e-GK6oCHkiM(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->lambda$startAnimation$2(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y7Ge_B8A6xMy5V21XZB4h9NMbPQ()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->lambda$static$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->allowAnimation:Z

    .line 60
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    .line 73
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "mOnScrollChangedListener"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    sput-object v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->superListenerField:Ljava/lang/reflect/Field;

    .line 81
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda2;

    sput-object v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 649
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 62
    sget-boolean v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->allowAnimation:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->animationEnabled:Z

    const/16 v0, 0x96

    .line 63
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismissAnimationDuration:I

    .line 65
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-wide/16 v0, -0x1

    .line 67
    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->outEmptyTime:J

    .line 87
    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 650
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 654
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 62
    sget-boolean p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->allowAnimation:Z

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->animationEnabled:Z

    const/16 p1, 0x96

    .line 63
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismissAnimationDuration:I

    .line 65
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-wide/16 v0, -0x1

    .line 67
    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->outEmptyTime:J

    .line 87
    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 655
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 674
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 62
    sget-boolean p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->allowAnimation:Z

    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->animationEnabled:Z

    const/16 p1, 0x96

    .line 63
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismissAnimationDuration:I

    .line 65
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-wide/16 p1, -0x1

    .line 67
    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->outEmptyTime:J

    .line 87
    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 675
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->init()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 55
    sget-boolean v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->allowAnimation:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isClosingAnimated:Z

    return p1
.end method

.method static synthetic access$1201(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->unregisterListener()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->pauseNotifications:Z

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$500()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    .line 55
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method private dismissDim()V
    .locals 5

    .line 768
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 769
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    .line 770
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 772
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 777
    :try_start_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_1

    and-int/lit8 v3, v3, -0x3

    .line 778
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, 0x0

    .line 779
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 780
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 696
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 697
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    :cond_0
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->superListenerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 702
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 703
    sget-object v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 705
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$init$1(Landroid/view/View;)V
    .locals 0

    .line 698
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$startAnimation$2(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 831
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    .line 832
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 834
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 835
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v3, :cond_0

    goto :goto_2

    .line 838
    :cond_0
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v1

    int-to-float v3, v3

    goto :goto_1

    :cond_1
    int-to-float v3, v1

    :goto_1
    int-to-float v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p1, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    const/4 v3, -0x6

    .line 839
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static synthetic lambda$static$0()V
    .locals 0

    return-void
.end method

.method private registerListener(Landroid/view/View;)V
    .locals 2

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_2

    .line 725
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 726
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eq p1, v0, :cond_2

    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 730
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_2

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    return-void
.end method

.method public static startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;
    .locals 10

    const/4 v0, 0x1

    .line 798
    invoke-static {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$602(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)Z

    const/4 v1, 0x0

    .line 799
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 800
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 801
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 802
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 803
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v3

    .line 804
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$700(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_2

    .line 807
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v7

    .line 808
    instance-of v8, v7, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v8, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    invoke-virtual {v7, v1}, Landroid/view/View;->setAlpha(F)V

    .line 812
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 815
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$700(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 818
    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v5, :cond_3

    sub-int/2addr v3, v0

    .line 819
    invoke-static {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$802(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)I

    goto :goto_2

    .line 821
    :cond_3
    invoke-static {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$802(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)I

    .line 824
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 825
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->invalidateTransforms()V

    .line 826
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$900(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)F

    move-result v2

    .line 828
    :cond_4
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v7, v5, [F

    .line 829
    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 830
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 843
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->updateAnimation:Z

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    new-array v9, v5, [F

    aput v1, v9, v4

    aput v2, v9, v0

    const-string v1, "backScaleY"

    .line 845
    invoke-static {p0, v1, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v8, v4

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    const-string v2, "backAlpha"

    .line 846
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v8, v0

    aput-object v7, v8, v5

    .line 844
    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    mul-int/lit8 v6, v6, 0x10

    add-int/lit16 v6, v6, 0x96

    int-to-long v0, v6

    .line 849
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 850
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 864
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-object v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private unregisterListener()V
    .locals 2

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 719
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method


# virtual methods
.method public dimBehind()V
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 738
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind(F)V

    return-void
.end method

.method public dimBehind(F)V
    .locals 4

    .line 742
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 743
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    .line 744
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 745
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 746
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 747
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 748
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 969
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    return-void
.end method

.method public dismiss(Z)V
    .locals 9

    const/4 v0, 0x0

    .line 977
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 978
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismissDim()V

    .line 979
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 980
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isClosingAnimated:Z

    if-eqz v3, :cond_0

    return-void

    .line 983
    :cond_0
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 984
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 986
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isClosingAnimated:Z

    .line 987
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->animationEnabled:Z

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    .line 988
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->isClosingAnimated:Z

    .line 989
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move v3, v0

    .line 991
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 992
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v4, :cond_2

    .line 993
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 997
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$400(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$400(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 998
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$400(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 999
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$400(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet;

    .line 1000
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1001
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1003
    :cond_4
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$400(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1006
    :cond_5
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1007
    iget-wide v4, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->outEmptyTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x2

    if-lez v4, :cond_6

    new-array p1, p1, [Landroid/animation/Animator;

    new-array v1, v5, [F

    .line 1008
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1009
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    iget-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->outEmptyTime:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_3

    .line 1010
    :cond_6
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->scaleOut:Z

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    .line 1011
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, p1, [F

    const v8, 0x3f4ccccd    # 0.8f

    aput v8, v7, v0

    .line 1012
    invoke-static {v1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v0

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, p1, [F

    aput v8, v7, v0

    .line 1013
    invoke-static {v1, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, p1

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p1, p1, [F

    aput v6, p1, v0

    .line 1014
    invoke-static {v1, v4, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v2, v5

    .line 1011
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1015
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismissAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_3

    :cond_7
    new-array v4, v5, [Landroid/animation/Animator;

    .line 1017
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, p1, [F

    if-eqz v2, :cond_8

    .line 1018
    iget-boolean v2, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    goto :goto_2

    :cond_8
    const/4 v2, -0x5

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v7, v0

    invoke-static {v1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, p1, [F

    aput v6, v5, v0

    .line 1019
    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, p1

    .line 1017
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1020
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismissAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1023
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1040
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->pauseNotifications:Z

    if-eqz p1, :cond_9

    .line 1041
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1043
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 1046
    :cond_a
    :try_start_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    :catch_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->unregisterListener()V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 679
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->animationEnabled:Z

    return-void
.end method

.method public setDismissAnimationDuration(I)V
    .locals 0

    .line 711
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismissAnimationDuration:I

    return-void
.end method

.method public setLayoutInScreen(Z)V
    .locals 5

    .line 685
    :try_start_0
    sget-object p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->layoutInScreenMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 686
    const-class p1, Landroid/widget/PopupWindow;

    const-string v2, "setLayoutInScreenEnabled"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->layoutInScreenMethod:Ljava/lang/reflect/Method;

    .line 687
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 689
    :cond_0
    sget-object p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->layoutInScreenMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 691
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setPauseNotifications(Z)V
    .locals 0

    .line 973
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->pauseNotifications:Z

    return-void
.end method

.method public setScaleOut(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->scaleOut:Z

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0

    .line 790
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 791
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->registerListener(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 793
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0

    .line 963
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 964
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->unregisterListener()V

    return-void
.end method

.method public startAnimation()V
    .locals 11

    .line 869
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->animationEnabled:Z

    if-eqz v0, :cond_8

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    return-void

    .line 874
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 876
    instance-of v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 877
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 878
    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$602(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)Z

    goto :goto_1

    :cond_1
    move v2, v3

    .line 880
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 881
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v5, :cond_2

    .line 882
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 883
    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$602(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_1
    const/4 v1, 0x0

    .line 887
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 888
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 889
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 890
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 891
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v5

    .line 892
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$700(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    move v6, v3

    move v7, v6

    :goto_2
    if-ge v6, v5, :cond_5

    .line 895
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v8

    .line 896
    invoke-virtual {v8, v1}, Landroid/view/View;->setAlpha(F)V

    .line 897
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    .line 900
    :cond_4
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$700(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 903
    :cond_5
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v6, :cond_6

    sub-int/2addr v5, v4

    .line 904
    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$802(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)I

    goto :goto_4

    .line 906
    :cond_6
    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$802(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)I

    .line 909
    :goto_4
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 910
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->invalidateTransforms()V

    .line 911
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->access$900(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)F

    move-result v2

    .line 913
    :cond_7
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x2

    new-array v8, v6, [Landroid/animation/Animator;

    new-array v9, v6, [F

    aput v1, v9, v3

    aput v2, v9, v4

    const-string v1, "backScaleY"

    .line 915
    invoke-static {v0, v1, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v8, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    const-string v2, "backAlpha"

    .line 916
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v8, v4

    .line 914
    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    mul-int/lit8 v7, v7, 0x10

    add-int/lit16 v7, v7, 0x96

    int-to-long v1, v7

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->windowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_8
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public update(Landroid/view/View;II)V
    .locals 0

    .line 957
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 958
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->registerListener(Landroid/view/View;)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 0

    .line 951
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 952
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->registerListener(Landroid/view/View;)V

    return-void
.end method
