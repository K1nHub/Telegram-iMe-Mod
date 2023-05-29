.class public Lorg/telegram/ui/Components/ItemOptions;
.super Ljava/lang/Object;
.source "ItemOptions.java"


# instance fields
.field private actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private container:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private dimAlpha:I

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

.field private layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private minWidthDp:I

.field private final point:[F

.field private scrimView:Landroid/view/View;

.field private scrimViewBackground:Landroid/graphics/drawable/Drawable;

.field private translateX:F

.field private translateY:F


# direct methods
.method public static synthetic $r8$lambda$BTDHLkcVxUXHJu0EOe0mqr01G-A(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$show$3(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Broe2EFH2km4GyG_O7hkZkazpv0(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->lambda$init$0(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$agFB7DFeAGi7xEENSNR05aqzepM(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->lambda$add$1(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zL4X4OAwXuLM_MSfEZKgMxvaQLU(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ItemOptions;->lambda$show$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 94
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 97
    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    .line 100
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    .line 117
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 121
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    .line 122
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    .line 125
    invoke-direct {p0}, Lorg/telegram/ui/Components/ItemOptions;->init()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 94
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 97
    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    .line 100
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    .line 105
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 109
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 110
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    .line 113
    invoke-direct {p0}, Lorg/telegram/ui/Components/ItemOptions;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ItemOptions;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ItemOptions;)[F
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ItemOptions;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p1
.end method

.method public static getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    if-eq p0, p1, :cond_3

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    .line 418
    instance-of v2, p0, Landroid/widget/ScrollView;

    if-eqz v2, :cond_1

    .line 419
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 420
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 422
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 426
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    .line 430
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 431
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    .line 432
    aput v1, p2, p0

    const/4 p0, 0x1

    .line 433
    aput v0, p2, p0

    return-void
.end method

.method private init()V
    .locals 2

    .line 129
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 130
    new-instance v1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    return-void
.end method

.method private synthetic lambda$add$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 174
    iget-object p2, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 178
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/KeyEvent;)V
    .locals 2

    .line 131
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

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$show$2(Landroid/view/View;)Z
    .locals 0

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$show$3(Landroid/view/KeyEvent;)V
    .locals 2

    .line 359
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method public static makeOptions(Landroid/view/ViewGroup;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 86
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v0
.end method

.method public static makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 82
    new-instance v0, Lorg/telegram/ui/Components/ItemOptions;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ItemOptions;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 61
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

    .line 152
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

    .line 66
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p6, :cond_0

    .line 158
    iget-object p6, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_0

    .line 159
    iget-object p6, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    goto :goto_0

    :cond_0
    move p6, v0

    .line 162
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v2, :cond_4

    if-nez p5, :cond_1

    goto :goto_1

    .line 166
    :cond_1
    new-instance p5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    invoke-direct {p5, v2, v1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    const/16 v2, 0x12

    .line 167
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x1a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p5, v2, v1, v3, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 168
    invoke-virtual {p5, p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    if-eqz p3, :cond_2

    .line 170
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    invoke-virtual {p5, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 171
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const p2, 0x3df5c28f    # 0.12f

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-virtual {p5, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 173
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p4}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ItemOptions;Ljava/lang/Runnable;)V

    invoke-virtual {p5, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    if-lez p1, :cond_3

    .line 182
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p5, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 184
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 p2, 0x30

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p5, p6, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V

    :cond_4
    :goto_1
    return-object p0
.end method

.method public addFuturePlacement()Lorg/telegram/ui/Components/ItemOptions;
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->futurePlacements:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 51
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;Z)Lorg/telegram/ui/Components/ItemOptions;

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

    .line 141
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

    .line 56
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

    .line 148
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    return-object p1
.end method

.method public dismiss()V
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getItemsCount()I
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    return v0
.end method

.method public isShown()Z
    .locals 1

    .line 403
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

.method public setGravity(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 195
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    return-object p0
.end method

.method public setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 208
    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    return-object p0
.end method

.method public setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimViewBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public show()Lorg/telegram/ui/Components/ItemOptions;
    .locals 15

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    return-object p0

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-object p0

    .line 230
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 231
    instance-of v3, v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_3

    .line 232
    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-ne v0, v2, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    .line 234
    :cond_3
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_5

    .line 235
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-ne v2, v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    .line 238
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    if-lez v0, :cond_6

    move v0, v1

    .line 239
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 240
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions;->minWidthDp:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 244
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->container:Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getOverlayContainerView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 246
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    if-eqz v2, :cond_11

    if-nez v0, :cond_8

    goto/16 :goto_8

    .line 251
    :cond_8
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 252
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 253
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    invoke-static {v3, v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->getPointOnScreen(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    .line 254
    iget-object v2, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v2, v2, v4

    .line 259
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    instance-of v3, v3, Lorg/telegram/ui/Cells/UserCell;

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v3, :cond_a

    .line 260
    new-instance v5, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 261
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 262
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 263
    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object v12, v3

    move-object v14, v5

    goto :goto_3

    :cond_a
    move-object v12, v5

    move-object v14, v12

    .line 270
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_b

    .line 271
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v3, v6

    move v13, v3

    goto :goto_4

    :cond_b
    move v13, v5

    .line 276
    :goto_4
    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions;->dimAlpha:I

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    .line 278
    new-instance v3, Lorg/telegram/ui/Components/ItemOptions$1;

    iget-object v10, p0, Lorg/telegram/ui/Components/ItemOptions;->context:Landroid/content/Context;

    move-object v8, v3

    move-object v9, p0

    invoke-direct/range {v8 .. v14}, Lorg/telegram/ui/Components/ItemOptions$1;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/content/Context;ILandroid/graphics/Bitmap;FLandroid/graphics/Paint;)V

    .line 324
    new-instance v6, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    .line 328
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v7, -0x1

    .line 329
    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 331
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x96

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 332
    iget-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->measure(II)V

    .line 334
    new-instance v7, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v8, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v7, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 335
    new-instance v8, Lorg/telegram/ui/Components/ItemOptions$2;

    invoke-direct {v8, p0, v3, v0, v6}, Lorg/telegram/ui/Components/ItemOptions$2;-><init>(Lorg/telegram/ui/Components/ItemOptions;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 351
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 352
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 353
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 355
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 356
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 358
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v6, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ItemOptions$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 364
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 365
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 366
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v5, v3

    .line 369
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v3, :cond_e

    .line 370
    iget v3, p0, Lorg/telegram/ui/Components/ItemOptions;->gravity:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_d

    .line 371
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v6, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    add-float/2addr v3, v6

    goto :goto_5

    .line 373
    :cond_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->point:[F

    aget v5, v5, v1

    :goto_5
    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_6

    .line 376
    :cond_e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v4

    .line 379
    :goto_6
    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    if-eqz v5, :cond_10

    .line 380
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

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

    if-lez v4, :cond_f

    .line 382
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 383
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 385
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->scrimView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_7

    .line 387
    :cond_10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Components/ItemOptions;->layout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v2, v5

    div-int/2addr v2, v4

    .line 389
    :goto_7
    iget-object v4, p0, Lorg/telegram/ui/Components/ItemOptions;->actionBarPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v2, v2

    iget v5, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v4, v0, v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_11
    :goto_8
    return-object p0
.end method

.method public translate(FF)Lorg/telegram/ui/Components/ItemOptions;
    .locals 1

    .line 200
    iget v0, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ItemOptions;->translateX:F

    .line 201
    iget p1, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ItemOptions;->translateY:F

    return-object p0
.end method

.method public updateColors()V
    .locals 0

    return-void
.end method