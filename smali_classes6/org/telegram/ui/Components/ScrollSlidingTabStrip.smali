.class public Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;,
        Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    }
.end annotation


# static fields
.field public static EXPANDED_WIDTH:F = 64.0f


# instance fields
.field animateToExpanded:Z

.field currentDragPosition:I

.field currentPlayingImages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/Components/StickerTabView;",
            ">;"
        }
    .end annotation
.end field

.field currentPlayingImagesTmp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/Components/StickerTabView;",
            ">;"
        }
    .end annotation
.end field

.field private currentPosition:I

.field private currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private defaultExpandLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

.field dragDx:F

.field private dragEnabled:Z

.field draggindViewDxOnScreen:F

.field draggindViewXOnScreen:F

.field draggingView:Landroid/view/View;

.field draggingViewOutProgress:F

.field private expandOffset:F

.field expandProgress:F

.field expandStickerAnimator:Landroid/animation/ValueAnimator;

.field expanded:Z

.field private futureTabsPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private indicatorHeight:I

.field private lastScrollX:I

.field longClickRunnable:Ljava/lang/Runnable;

.field longClickRunning:Z

.field pressedX:F

.field pressedY:F

.field private prevTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private rectPaint:Landroid/graphics/Paint;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollByOnNextMeasure:I

.field private scrollOffset:I

.field scrollRight:Z

.field scrollRunnable:Ljava/lang/Runnable;

.field scrollStartTime:J

.field private selectorPaint:Landroid/graphics/Paint;

.field private shouldExpand:Z

.field private showSelected:Z

.field private showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field startDragFromPosition:I

.field startDragFromX:F

.field private stickerTabExpandedWidth:F

.field private stickerTabWidth:F

.field private tabBounds:Landroid/graphics/RectF;

.field private tabCount:I

.field private tabTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private touchSlop:F

.field private type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method public static synthetic $r8$lambda$DXOoKvrXLRhAxd-yncEn-LEBxl0(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addKiklikoTab$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WvczEPJPwF3508xXA2hhUbcEas0(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$checkLongPress$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZgfVQQb-CV94TPwgSE9ZW2JYByk(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addIconTab$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_vyWTyS9M2tZKygTTrfoo71Dv6k(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addStickerTab$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bmH0wyE_7XMBb_YxkYgoRxkn6z0(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addEmojiTab$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fAIlS58HJ6LK2HZP0n8lJVAsZgU(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addStickerIconTab$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lle0sK69aaI86c6cxCnozauzGBw(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addStickerTab$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$natDWuQN7e8CcI1t7yvwg4HXpJ8(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$addKiklikoTrendsTab$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u1PhalGQ1r8qaB-h6wLn0zgJqa8(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;ZFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lambda$expandStickers$8(ZFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 8

    .line 222
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 139
    sget-object v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;->LINE:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    .line 157
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x15e

    invoke-direct {v0, p0, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 160
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabBounds:Landroid/graphics/RectF;

    const/high16 v0, 0x1a000000

    .line 170
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 172
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v0, 0x21

    .line 174
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    const/4 v4, 0x2

    .line 175
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    const/16 v4, 0xc

    .line 176
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    const/16 v4, 0x18

    .line 177
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    const/4 v4, 0x0

    .line 179
    iput v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 182
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    .line 183
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    .line 195
    new-instance v5, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$1;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    .line 525
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    .line 531
    sget v5, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    .line 532
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    const/4 v5, -0x1

    .line 534
    iput v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    .line 824
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    .line 826
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelected:Z

    .line 827
    new-instance v7, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v7, p0, v2, v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v7, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1136
    new-instance v1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$6;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    .line 223
    iput-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 224
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->touchSlop:F

    .line 226
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 227
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 229
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 230
    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$2;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 243
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/high16 p2, 0x41180000    # 9.5f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v1, v4, p2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10

    invoke-direct {p2, v5, v5, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 248
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 249
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-direct {p1, p2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 252
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v4, v5, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultExpandLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)I
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTabSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)F
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)F
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;F)F
    .locals 0

    .line 72
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;I)I
    .locals 0

    .line 72
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    return p1
.end method

.method private canSwap(I)Z
    .locals 2

    .line 1121
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dragEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_2

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 1127
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1128
    instance-of v0, p1, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/ui/Components/StickerTabView;

    iget v0, p1, Lorg/telegram/ui/Components/StickerTabView;->type:I

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private getTabSize()I
    .locals 1

    .line 815
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42040000    # 33.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$addEmojiTab$6(Landroid/view/View;)V
    .locals 2

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addIconTab$3(Landroid/view/View;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addKiklikoTab$1(Landroid/view/View;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addKiklikoTrendsTab$0(Landroid/view/View;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addStickerIconTab$4(Landroid/view/View;)V
    .locals 2

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addStickerTab$5(Landroid/view/View;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$addStickerTab$7(Landroid/view/View;)V
    .locals 2

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;->onPageSelected(I)V

    return-void
.end method

.method private synthetic lambda$checkLongPress$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1094
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingViewOutProgress:F

    .line 1095
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    return-void
.end method

.method private synthetic lambda$expandStickers$8(ZFLandroid/animation/ValueAnimator;)V
    .locals 4

    if-nez p1, :cond_2

    .line 554
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    .line 555
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    .line 556
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    div-float/2addr v1, p1

    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    move v0, v1

    const/4 p2, 0x0

    :cond_0
    mul-float p1, p1, v0

    sub-float v0, p1, p2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    move p1, p2

    .line 566
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    .line 568
    :cond_2
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    const/4 p1, 0x0

    .line 569
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 570
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 572
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 573
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updatePosition()V

    return-void
.end method

.method private scrollToChild(I)V
    .locals 4

    .line 664
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lez p1, :cond_1

    .line 669
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, p1

    .line 671
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    .line 672
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    if-ge v0, p1, :cond_2

    .line 674
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 675
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 676
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr p1, v3

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    if-le v2, p1, :cond_3

    .line 677
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->lastScrollX:I

    .line 678
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private startScroll(Z)V
    .locals 4

    .line 1155
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRight:Z

    .line 1156
    iget-wide v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 1157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    .line 1159
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x10

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private stopScroll()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1163
    iput-wide v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollStartTime:J

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addEmojiTab(ILorg/telegram/messenger/Emoji$EmojiDrawable;Lorg/telegram/tgnet/TLRPC$Document;)Landroid/view/View;
    .locals 6

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 473
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 474
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 476
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 478
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    .line 479
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 480
    new-instance v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 483
    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    .line 485
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    const/4 v3, 0x0

    .line 487
    iput-boolean v3, v1, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    .line 488
    sget v4, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 489
    sget v4, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v1, v4, p2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 490
    sget p2, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v1, p2, p3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 491
    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 493
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;
    .locals 5

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 390
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 392
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 394
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 396
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 397
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 p2, 0x11

    const/16 v4, 0x18

    .line 400
    invoke-static {v4, v4, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 402
    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 405
    :goto_0
    sget p2, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 406
    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 408
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addKiklikoTab(Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;)V
    .locals 7

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kiklikoTab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;->getMeme()Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;->getSlug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 105
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 107
    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x64

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    .line 110
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 111
    new-instance v4, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 113
    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    .line 114
    iget-object v4, v2, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 117
    :goto_0
    sget v4, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 118
    sget v4, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;->getMeme()Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;->getFile()Lcom/smedialink/storage/data/network/model/response/kikliko/GifFileResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifFileResponse;->getWebp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 119
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addKiklikoTrendsTab(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 80
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 82
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    const-string v2, "kiklikoTrendsTab"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 84
    invoke-direct {p0, v2, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 86
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    .line 87
    iget-object v4, v1, Lorg/telegram/ui/Components/StickerTabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 89
    new-instance p1, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 91
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    .line 92
    iget-object p1, v1, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->FeaturedStickersShort:I

    const-string v5, "FeaturedStickersShort"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    const/4 p1, 0x0

    .line 95
    iput-boolean p1, v1, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    .line 96
    sget v4, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 97
    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addStickerIconTab(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/StickerTabView;
    .locals 5

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 414
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 418
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 420
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    .line 421
    iget-object v3, v1, Lorg/telegram/ui/Components/StickerTabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 423
    new-instance p2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 425
    iget p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    .line 426
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    const/4 p2, 0x0

    .line 428
    iput-boolean p2, v1, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    .line 429
    sget v3, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 430
    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 432
    iget-object p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addStickerTab(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Landroid/view/View;
    .locals 6

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_0

    :cond_0
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 501
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 503
    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_1

    .line 505
    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    .line 506
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 507
    new-instance v5, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 510
    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    .line 512
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 514
    :goto_1
    iput-boolean v3, v2, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    .line 515
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 516
    sget p1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 517
    sget p1, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v2, p1, p3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 518
    sget p1, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v2, p1, p2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 519
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 521
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public addStickerTab(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 7

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    .line 440
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/StickerTabView;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 442
    invoke-direct {p0, v0, v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkViewIndex(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 444
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Lorg/telegram/ui/Components/StickerTabView;-><init>(Landroid/content/Context;I)V

    .line 446
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 447
    new-instance v5, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 449
    invoke-virtual {v2}, Lorg/telegram/ui/Components/StickerTabView;->setRoundImage()V

    .line 451
    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const/16 v6, 0xe

    .line 452
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 453
    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 455
    iget-object v6, v2, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 456
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 457
    invoke-virtual {v6, p1, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 458
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 460
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 461
    iget v5, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/StickerTabView;->updateExpandProgress(F)V

    .line 462
    iget-object v5, v2, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :goto_0
    iput-boolean v4, v2, Lorg/telegram/ui/Components/StickerTabView;->isChatSticker:Z

    .line 465
    sget p1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 466
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 468
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public beginUpdate(Z)V
    .locals 3

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabTypes:Ljava/util/HashMap;

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 292
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz p1, :cond_0

    .line 293
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    .line 294
    new-instance p1, Landroid/transition/AutoTransition;

    invoke-direct {p1}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v1, 0xfa

    .line 295
    invoke-virtual {p1, v1, v2}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 296
    invoke-virtual {p1, v0}, Landroid/transition/AutoTransition;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 297
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$3;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/transition/AutoTransition;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 1173
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->cancelLongPress()V

    const/4 v0, 0x0

    .line 1174
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    .line 1175
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkLongPress(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1028
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1030
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedX:F

    .line 1031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedY:F

    .line 1033
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1034
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedX:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->touchSlop:F

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedY:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->touchSlop:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 1035
    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1039
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1040
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v0, v2

    .line 1041
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTabSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    sub-int/2addr v0, v1

    .line 1042
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v0, v2, :cond_4

    if-ge v0, v2, :cond_3

    .line 1044
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v0, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v0, v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1053
    :cond_4
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq v2, v0, :cond_7

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->canSwap(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    .line 1054
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 1055
    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-ne v2, v4, :cond_5

    goto :goto_3

    .line 1058
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/StickerTabView;

    .line 1059
    invoke-virtual {v4}, Lorg/telegram/ui/Components/StickerTabView;->saveXPosition()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1062
    :cond_6
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromX:F

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    sub-int v4, v0, v4

    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTabSize()I

    move-result v5

    mul-int v4, v4, v5

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromX:F

    .line 1063
    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    iget v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1066
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    .line 1069
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->pressedX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewDxOnScreen:F

    .line 1070
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 1071
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    .line 1072
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startScroll(Z)V

    goto :goto_4

    .line 1073
    :cond_8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    .line 1074
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startScroll(Z)V

    goto :goto_4

    .line 1076
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stopScroll()V

    .line 1078
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1079
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    return v1

    .line 1082
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    .line 1083
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stopScroll()V

    .line 1084
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1085
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz p1, :cond_d

    .line 1086
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->startDragFromPosition:I

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentDragPosition:I

    if-eq p1, v0, :cond_c

    .line 1087
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerSetPositionChanged(II)V

    const/4 p1, 0x0

    .line 1088
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_c

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$id;->index_tag:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_c
    new-array p1, v2, [F

    .line 1092
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1093
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1097
    new-instance v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$5;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1109
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1111
    :cond_d
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->longClickRunning:Z

    .line 1112
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->invalidateOverlays()V

    :cond_e
    return v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public commitUpdate()V
    .locals 5

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 320
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->prevTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    .line 325
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 326
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 327
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 329
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 330
    iget-object v4, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->futureTabsPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 836
    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    sub-float/2addr v1, v2

    .line 837
    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    iget v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 838
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 839
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v6, :cond_1

    .line 840
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/StickerTabView;

    .line 841
    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/StickerTabView;->animateIfPositionChanged(Landroid/view/ViewGroup;)V

    .line 842
    iget-boolean v7, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v7, :cond_0

    int-to-float v7, v5

    mul-float v7, v7, v1

    .line 843
    iget v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    sub-float v8, v4, v8

    mul-float v7, v7, v8

    add-float/2addr v7, v2

    iget v8, v6, Lorg/telegram/ui/Components/StickerTabView;->dragOffset:F

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 845
    :cond_0
    iget v7, v6, Lorg/telegram/ui/Components/StickerTabView;->dragOffset:F

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 850
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 851
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v2, :cond_3

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x32

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    sub-float v5, v4, v5

    mul-float v2, v2, v5

    sub-float/2addr v1, v2

    :cond_3
    move v9, v1

    .line 855
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelectedAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelected:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_f

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v2, :cond_f

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    if-ltz v2, :cond_f

    .line 858
    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    float-to-double v6, v2

    .line 859
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 860
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    const/4 v7, 0x0

    if-ltz v8, :cond_6

    .line 862
    iget-object v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-lt v8, v10, :cond_5

    goto :goto_3

    :cond_5
    iget-object v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    goto :goto_4

    :cond_6
    :goto_3
    move-object v10, v7

    :goto_4
    if-ltz v6, :cond_8

    .line 863
    iget-object v11, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-lt v6, v11, :cond_7

    goto :goto_5

    :cond_7
    iget-object v7, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :cond_8
    :goto_5
    const/high16 v6, 0x40000000    # 2.0f

    div-float v11, v9, v6

    const/16 v12, 0x21

    if-eqz v10, :cond_b

    if-eqz v7, :cond_b

    .line 872
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sget v15, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    iget v5, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v14, v15, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v13, v5

    .line 873
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v14

    add-float/2addr v5, v14

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sget v14, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    iget v15, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v12, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v6

    add-float/2addr v5, v12

    int-to-float v8, v8

    sub-float/2addr v2, v8

    .line 871
    invoke-static {v13, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    .line 877
    instance-of v8, v10, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v8, :cond_9

    check-cast v10, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v8

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    .line 878
    :goto_6
    instance-of v10, v7, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v10, :cond_a

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v7

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    .line 876
    :goto_7
    invoke-static {v8, v7, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    move/from16 v16, v5

    move v5, v2

    move/from16 v2, v16

    goto :goto_8

    :cond_b
    if-eqz v10, :cond_c

    .line 883
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v2, v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget v7, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iget v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v5, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 884
    instance-of v5, v10, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v5, :cond_e

    check-cast v10, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v5

    goto :goto_8

    :cond_c
    if-eqz v7, :cond_d

    .line 886
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v2, v5

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget v8, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-static {v5, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 887
    instance-of v5, v7, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v5, :cond_e

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/StickerTabView;->getTextWidth()F

    move-result v5

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :cond_e
    const/4 v5, 0x0

    :goto_8
    const/16 v7, 0x1e

    .line 894
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3fa00000    # 1.25f

    const/high16 v10, 0x3e800000    # 0.25f

    .line 895
    iget-object v12, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnimatedFloat;->getTransitionProgressInterpolated()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float v12, v13, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float v12, v12, v10

    mul-float v12, v12, v6

    sub-float/2addr v8, v12

    mul-float v8, v8, v7

    const v10, 0x3f666666    # 0.9f

    const v12, 0x3dcccccd    # 0.1f

    .line 896
    iget-object v14, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPositionAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/AnimatedFloat;->getTransitionProgressInterpolated()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float v13, v13, v12

    mul-float v13, v13, v6

    add-float/2addr v13, v10

    mul-float v7, v7, v13

    .line 897
    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v12, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v10

    const/16 v12, 0xa

    .line 898
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v5, v12

    invoke-static {v8, v5, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    const/16 v8, 0x1a

    .line 899
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v11, v3

    const v3, 0x3f0ccccd    # 0.55f

    .line 900
    invoke-static {v4, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    mul-float v7, v7, v3

    .line 901
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabBounds:Landroid/graphics/RectF;

    div-float/2addr v5, v6

    sub-float v4, v2, v5

    div-float/2addr v7, v6

    sub-float v6, v11, v7

    add-float/2addr v2, v5

    add-float/2addr v11, v7

    invoke-virtual {v3, v4, v6, v2, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 903
    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    const v3, 0x2effffff

    const-string v4, "chat_emojiPanelIcon"

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getThemedColor(Ljava/lang/String;)I

    move-result v4

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 904
    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 905
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabBounds:Landroid/graphics/RectF;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectorPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_f
    move-object/from16 v5, p1

    .line 908
    :goto_9
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 910
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_10

    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v1, :cond_10

    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    if-lez v1, :cond_10

    .line 911
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    .line 912
    iget v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    int-to-float v1, v1

    sub-float v7, v9, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v8, v1

    iget-object v10, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_10
    return-void
.end method

.method public drawOverlays(Landroid/graphics/Canvas;)V
    .locals 4

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 918
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 919
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewXOnScreen:F

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggindViewDxOnScreen:F

    sub-float/2addr v0, v1

    .line 920
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingViewOutProgress:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float v0, v0, v3

    .line 921
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingViewOutProgress:F

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    .line 923
    :cond_0
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 925
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public expandStickers(FZ)V
    .locals 4

    .line 540
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    if-eq v0, p2, :cond_6

    .line 541
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expanded:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 544
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 547
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 548
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 549
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 551
    iget v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    aput v2, v1, v0

    if-eqz p2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    .line 552
    new-instance v2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;ZF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 575
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$4;

    invoke-direct {v2, p0, p2, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$4;-><init>(Lorg/telegram/ui/Components/ScrollSlidingTabStrip;ZF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 618
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_5

    .line 621
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    .line 622
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 624
    instance-of v2, v1, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v2, :cond_3

    .line 625
    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/StickerTabView;->setExpanded(Z)V

    .line 627
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget v2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 630
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 631
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x56

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    if-eqz p2, :cond_6

    .line 635
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabWidth:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    div-float/2addr p2, v0

    .line 636
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->stickerTabExpandedWidth:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    mul-float v0, v0, p2

    .line 638
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p1

    sub-float p2, v0, p2

    iput p2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    sub-float/2addr v0, p1

    float-to-int p1, v0

    .line 639
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    :cond_6
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 935
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method public getDelegate()Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    return-object v0
.end method

.method public getExpandedOffset()F
    .locals 2

    .line 649
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    return-object v0
.end method

.method protected invalidateOverlays()V
    .locals 0

    return-void
.end method

.method public invalidateTabs()V
    .locals 3

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 977
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method isDragging()Z
    .locals 1

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1018
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 685
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 686
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setImages()V

    .line 687
    iget p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    if-ltz p1, :cond_0

    const/4 p2, 0x0

    .line 688
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    const/4 p1, -0x1

    .line 689
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollByOnNextMeasure:I

    :cond_0
    return-void
.end method

.method public onPageScrolled(II)V
    .locals 4

    .line 944
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 948
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 950
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 953
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 957
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 962
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 963
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 965
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandStickerAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_6

    if-ne p2, p1, :cond_5

    if-le p1, v3, :cond_5

    sub-int/2addr p1, v3

    .line 967
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollToChild(I)V

    goto :goto_2

    .line 969
    :cond_5
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->scrollToChild(I)V

    .line 972
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 820
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 821
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setImages()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1023
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->checkLongPress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public selectTab(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 337
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 982
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPosition:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->delegate:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 1179
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->dragEnabled:Z

    return-void
.end method

.method public setImages()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x21

    .line 694
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    const/high16 v3, 0x42040000    # 33.0f

    sub-float/2addr v2, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandProgress:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    .line 695
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->expandOffset:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float v2, v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 696
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    float-to-int v2, v3

    .line 697
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/2addr v1, v2

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 698
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->animateToExpanded:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v1, v1, 0x2

    if-gez v2, :cond_1

    const/4 v2, 0x0

    .line 704
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-le v1, v3, :cond_2

    .line 705
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 708
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x0

    .line 709
    :goto_1
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 710
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    iget-object v7, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    iget v7, v7, Lorg/telegram/ui/Components/StickerTabView;->index:I

    iget-object v8, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/StickerTabView;

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 712
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    :goto_2
    const/4 v3, 0x0

    if-ge v2, v1, :cond_17

    .line 715
    iget-object v6, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 716
    instance-of v7, v6, Lorg/telegram/ui/Components/StickerTabView;

    if-eqz v7, :cond_16

    .line 717
    move-object v7, v6

    check-cast v7, Lorg/telegram/ui/Components/StickerTabView;

    .line 719
    iget v8, v7, Lorg/telegram/ui/Components/StickerTabView;->type:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_4

    .line 720
    sget v3, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 721
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    .line 722
    invoke-virtual {v6, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    sget-object v6, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 723
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    const-class v6, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    new-instance v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v9}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-direct {v8, v9}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    .line 724
    invoke-virtual {v3, v6, v8}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/RequestBuilder;

    iget-object v6, v7, Lorg/telegram/ui/Components/StickerTabView;->iconView:Landroid/widget/ImageView;

    .line 725
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_a

    :cond_4
    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 730
    sget v6, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    .line 731
    sget v8, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 733
    instance-of v9, v6, Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_5

    .line 734
    check-cast v6, Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_5
    move-object v6, v3

    .line 736
    :goto_3
    instance-of v9, v8, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v9, :cond_7

    .line 737
    iget-object v6, v7, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    invoke-static {v4}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "36_36_firstframe"

    goto :goto_4

    :cond_6
    const-string v9, "36_36_nolimit"

    :goto_4
    invoke-virtual {v6, v8, v9, v3, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 739
    :cond_7
    iget-object v3, v7, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 742
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 743
    sget v9, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v6, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    .line 744
    sget v10, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {v6, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 747
    instance-of v10, v8, Lorg/telegram/tgnet/TLRPC$Document;

    const v11, 0x3e4ccccd    # 0.2f

    const-string v12, "emptyListPlaceholder"

    if-eqz v10, :cond_a

    .line 748
    iget-boolean v10, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    if-nez v10, :cond_9

    .line 749
    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8, v12, v11}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v8

    iput-object v8, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    .line 751
    :cond_9
    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    goto :goto_6

    .line 752
    :cond_a
    instance-of v10, v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v10, :cond_16

    .line 753
    check-cast v8, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 755
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v10, :cond_b

    .line 756
    move-object v10, v9

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumb_version:I

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    .line 758
    :goto_5
    invoke-static {v8, v6, v10}, Lorg/telegram/messenger/ImageLocation;->getForSticker(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    .line 763
    :goto_6
    iget-boolean v10, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    if-nez v10, :cond_c

    iget-object v10, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    if-nez v10, :cond_c

    if-eqz v6, :cond_c

    .line 764
    invoke-static {v6, v12, v11}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v10

    iput-object v10, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    :cond_c
    if-nez v8, :cond_d

    goto/16 :goto_a

    .line 770
    :cond_d
    iput-boolean v4, v7, Lorg/telegram/ui/Components/StickerTabView;->inited:Z

    .line 771
    iget-object v14, v7, Lorg/telegram/ui/Components/StickerTabView;->svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    .line 772
    iget-object v10, v7, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 773
    invoke-static {v4}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v11

    xor-int/2addr v11, v4

    if-eqz v11, :cond_e

    const-string v12, "40_40_firstframe"

    goto :goto_7

    :cond_e
    const-string v12, "40_40"

    .line 775
    :goto_7
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v13

    if-eqz v13, :cond_11

    iget-object v13, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    if-eqz v13, :cond_11

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_11

    if-eqz v11, :cond_f

    .line 777
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v11, 0x5a

    invoke-static {v8, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 778
    invoke-static {v8, v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const/4 v6, 0x0

    const-string v12, "40_40"

    move-object v13, v14

    move v14, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_8

    :cond_f
    if-eqz v14, :cond_10

    .line 780
    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const/4 v6, 0x0

    move-object v13, v14

    move v14, v6

    move-object v15, v9

    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_8

    .line 782
    :cond_10
    invoke-static {v6}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_8

    .line 784
    :cond_11
    invoke-static {v6, v4}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v6

    if-eqz v6, :cond_13

    if-eqz v14, :cond_12

    const/4 v6, 0x0

    move-object v11, v8

    move-object v13, v14

    move v14, v6

    move-object v15, v9

    .line 786
    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    goto :goto_8

    :cond_12
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v8

    move-object v13, v8

    move-object/from16 v16, v9

    .line 788
    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_8

    .line 790
    :cond_13
    iget v6, v8, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v6, v4, :cond_14

    const-string v13, "tgs"

    move-object v11, v8

    move-object v15, v9

    .line 791
    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_8

    :cond_14
    const-string v13, "webp"

    move-object v11, v8

    move-object v15, v9

    .line 793
    invoke-virtual/range {v10 .. v15}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 796
    :goto_8
    instance-of v6, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v6, :cond_15

    .line 797
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    .line 799
    :cond_15
    iget-object v6, v7, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImages:Landroid/util/SparseArray;

    iget v6, v7, Lorg/telegram/ui/Components/StickerTabView;->index:I

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 802
    iget-object v3, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    iget v6, v7, Lorg/telegram/ui/Components/StickerTabView;->index:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->remove(I)V

    :cond_16
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 806
    :cond_17
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_19

    .line 807
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    .line 808
    iget-object v2, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->draggingView:Landroid/view/View;

    if-eq v1, v2, :cond_18

    .line 809
    iget-object v1, v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->currentPlayingImagesTmp:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerTabView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_19
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 992
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 986
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorHeight:I

    .line 987
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .line 930
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->shouldExpand:Z

    .line 931
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    if-eq v0, p1, :cond_2

    .line 265
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->type:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    .line 266
    sget-object v0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$7;->$SwitchMap$org$telegram$ui$Components$ScrollSlidingTabStrip$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40400000    # 3.0f

    .line 271
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    .line 272
    iget-object v3, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    aput p1, v4, v0

    aput p1, v4, v2

    const/4 v0, 0x3

    aput p1, v4, v0

    const/4 p1, 0x4

    aput v1, v4, p1

    const/4 p1, 0x5

    aput v1, v4, p1

    const/4 p1, 0x6

    aput v1, v4, p1

    const/4 p1, 0x7

    aput v1, v4, p1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->indicatorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 996
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 997
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .line 1001
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineColor:I

    .line 1002
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 1

    .line 1006
    iget v0, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    if-eq v0, p1, :cond_0

    .line 1007
    iput p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->underlineHeight:I

    .line 1008
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    :cond_0
    return-void
.end method

.method public showSelected(Z)V
    .locals 0

    .line 830
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->showSelected:Z

    .line 831
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method protected stickerSetPositionChanged(II)V
    .locals 0

    return-void
.end method

.method protected updatePosition()V
    .locals 0

    return-void
.end method

.method public updateTabStyles()V
    .locals 3

    const/4 v0, 0x0

    .line 653
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabCount:I

    if-ge v0, v1, :cond_1

    .line 654
    iget-object v1, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 655
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->shouldExpand:Z

    if-eqz v2, :cond_0

    .line 656
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultExpandLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 658
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
