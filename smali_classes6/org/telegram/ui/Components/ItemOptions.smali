.class public Lorg/telegram/ui/Components/ItemOptions;
.super Ljava/lang/Object;
.source "ItemOptions.java"


# instance fields
.field private actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private container:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private dimAlpha:I

.field private dimView:Landroid/view/View;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private futurePlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private gravity:I

.field private lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private layout:Landroid/view/ViewGroup;

.field private minWidthDp:I

.field private final point:[F

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrimView:Landroid/view/View;

.field private scrimViewBackground:Landroid/graphics/drawable/Drawable;

.field private translateX:F

.field private translateY:F

.field private viewAdditionalOffsets:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$Broe2EFH2km4GyG_O7hkZkazpv0(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$init$0(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NPblFE4OQfvfmBgtvqfdhH8-7oI(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ItemOptions;->lambda$show$4(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$agFB7DFeAGi7xEENSNR05aqzepM(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$add$1(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u-pzO5WVSEEXnNZPwIKL8XzD9tU(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$putPremiumLock$2(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 120
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 123
    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    .line 154
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    .line 159
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 160
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    .line 161
    iput-object p3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    .line 162
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    float-to-double p1, p1

    const-wide v0, 0x3fe68f5c28f5c28fL    # 0.705

    cmpl-double p1, p1, v0

    if-lez p1, :cond_1

    const/16 p1, 0x66

    goto :goto_0

    :cond_1
    const/16 p1, 0x33

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    .line 164
    invoke-direct {p0}, Lorg/telegram/ui/Components/ItemOptions;->init()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 120
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 123
    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    .line 136
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 141
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 142
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    .line 144
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p2

    float-to-double v0, p2

    const-wide v2, 0x3fe68f5c28f5c28fL    # 0.705

    cmpl-double p2, v0, v2

    if-lez p2, :cond_1

    const/16 p2, 0x66

    goto :goto_0

    :cond_1
    const/16 p2, 0x33

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    .line 146
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 148
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 150
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ItemOptions;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ItemOptions;)[F
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->dismissDim(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method private dismissDim(Landroid/view/ViewGroup;)V
    .locals 4

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 532
    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    .line 533
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ItemOptions$4;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions$4;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    if-eq p0, p1, :cond_3

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 563
    instance-of v2, p0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_1

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 565
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 567
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_0

    .line 570
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 571
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    .line 575
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 576
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    .line 577
    aput v1, p2, p0

    const/4 p0, 0x1

    .line 578
    aput v0, p2, p0

    return-void
.end method

.method private init()V
    .locals 3

    .line 168
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 169
    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    return-void
.end method

.method private synthetic lambda$add$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 230
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p2, :cond_0

    .line 231
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 234
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/KeyEvent;)V
    .locals 2

    .line 170
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$putPremiumLock$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 262
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$show$4(Landroid/view/View;)Z
    .locals 0

    .line 463
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 110
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-object v0
.end method

.method public static makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 102
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/CharSequence;IILjava/lang/Runnable;Lcom/google/android/exoplayer2/util/Consumer;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "II",
            "Ljava/lang/Runnable;",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;",
            ">;)",
            "Lorg/telegram/ui/Components/ItemOptions;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 86
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;Lcom/google/android/exoplayer2/util/Consumer;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;IILjava/lang/Runnable;Lcom/google/android/exoplayer2/util/Consumer;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "II",
            "Ljava/lang/Runnable;",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;",
            ">;ZZ)",
            "Lorg/telegram/ui/Components/ItemOptions;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p8, :cond_0

    .line 214
    iget-object p8, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    if-eqz p8, :cond_0

    invoke-virtual {p8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p8

    if-nez p8, :cond_0

    .line 215
    iget-object p8, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    invoke-virtual {p8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/Integer;

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result p8

    goto :goto_0

    :cond_0
    move p8, v0

    .line 218
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v2, :cond_5

    if-nez p7, :cond_1

    goto :goto_2

    .line 222
    :cond_1
    new-instance p7, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p7, v2, v1, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v2, 0x12

    .line 223
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    :goto_1
    add-int/2addr v4, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p7, v3, v1, v2, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 224
    invoke-virtual {p7, p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 226
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p7, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 227
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const p2, 0x3df5c28f    # 0.12f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-virtual {p7, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 229
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {p7, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    if-lez p1, :cond_3

    .line 238
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p7, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    :cond_3
    if-eqz p6, :cond_4

    .line 241
    invoke-interface {p6, p7}, Lcom/google/android/exoplayer2/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 244
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 p2, 0x30

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p7, p8, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V

    :cond_5
    :goto_2
    return-object p0
.end method

.method public add(ILjava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 81
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ILjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;ILjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    move v7, p5

    move v8, p6

    .line 208
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;Lcom/google/android/exoplayer2/util/Consumer;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 71
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 200
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 76
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 10

    if-eqz p3, :cond_0

    .line 204
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    :goto_0
    move v4, v0

    if-eqz p3, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    :goto_1
    move v5, v0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p4

    move v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;Lcom/google/android/exoplayer2/util/Consumer;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    return-object v0
.end method

.method public addFuturePlacement()Lorg/telegram/ui/Components/ItemOptions;
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGap()Lorg/telegram/ui/Components/ItemOptions;
    .locals 4

    .line 269
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 270
    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 271
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0
.end method

.method public addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 56
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;Lcom/google/android/exoplayer2/util/Consumer;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Runnable;",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;",
            ">;)",
            "Lorg/telegram/ui/Components/ItemOptions;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 66
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;Lcom/google/android/exoplayer2/util/Consumer;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;Lcom/google/android/exoplayer2/util/Consumer;Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Runnable;",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;",
            ">;Z)",
            "Lorg/telegram/ui/Components/ItemOptions;"
        }
    .end annotation

    .line 196
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p1

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;Lcom/google/android/exoplayer2/util/Consumer;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p1

    move v5, p5

    .line 181
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 61
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 7

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p1

    move v6, p6

    .line 188
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 5

    .line 297
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    int-to-float p2, p2

    const/4 v1, 0x1

    .line 298
    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 299
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0xd

    .line 300
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, p2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 301
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    sget p1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const/16 p1, 0xc8

    .line 303
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 304
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 p2, -0x1

    const/4 v1, -0x2

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getItemsCount()I
    .locals 4

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 338
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 341
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 342
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 343
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_2

    .line 344
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 345
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public isShown()Z
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putPremiumLock(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    if-eqz p1, :cond_2

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 254
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v1, :cond_1

    return-object p0

    .line 257
    :cond_1
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 258
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_lock3:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 259
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 260
    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 332
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    return-object p0
.end method

.method public setGravity(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 314
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    return-object p0
.end method

.method public setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 327
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    return-object p0
.end method

.method public setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 309
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setViewAdditionalOffsets(IIII)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-object p0
.end method

.method public show()Lorg/telegram/ui/Components/ItemOptions;
    .locals 15

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    return-object p0

    .line 357
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 361
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_8

    .line 362
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 363
    :goto_1
    instance-of v4, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v4, :cond_7

    .line 364
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 365
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-gtz v4, :cond_3

    goto :goto_4

    .line 368
    :cond_3
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 369
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v5, :cond_5

    .line 370
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-ne v4, v2, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v0

    :goto_2
    invoke-virtual {v5, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    .line 372
    :cond_5
    instance-of v5, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v5, :cond_7

    .line 373
    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-ne v2, v4, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    if-lez v1, :cond_b

    move v1, v0

    .line 379
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_b

    .line 380
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_6

    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 381
    :goto_6
    instance-of v4, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v4, :cond_a

    .line 382
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move v4, v0

    .line 383
    :goto_7
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 384
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 390
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 392
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v2, :cond_16

    if-nez v1, :cond_d

    goto/16 :goto_c

    .line 397
    :cond_d
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 398
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v4, :cond_e

    .line 399
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    .line 400
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v2, v2, v3

    .line 405
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    instance-of v4, v4, Lorg/telegram/ui/Cells/UserCell;

    const/4 v5, 0x0

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v4, Lorg/telegram/ui/ProfileActivity;

    if-eqz v4, :cond_f

    .line 406
    new-instance v5, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 407
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 408
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 409
    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 410
    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object v12, v4

    move-object v14, v5

    goto :goto_8

    :cond_f
    move-object v12, v5

    move-object v14, v12

    .line 417
    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_10

    .line 418
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v4, v6

    move v13, v4

    goto :goto_9

    :cond_10
    move v13, v5

    .line 423
    :goto_9
    iget v4, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    invoke-static {v0, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    .line 426
    new-instance v4, Lorg/telegram/ui/Components/ItemOptions$1;

    iget-object v10, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    move-object v8, v4

    move-object v9, p0

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Components/ItemOptions$1;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;ILandroid/graphics/Bitmap;FLandroid/graphics/Paint;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    .line 462
    new-instance v6, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 466
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v4, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 467
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 469
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 470
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->measure(II)V

    .line 472
    new-instance v10, Lorg/telegram/ui/Components/ItemOptions$2;

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    const/4 v7, -0x2

    const/4 v8, -0x2

    move-object v4, v10

    move-object v5, p0

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/ItemOptions$2;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;IILandroid/view/ViewGroup;)V

    iput-object v10, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 479
    new-instance v4, Lorg/telegram/ui/Components/ItemOptions$3;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/Components/ItemOptions$3;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V

    invoke-virtual {v10, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 486
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 487
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 488
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 490
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 491
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 493
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 494
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 495
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 498
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v3, :cond_13

    .line 499
    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_12

    .line 500
    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v5, v5, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v5, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v5, v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v5, v3

    float-to-int v3, v5

    goto :goto_a

    .line 502
    :cond_12
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v5, v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_a

    .line 505
    :cond_13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v4

    .line 508
    :goto_a
    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v5, :cond_15

    .line 509
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    const/16 v5, 0x10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_14

    .line 511
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 512
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 514
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_b

    .line 516
    :cond_15
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v2, v5

    div-int/2addr v2, v4

    .line 518
    :goto_b
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v4, v1, v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_16
    :goto_c
    return-object p0
.end method

.method public translate(FF)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 319
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    .line 320
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    return-object p0
.end method

.method public updateColors()V
    .locals 0

    return-void
.end method
