.class public Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBarPopupWindowLayout"
.end annotation


# instance fields
.field private animationEnabled:Z

.field private backAlpha:I

.field private backScaleX:F

.field private backScaleY:F

.field private backgroundColor:I

.field protected backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private bgPaddings:Landroid/graphics/Rect;

.field private fitItems:Z

.field private gapEndY:I

.field private gapStartY:I

.field private itemAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private lastStartedChild:I

.field protected linearLayout:Landroid/widget/LinearLayout;

.field private mOnDispatchKeyEventListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;

.field private onSizeChangedListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;

.field path:Landroid/graphics/Path;

.field private positions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reactionsEnterProgress:F

.field rect:Landroid/graphics/Rect;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollView:Landroid/widget/ScrollView;

.field public shownFromBottom:Z

.field private startAnimationPending:Z

.field public subtractBackgroundHeight:I

.field public swipeBackGravityRight:Z

.field private swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

.field private topView:Landroid/view/View;

.field public updateAnimation:Z

.field protected window:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 4

    .line 174
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 131
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    .line 132
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    const/4 v1, 0x0

    .line 133
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startAnimationPending:Z

    const/16 v2, 0xff

    .line 134
    iput v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    .line 135
    iput v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    .line 137
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->access$000()Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->animationEnabled:Z

    .line 139
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->positions:Ljava/util/HashMap;

    const v2, -0xf4240

    .line 140
    iput v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    .line 141
    iput v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapEndY:I

    .line 142
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    .line 144
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    const/4 v0, -0x1

    .line 150
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundColor:I

    .line 175
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0x8

    .line 178
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p0, v0, v2, v3, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 180
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 182
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 186
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    and-int/lit8 p2, p4, 0x2

    const/4 v0, 0x1

    if-lez p2, :cond_2

    .line 189
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    :cond_2
    and-int/lit8 p2, p4, 0x1

    const/4 p4, -0x2

    if-lez p2, :cond_3

    .line 193
    new-instance p2, Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-direct {p2, p1, p3}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    .line 194
    invoke-static {p4, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const/16 p2, 0x50

    const/16 p3, 0x30

    .line 198
    :try_start_0
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    .line 199
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 205
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 206
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz v1, :cond_5

    .line 207
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v3, :cond_4

    move v3, p2

    goto :goto_0

    :cond_4
    move v3, p3

    :goto_0
    invoke-static {p4, p4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 209
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-static {p4, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 212
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 215
    :goto_1
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    .line 268
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_6

    .line 270
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 271
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz p1, :cond_8

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    move p2, p3

    :goto_2
    invoke-static {p4, p4, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 274
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {p4, p4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 166
    sget v0, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->fitItems:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)I
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)I
    .locals 0

    .line 101
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    return p1
.end method

.method static synthetic access$302(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)I
    .locals 0

    .line 101
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapEndY:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->itemAnimators:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startAnimationPending:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Ljava/util/HashMap;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->positions:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)I
    .locals 0

    .line 101
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)F
    .locals 0

    .line 101
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    return p0
.end method

.method private startChildAnimation(Landroid/view/View;)V
    .locals 9

    .line 388
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->animationEnabled:Z

    if-eqz v0, :cond_3

    .line 389
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/Animator;

    .line 390
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v7, 0x3f000000    # 0.5f

    :goto_0
    const/4 v8, 0x1

    aput v7, v4, v8

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v1, [F

    .line 392
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :cond_1
    const/4 v4, -0x6

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v5

    aput v6, v1, v8

    invoke-static {p1, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v8

    .line 390
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0xb4

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 394
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 404
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->access$500()Landroid/view/animation/DecelerateInterpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 405
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 406
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->itemAnimators:Ljava/util/ArrayList;

    if-nez p1, :cond_2

    .line 407
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->itemAnimators:Ljava/util/ArrayList;

    .line 409
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->itemAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 114
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    .line 109
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;I)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 1

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addViewToSwipeBack(Landroid/view/View;)I
    .locals 3

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    :goto_0
    const/4 v2, -0x2

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 460
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x10

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    sub-float v2, v9, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 462
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->topView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    sub-float v3, v9, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 464
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->topView:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iget v2, v2, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->transitionProgress:F

    sub-float v2, v9, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 465
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->topView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    neg-float v1, v1

    .line 466
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iget v2, v2, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->transitionProgress:F

    mul-float/2addr v1, v2

    .line 467
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->topView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 468
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 471
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1d

    .line 472
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v1, v2

    .line 473
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapEndY:I

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int v12, v1, v2

    const/4 v13, 0x0

    move v1, v13

    .line 475
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v14, 0x1

    if-ge v1, v2, :cond_2

    .line 476
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    move v15, v14

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v15, v13

    :goto_1
    move v7, v13

    :goto_2
    const/4 v1, 0x2

    if-ge v7, v1, :cond_1d

    if-ne v7, v14, :cond_3

    .line 482
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    if-ge v11, v1, :cond_3

    goto/16 :goto_f

    :cond_3
    const/16 v6, 0xff

    const v5, -0xf4240

    if-eqz v15, :cond_4

    .line 487
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    if-eq v1, v6, :cond_4

    const/4 v2, 0x0

    .line 488
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    const/16 v17, 0x1f

    move/from16 v18, v1

    move-object/from16 v1, p1

    move v14, v5

    move/from16 v5, v18

    const/16 v16, 0xff

    move/from16 v18, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move v1, v13

    goto :goto_3

    :cond_4
    move v14, v5

    move/from16 v16, v6

    move/from16 v18, v7

    .line 491
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v1, v14, :cond_5

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 494
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v8, v13, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v1, 0x1

    :goto_3
    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move v2, v13

    const/4 v1, 0x1

    .line 496
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    goto :goto_5

    :cond_6
    move/from16 v6, v16

    :goto_5
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 497
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v1, :cond_7

    .line 498
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 499
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    int-to-float v4, v1

    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    sub-float v5, v9, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v13, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_b

    .line 501
    :cond_7
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    if-le v11, v1, :cond_10

    .line 502
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    if-nez v18, :cond_d

    .line 504
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz v3, :cond_a

    iget-boolean v3, v3, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->stickToRight:Z

    if-eqz v3, :cond_a

    .line 505
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    neg-int v5, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v6, v14, :cond_8

    const/4 v6, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_7

    :cond_8
    move v7, v13

    :goto_7
    add-int/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v7, v14, :cond_9

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v11

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_9
    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v1, v7

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6

    .line 507
    :cond_a
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    neg-int v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v5, v14, :cond_b

    const/4 v5, 0x1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_8

    :cond_b
    const/4 v5, 0x1

    move v6, v13

    :goto_8
    add-int/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v7, v14, :cond_c

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v11

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_c
    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v1, v7

    invoke-virtual {v3, v13, v4, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_b

    :cond_d
    const/4 v5, 0x1

    if-ge v1, v12, :cond_e

    .line 511
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-eq v1, v14, :cond_1c

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_e

    .line 516
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz v3, :cond_f

    iget-boolean v3, v3, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->stickToRight:Z

    if-eqz v3, :cond_f

    .line 517
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v1, v7

    invoke-virtual {v3, v4, v12, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_b

    .line 519
    :cond_f
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v1, v6

    invoke-virtual {v3, v13, v12, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_b

    :cond_10
    const/4 v5, 0x1

    .line 523
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz v1, :cond_12

    iget-boolean v1, v1, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->stickToRight:Z

    if-eqz v1, :cond_12

    .line 524
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-gez v4, :cond_11

    move v4, v13

    goto :goto_9

    :cond_11
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget v14, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    mul-float/2addr v7, v14

    float-to-int v7, v7

    iget v14, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v7, v14

    invoke-virtual {v1, v3, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_b

    .line 526
    :cond_12
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->gapStartY:I

    if-gez v3, :cond_13

    move v3, v13

    goto :goto_a

    :cond_13
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->subtractBackgroundHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {v1, v13, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 530
    :goto_b
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_15

    .line 531
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_14

    .line 532
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->rect:Landroid/graphics/Rect;

    .line 534
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->rect:Landroid/graphics/Rect;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v6, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 535
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->rect:Landroid/graphics/Rect;

    iget v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    invoke-static {v1, v3, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 537
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 538
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v15, :cond_1b

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 541
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    const/16 v3, 0x8

    .line 542
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 543
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->path:Landroid/graphics/Path;

    if-nez v4, :cond_16

    .line 544
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->path:Landroid/graphics/Path;

    goto :goto_c

    .line 546
    :cond_16
    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 548
    :goto_c
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v6, v3, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 549
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move v1, v13

    .line 550
    :goto_d
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1a

    .line 551
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v3, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_19

    .line 552
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 554
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    const/4 v4, 0x0

    move-object v7, v3

    move v6, v4

    :cond_17
    if-eq v7, v0, :cond_18

    .line 557
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v14

    add-float/2addr v4, v14

    .line 558
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v14

    add-float/2addr v6, v14

    .line 559
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    if-nez v7, :cond_17

    .line 564
    :cond_18
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScaleY()F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v8, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 565
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 569
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1b
    if-eqz v2, :cond_1c

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1c
    :goto_e
    add-int/lit8 v7, v18, 0x1

    move v14, v5

    goto/16 :goto_2

    .line 576
    :cond_1d
    :goto_f
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    cmpl-float v2, v1, v9

    if-eqz v2, :cond_1e

    .line 577
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 578
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v1, v2

    .line 579
    iget v2, v9, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v9, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v8, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 580
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_10

    .line 583
    :cond_1e
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_10
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->mOnDispatchKeyEventListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;

    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;->onDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 453
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getBackAlpha()I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 317
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    return v0
.end method

.method public getBackScaleX()F
    .locals 1

    .line 441
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    return v0
.end method

.method public getBackScaleY()F
    .locals 1

    .line 445
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 301
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundColor:I

    return v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getLinearLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public getViewsCount()I
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getVisibleHeight()I
    .locals 2

    .line 655
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 668
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 669
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackLayout:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    if-eqz p1, :cond_0

    .line 670
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startAnimationPending:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->invalidateTransforms(Z)V

    :cond_0
    return-void
.end method

.method public removeInnerViews()V
    .locals 1

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->scrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 601
    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 414
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->animationEnabled:Z

    return-void
.end method

.method public setBackAlpha(I)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 312
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backAlpha:I

    return-void
.end method

.method public setBackScaleX(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 322
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 323
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleX:F

    .line 324
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 325
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onSizeChangedListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;

    if-eqz p1, :cond_0

    .line 326
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;->onSizeChanged()V

    :cond_0
    return-void
.end method

.method public setBackScaleY(F)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 333
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_8

    .line 334
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backScaleY:F

    .line 335
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->animationEnabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->updateAnimation:Z

    if-eqz v0, :cond_7

    .line 336
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 337
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    if-eqz v1, :cond_3

    .line 338
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    :goto_0
    if-ltz v1, :cond_7

    .line 339
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 340
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 343
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->positions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 344
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x30

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    mul-int/2addr v3, v4

    const/16 v4, 0x20

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    sub-int v3, v0, v3

    int-to-float v3, v3

    int-to-float v4, v0

    mul-float/2addr v4, p1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v3, v1, -0x1

    .line 347
    iput v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    .line 348
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startChildAnimation(Landroid/view/View;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 351
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v2, v1, :cond_7

    .line 354
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v4

    .line 355
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 358
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 359
    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    if-ge v2, v5, :cond_5

    goto :goto_3

    .line 362
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->positions:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    const/16 v5, 0x18

    .line 363
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v3, v5

    int-to-float v5, v5

    int-to-float v6, v0

    mul-float/2addr v6, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v2, 0x1

    .line 366
    iput v5, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->lastStartedChild:I

    .line 367
    invoke-direct {p0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->startChildAnimation(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 371
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onSizeChangedListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;

    if-eqz p1, :cond_8

    .line 373
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;->onSizeChanged()V

    :cond_8
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    .line 305
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundColor:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    .line 380
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundColor:I

    .line 381
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->bgPaddings:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->mOnDispatchKeyEventListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;

    return-void
.end method

.method public setFitItems(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->fitItems:Z

    return-void
.end method

.method public setOnSizeChangedListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onSizeChangedListener:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$onSizeChangedListener;

    return-void
.end method

.method public setParentWindow(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->window:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-void
.end method

.method public setReactionsTransitionProgress(F)V
    .locals 0

    .line 679
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->reactionsEnterProgress:F

    .line 680
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setShownFromBottom(Z)V
    .locals 0

    .line 293
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->shownFromBottom:Z

    return-void
.end method

.method public setSwipeBackForegroundColor(I)V
    .locals 1

    .line 663
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->setForegroundColor(I)V

    return-void
.end method

.method public setTopView(Landroid/view/View;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->topView:Landroid/view/View;

    return-void
.end method

.method public setupRadialSelectors(I)V
    .locals 7

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 608
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x6

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    .line 609
    :goto_2
    invoke-static {p1, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateRadialSelectors()V
    .locals 10

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_2

    .line 618
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 619
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v5

    :cond_1
    move-object v3, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v2

    move v5, v4

    :goto_2
    if-ge v4, v0, :cond_9

    .line 630
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 631
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    goto :goto_6

    .line 634
    :cond_3
    sget v7, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 635
    instance-of v9, v6, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v9, :cond_7

    .line 636
    move-object v9, v6

    check-cast v9, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eq v6, v1, :cond_5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v8

    :goto_4
    if-ne v6, v3, :cond_6

    move v6, v8

    goto :goto_5

    :cond_6
    move v6, v2

    :goto_5
    invoke-virtual {v9, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZ)V

    :cond_7
    if-eqz v7, :cond_8

    move v5, v8

    goto :goto_6

    :cond_8
    move v5, v2

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method
