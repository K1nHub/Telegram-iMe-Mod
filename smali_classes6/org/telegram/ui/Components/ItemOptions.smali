.class public Lorg/telegram/ui/Components/ItemOptions;
.super Ljava/lang/Object;
.source "ItemOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ItemOptions$DimView;
    }
.end annotation


# instance fields
.field private actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private container:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private dimAlpha:I

.field private dimView:Landroid/view/View;

.field private dismissListener:Ljava/lang/Runnable;

.field private forceTop:Z

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

.field private ignoreX:Z

.field private lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private layout:Landroid/view/ViewGroup;

.field private maxHeight:I

.field private minWidthDp:I

.field private offsetX:F

.field private offsetY:F

.field private final point:[F

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrimView:Landroid/view/View;

.field private scrimViewBackground:Landroid/graphics/drawable/Drawable;

.field private shiftDp:I

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

.method public static synthetic $r8$lambda$w611JiUY_WBOVL6LJT6wAhv-aPU(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$putPremiumLock$2(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4xnv67zj2sGRL7BJI9lPmIFP3E(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$addSpaceGap$3(Landroid/view/KeyEvent;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 119
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 123
    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    const/4 v0, -0x4

    .line 286
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    .line 152
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    .line 157
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 158
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    .line 159
    iput-object p3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    .line 160
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

    .line 162
    invoke-direct {p0}, Lorg/telegram/ui/Components/ItemOptions;->init()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 119
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 123
    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    const/4 v0, -0x4

    .line 286
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    .line 138
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 143
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 144
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    .line 146
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

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

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Components/ItemOptions;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewGroup;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->maxHeight:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ItemOptions;)[F
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->dismissDim(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ItemOptions;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ItemOptions;)I
    .locals 0

    .line 49
    iget p0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/Rect;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method private dismissDim(Landroid/view/ViewGroup;)V
    .locals 4

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 613
    iput-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    .line 614
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 615
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

    .line 647
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 649
    instance-of v2, p0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_1

    .line 650
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 651
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 653
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_0

    .line 656
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 657
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    .line 661
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 662
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    .line 663
    aput v1, p2, p0

    const/4 p0, 0x1

    .line 664
    aput v0, p2, p0

    return-void
.end method

.method private init()V
    .locals 3

    .line 166
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/ItemOptions$1;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 175
    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    return-void
.end method

.method private synthetic lambda$add$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 241
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p2, :cond_0

    .line 242
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 245
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addSpaceGap$3(Landroid/view/KeyEvent;)V
    .locals 2

    .line 339
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

    .line 340
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/KeyEvent;)V
    .locals 2

    .line 176
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

    .line 177
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$putPremiumLock$2(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 300
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->shiftDp:I

    int-to-float v0, v0

    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 301
    sget-object p2, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p2}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 302
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$show$4(Landroid/view/View;)Z
    .locals 0

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 109
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-object v0
.end method

.method public static makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 101
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/CharSequence;IILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 85
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;IILjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p7, :cond_0

    .line 221
    iget-object p7, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_0

    .line 222
    iget-object p7, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    invoke-virtual {p7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    goto :goto_0

    :cond_0
    move p7, v0

    .line 225
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v2, :cond_5

    if-nez p6, :cond_1

    goto :goto_3

    .line 229
    :cond_1
    new-instance p6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p6, v2, v1, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v2, 0x12

    .line 230
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

    invoke-virtual {p6, v3, v1, v2, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    if-eqz p1, :cond_3

    .line 232
    invoke-virtual {p6, p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_2

    .line 234
    :cond_3
    invoke-virtual {p6, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p3, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p6, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 238
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p4, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const p2, 0x3df5c28f    # 0.12f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-virtual {p6, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 240
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {p6, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    const/4 p2, -0x2

    if-lez p1, :cond_4

    .line 249
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p6, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget p3, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {p3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p6, p2, p7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;I)V

    goto :goto_3

    .line 252
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p6, p2, p7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;I)V

    :cond_5
    :goto_3
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

    .line 80
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ILjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;ILjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .line 215
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

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

    .line 70
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

    .line 207
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

    .line 75
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 9

    if-eqz p3, :cond_0

    .line 211
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    :goto_0
    move v4, v0

    if-eqz p3, :cond_1

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_1

    :cond_1
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    :goto_1
    move v5, p3

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0, p1, v0, p2}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addFuturePlacement()Lorg/telegram/ui/Components/ItemOptions;
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    .line 92
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

    .line 325
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 326
    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 327
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

    .line 65
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 8

    .line 199
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v5, p4

    move v6, p1

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;IILjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

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

    .line 60
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

    .line 192
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public addSpaceGap()Lorg/telegram/ui/Components/ItemOptions;
    .locals 8

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-ne v0, v1, :cond_0

    .line 333
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    .line 334
    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 338
    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, -0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 5

    .line 357
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    int-to-float p2, p2

    const/4 v1, 0x1

    .line 358
    invoke-virtual {v0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 359
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p2, 0xd

    .line 360
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

    .line 361
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    sget p1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const/16 p1, 0xc8

    .line 363
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 p2, -0x1

    const/4 v1, -0x2

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0
.end method

.method public addView(Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 351
    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0
.end method

.method public cutTextInFancyHalf()Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 276
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_1

    .line 277
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public forceTop(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 398
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ItemOptions;->forceTop:Z

    return-object p0
.end method

.method public getItemsCount()I
    .locals 4

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 435
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 438
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 439
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

    .line 440
    :goto_1
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_2

    .line 441
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 442
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public ignoreX()Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ItemOptions;->ignoreX:Z

    return-object p0
.end method

.method public isShown()Z
    .locals 1

    .line 629
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

.method public makeMultiline(Z)Lorg/telegram/ui/Components/ItemOptions;
    .locals 2

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 264
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v1, :cond_1

    .line 265
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setMultiline(Z)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public putCheck()Lorg/telegram/ui/Components/ItemOptions;
    .locals 4

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 313
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v1, :cond_1

    return-object p0

    .line 316
    :cond_1
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 317
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_text_check:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 318
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 319
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 320
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public putPremiumLock(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    if-eqz p1, :cond_2

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 292
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v1, :cond_1

    return-object p0

    .line 295
    :cond_1
    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 296
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_lock3:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 297
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getRightIcon()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 298
    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setBackgroundColor(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 3

    const/4 v0, 0x0

    .line 591
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 592
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->lastLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 593
    :goto_1
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v2, :cond_1

    .line 594
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public setBlurBackground(Lorg/telegram/ui/Components/BlurringShader$BlurManager;FF)Lorg/telegram/ui/Components/ItemOptions;
    .locals 9

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    instance-of v2, v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eqz v2, :cond_0

    .line 415
    new-instance v2, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-direct {v2, p1, v1, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    .line 417
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getX()F

    move-result p2

    add-float/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    add-float/2addr p2, p3

    iget-object p3, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getY()F

    move-result p3

    add-float/2addr p2, p3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v2, p1, p2, v0, p3}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->makeDrawable(FFLandroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 415
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 420
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 421
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 422
    instance-of v5, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v5, :cond_1

    .line 423
    new-instance v5, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;

    invoke-direct {v5, p1, v2, v4}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;-><init>(Lorg/telegram/ui/Components/BlurringShader$BlurManager;Landroid/view/View;I)V

    iget v6, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    add-float/2addr v6, p2

    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    .line 425
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    add-float/2addr v7, p3

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v0, v8}, Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;->makeDrawable(FFLandroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 423
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 392
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    return-object p0
.end method

.method public setGravity(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 374
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    return-object p0
.end method

.method public setMaxHeight(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 404
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->maxHeight:I

    return-object p0
.end method

.method public setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 387
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    return-object p0
.end method

.method public setOnDismiss(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 633
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->dismissListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 369
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setViewAdditionalOffsets(IIII)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->viewAdditionalOffsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-object p0
.end method

.method public show()Lorg/telegram/ui/Components/ItemOptions;
    .locals 11

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    return-object p0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 459
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_8

    .line 460
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

    .line 461
    :goto_1
    instance-of v4, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v4, :cond_7

    .line 462
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 463
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    if-gtz v4, :cond_3

    goto :goto_4

    .line 466
    :cond_3
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 467
    instance-of v5, v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v5, :cond_5

    .line 468
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-ne v4, v2, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v0

    :goto_2
    invoke-virtual {v5, v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    .line 470
    :cond_5
    instance-of v5, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v5, :cond_7

    .line 471
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

    .line 476
    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    if-lez v1, :cond_b

    move v1, v0

    .line 477
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_b

    .line 478
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

    .line 479
    :goto_6
    instance-of v4, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v4, :cond_a

    .line 480
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move v4, v0

    .line 481
    :goto_7
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 482
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

    .line 488
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 490
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v2, :cond_19

    if-nez v1, :cond_d

    goto/16 :goto_b

    .line 495
    :cond_d
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 496
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v4, :cond_e

    .line 497
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    invoke-static {v4, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    .line 498
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v2, v2, v3

    .line 500
    :cond_e
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ItemOptions;->ignoreX:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_f

    .line 501
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aput v5, v4, v0

    .line 504
    :cond_f
    iget v4, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    if-lez v4, :cond_10

    .line 505
    new-instance v4, Lorg/telegram/ui/Components/ItemOptions$DimView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v4, p0, v6}, Lorg/telegram/ui/Components/ItemOptions$DimView;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    .line 506
    new-instance v6, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 510
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v4, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 511
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 513
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->dimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 515
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->measure(II)V

    .line 517
    new-instance v10, Lorg/telegram/ui/Components/ItemOptions$2;

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    const/4 v7, -0x2

    const/4 v8, -0x2

    move-object v4, v10

    move-object v5, p0

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/ItemOptions$2;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;IILandroid/view/ViewGroup;)V

    iput-object v10, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 529
    new-instance v4, Lorg/telegram/ui/Components/ItemOptions$3;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/Components/ItemOptions$3;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/ViewGroup;)V

    invoke-virtual {v10, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 541
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 542
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 543
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 545
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 546
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 548
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 549
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 550
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 553
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v3, :cond_13

    .line 554
    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_12

    .line 555
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

    goto :goto_8

    .line 557
    :cond_12
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v5, v5, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_8

    .line 560
    :cond_13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v4

    .line 563
    :goto_8
    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v5, :cond_16

    .line 564
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ItemOptions;->forceTop:Z

    if-nez v4, :cond_14

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

    if-lez v4, :cond_15

    .line 566
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 567
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 569
    :cond_15
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_9

    .line 571
    :cond_16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v2, v5

    div-int/2addr v2, v4

    .line 575
    :goto_9
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 576
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_a

    .line 577
    :cond_17
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    if-eqz v4, :cond_18

    .line 578
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 581
    :cond_18
    :goto_a
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    add-float/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetX:F

    float-to-int v3, v3

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    add-float/2addr v2, v5

    iput v2, p0, Lorg/telegram/ui/Components/ItemOptions;->offsetY:F

    float-to-int v2, v2

    invoke-virtual {v4, v1, v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_19
    :goto_b
    return-object p0
.end method

.method public translate(FF)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 379
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    .line 380
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    return-object p0
.end method

.method public updateColors()V
    .locals 0

    return-void
.end method
