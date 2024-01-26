.class public Lorg/telegram/ui/Components/RecyclerListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;,
        Lorg/telegram/ui/Components/RecyclerListView$FoucsableOnTouchListener;,
        Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$FastScroll;,
        Lorg/telegram/ui/Components/RecyclerListView$Holder;,
        Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;,
        Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;,
        Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;
    }
.end annotation


# static fields
.field private static attributes:[I

.field private static gotAttributes:Z

.field private static final initializeScrollbars:Ljava/lang/reflect/Method;


# instance fields
.field private accessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private accessibilityEnabled:Z

.field private allowItemsInteractionDuringAnimation:Z

.field private allowStopHeaveOperations:Z

.field private animateEmptyView:Z

.field private backgroundPaint:Landroid/graphics/Paint;

.field private clickRunnable:Ljava/lang/Runnable;

.field private currentChildPosition:I

.field private currentChildView:Landroid/view/View;

.field private currentFirst:I

.field currentSelectedPosition:I

.field private currentVisible:I

.field private disableHighlightState:Z

.field private disallowInterceptTouchEvents:Z

.field private drawSelection:Z

.field private drawSelectorBehind:Z

.field private emptyView:Landroid/view/View;

.field emptyViewAnimateToVisibility:I

.field private emptyViewAnimationType:I

.field private fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

.field public fastScrollAnimationRunning:Z

.field private gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

.field private getSelectorColor:Lorg/telegram/messenger/GenericProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private headersCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private hiddenByEmptyView:Z

.field private hideIfEmpty:Z

.field private highlightPosition:I

.field private instantClick:Z

.field private interceptedByChild:Z

.field private isChildViewEnabled:Z

.field private isHidden:Z

.field itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private lastAlphaAnimationTime:J

.field lastX:F

.field lastY:F

.field listPaddings:[I

.field private longPressCalled:Z

.field multiSelectionGesture:Z

.field multiSelectionGestureStarted:Z

.field multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

.field multiselectScrollRunning:Z

.field multiselectScrollToTop:Z

.field private observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

.field private onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private onItemClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

.field private onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

.field private onItemLongClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

.field private onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private overlayContainer:Landroid/widget/FrameLayout;

.field private pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

.field private pinnedHeader:Landroid/view/View;

.field private pinnedHeaderShadowAlpha:F

.field private pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private pinnedHeaderShadowTargetAlpha:F

.field private removeHighlighSelectionRunnable:Ljava/lang/Runnable;

.field private resetSelectorOnChanged:Z

.field protected final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollEnabled:Z

.field public scrolledByUserOnce:Z

.field scroller:Ljava/lang/Runnable;

.field public scrollingByUser:Z

.field private sectionOffset:I

.field private sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

.field private sectionsCount:I

.field private sectionsType:I

.field private selectChildRunnable:Ljava/lang/Runnable;

.field protected selectorDrawable:Landroid/graphics/drawable/Drawable;

.field protected selectorPosition:I

.field private selectorRadius:I

.field protected selectorRect:Landroid/graphics/Rect;

.field protected selectorTransformer:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private selectorType:I

.field protected selectorView:Landroid/view/View;

.field private selfOnLayout:Z

.field private startSection:I

.field startSelectionFrom:I

.field private stoppedAllHeavyOperations:Z

.field private topBottomSelectorRadius:I

.field private touchSlop:I

.field private translateSelector:Z

.field public useLayoutPositionOnClick:Z

.field useRelativePositions:Z


# direct methods
.method public static synthetic $r8$lambda$FIDzdliHuJQ2ZOY8_z7qt7Dt8F0(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->lambda$highlightRowInternal$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 230
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "initializeScrollbars"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/TypedArray;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    sput-object v0, Lorg/telegram/ui/Components/RecyclerListView;->initializeScrollbars:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1424
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 1429
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelection:Z

    .line 143
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->allowItemsInteractionDuringAnimation:Z

    const/4 v1, -0x1

    .line 153
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    .line 154
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    .line 163
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->hideIfEmpty:Z

    const/4 v1, 0x2

    .line 166
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorType:I

    .line 170
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    .line 189
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->scrollEnabled:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 213
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastX:F

    .line 214
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastY:F

    .line 223
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->accessibilityEnabled:Z

    .line 237
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/RecyclerListView$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->accessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 1378
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resetSelectorOnChanged:Z

    .line 1383
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/RecyclerListView$2;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 2907
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/RecyclerListView$6;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->scroller:Ljava/lang/Runnable;

    .line 1430
    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 1432
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1433
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1434
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1437
    :try_start_0
    sget-boolean p2, Lorg/telegram/ui/Components/RecyclerListView;->gotAttributes:Z

    if-nez p2, :cond_1

    const-string p2, "com.android.internal"

    const-string v2, "View"

    .line 1438
    invoke-virtual {p0, p2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getResourceDeclareStyleableIntArray(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p2

    sput-object p2, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    if-nez p2, :cond_0

    new-array p2, v1, [I

    .line 1440
    sput-object p2, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    .line 1442
    :cond_0
    sput-boolean v0, Lorg/telegram/ui/Components/RecyclerListView;->gotAttributes:Z

    .line 1444
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget-object v2, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1445
    sget-object v2, Lorg/telegram/ui/Components/RecyclerListView;->initializeScrollbars:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 1446
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 1449
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1451
    :cond_2
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/RecyclerListView$3;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-super {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1502
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/RecyclerListView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->longPressCalled:Z

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/RecyclerListView;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->longPressCalled:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->allowItemsInteractionDuringAnimation:Z

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/view/View;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty(Z)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resetSelectorOnChanged:Z

    return p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .locals 0

    .line 79
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/RecyclerListView;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->checkStopHeavyOperations(I)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/RecyclerListView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/RecyclerListView;FF)Z
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->chekMultiselect(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;)Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 0

    .line 79
    iget p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .locals 0

    .line 79
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object p0
.end method

.method private cancelMultiselectScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 2903
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiselectScrollRunning:Z

    .line 2904
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->scroller:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkIfEmpty(Z)V
    .locals 10

    .line 2145
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 2148
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 2155
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewIsVisible()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 2157
    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->animateEmptyView:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move p1, v1

    :cond_4
    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    .line 2161
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimateToVisibility:I

    if-eq p1, v3, :cond_9

    .line 2162
    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimateToVisibility:I

    const-wide/16 v6, 0x96

    const/4 p1, 0x0

    const v8, 0x3f333333    # 0.7f

    if-nez v3, :cond_6

    .line 2164
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2165
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 2166
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2167
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2168
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimationType:I

    if-ne p1, v4, :cond_5

    .line 2169
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 2170
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 2173
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 2175
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 2176
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2177
    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimationType:I

    if-ne v2, v4, :cond_7

    .line 2178
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 2180
    :cond_7
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/RecyclerListView$4;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2187
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 2192
    :cond_8
    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimateToVisibility:I

    .line 2193
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2194
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2196
    :cond_9
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->hideIfEmpty:Z

    if-eqz p1, :cond_c

    if-eqz v0, :cond_a

    const/4 v1, 0x4

    .line 2198
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v1, :cond_b

    .line 2199
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2201
    :cond_b
    iput-boolean v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->hiddenByEmptyView:Z

    :cond_c
    return-void

    .line 2149
    :cond_d
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->hiddenByEmptyView:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_e

    .line 2150
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2151
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->hiddenByEmptyView:Z

    :cond_e
    return-void
.end method

.method private checkStopHeavyOperations(I)V
    .locals 4

    const/16 v0, 0x200

    .line 1606
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 1604
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    if-eqz p1, :cond_1

    .line 1605
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    .line 1606
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1609
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->allowStopHeaveOperations:Z

    if-eqz p1, :cond_1

    .line 1610
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    .line 1611
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private chekMultiselect(FF)Z
    .locals 10

    .line 2828
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const/4 v3, 0x0

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 2829
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, v3

    .line 2830
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 2831
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    invoke-interface {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->getPaddings([I)V

    .line 2832
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->useRelativePositions:Z

    if-eqz v1, :cond_0

    goto/16 :goto_b

    .line 2835
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2836
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2838
    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2839
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 2841
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    if-eq v1, v0, :cond_e

    .line 2842
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-gt v1, v4, :cond_2

    if-le v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    .line 2843
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v4, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->checkPosition(IZ)I

    move-result v0

    if-eqz v1, :cond_8

    .line 2846
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    if-le v0, v1, :cond_5

    .line 2847
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->limitReached()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2848
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    add-int/2addr v1, v2

    :goto_3
    if-gt v1, v0, :cond_e

    .line 2849
    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-ne v1, v3, :cond_3

    goto :goto_4

    .line 2852
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->canSelect(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2853
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v3, v1, v2, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->onSelectionChanged(IZFF)V

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    if-le v1, v0, :cond_e

    .line 2859
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-ne v1, v4, :cond_6

    goto :goto_6

    .line 2862
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->canSelect(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2863
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v4, v1, v3, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->onSelectionChanged(IZFF)V

    :cond_7
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 2868
    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    if-le v0, v1, :cond_b

    :goto_7
    if-ge v1, v0, :cond_e

    .line 2870
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-ne v1, v4, :cond_9

    goto :goto_8

    .line 2873
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v4, v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->canSelect(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2874
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v4, v1, v3, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->onSelectionChanged(IZFF)V

    :cond_a
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2878
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->limitReached()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2879
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    sub-int/2addr v1, v2

    :goto_9
    if-lt v1, v0, :cond_e

    .line 2880
    iget v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-ne v1, v3, :cond_c

    goto :goto_a

    .line 2883
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->canSelect(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2884
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v3, v1, v2, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->onSelectionChanged(IZFF)V

    :cond_d
    :goto_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2891
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {p1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->limitReached()Z

    move-result p1

    if-nez p1, :cond_10

    .line 2892
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    goto :goto_c

    :cond_f
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_10
    :goto_c
    return v2
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2511
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_4

    .line 2512
    :cond_1
    iget p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    .line 2513
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2514
    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2515
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2517
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 2519
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 2522
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2523
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2525
    :try_start_1
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 2527
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2530
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, v2, v2, p2, v0}, Landroid/view/View;->layout(IIII)V

    :cond_4
    return-void
.end method

.method private getDrawableStateForSelector()[I
    .locals 3

    const/4 v0, 0x1

    .line 2390
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 2391
    array-length v2, v1

    sub-int/2addr v2, v0

    const v0, 0x10100a7

    aput v0, v1, v2

    return-object v1
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2500
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 2502
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    :cond_1
    return-object p1
.end method

.method private highlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V
    .locals 1

    .line 2070
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2071
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2072
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    .line 2074
    :cond_0
    invoke-interface {p1}, Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;->run()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2076
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->highlightPosition:I

    iget-object p3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    .line 2077
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 2078
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2079
    instance-of p3, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz p3, :cond_3

    .line 2080
    iget-object p3, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    if-eqz p3, :cond_1

    goto :goto_0

    .line 2083
    :cond_1
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 2081
    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2086
    :cond_3
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_4

    .line 2087
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2090
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2091
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getDrawableStateForSelector()[I

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2092
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    if-lez p2, :cond_7

    .line 2096
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/RecyclerListView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    .line 2111
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    :cond_7
    :goto_2
    return-void
.end method

.method private synthetic lambda$highlightRowInternal$0()V
    .locals 2

    const/4 v0, 0x0

    .line 2097
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    .line 2098
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    .line 2099
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2100
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2101
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_0

    .line 2102
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2105
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2106
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method

.method private positionSelector(ILandroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 2295
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 9

    .line 2306
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2307
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2308
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    .line 2309
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    .line 2311
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    return-void

    .line 2314
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2317
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;

    if-eqz v3, :cond_3

    .line 2318
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/RecyclerListView$ViewBindingSelectionAdapter;->getSelectionBottomPadding(Landroid/view/View;)I

    move-result v3

    goto :goto_1

    .line 2320
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    if-eqz v3, :cond_4

    .line 2321
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->getSelectionBottomPadding(Landroid/view/View;)I

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    const/4 v4, -0x1

    if-eq p1, v4, :cond_5

    .line 2326
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    .line 2328
    :cond_5
    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    .line 2329
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    .line 2330
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRadius:I

    invoke-static {v4, v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->setMaskDrawableRad(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_4

    .line 2331
    :cond_6
    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->topBottomSelectorRadius:I

    if-lez v4, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2332
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_7

    iget v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->topBottomSelectorRadius:I

    goto :goto_2

    :cond_7
    move v5, v2

    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ne p1, v6, :cond_8

    iget v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->topBottomSelectorRadius:I

    goto :goto_3

    :cond_8
    move v6, v2

    :goto_3
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->setMaskDrawableRad(Landroid/graphics/drawable/Drawable;II)V

    .line 2334
    :cond_9
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2337
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    .line 2338
    iget-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->isChildViewEnabled:Z

    if-eq v3, p2, :cond_a

    .line 2339
    iput-boolean p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->isChildViewEnabled:Z

    :cond_a
    if-eqz v0, :cond_b

    .line 2343
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2344
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2346
    :cond_b
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorColor(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setListSelectorColor(Ljava/lang/Integer;)V

    .line 2347
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_c

    .line 2349
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 2350
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2353
    :cond_c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_d

    if-eqz p3, :cond_d

    .line 2354
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_d
    return-void
.end method

.method private removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    if-eqz p1, :cond_4

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1340
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1341
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    .line 1342
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 1343
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1344
    instance-of v0, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_1

    .line 1345
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_1
    if-eqz p2, :cond_3

    .line 1347
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3

    .line 1348
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    goto :goto_0

    .line 1352
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1354
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    :cond_4
    :goto_1
    return-void
.end method

.method private requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 2722
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2724
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2725
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getTouchParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 2727
    :cond_2
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method private startMultiselectScroll(Z)V
    .locals 0

    .line 2927
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiselectScrollToTop:Z

    .line 2928
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiselectScrollRunning:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2929
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiselectScrollRunning:Z

    .line 2930
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->scroller:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2931
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->scroller:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateSelectorState()V
    .locals 2

    .line 2378
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2379
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2380
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2381
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2383
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 2384
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addOverlayView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    .line 2669
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 2670
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$5;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/RecyclerListView$5;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    .line 2684
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected allowSelectChildAtPosition(FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected allowSelectChildAtPosition(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 2022
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->scrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public cancelClickRunnables(Z)V
    .locals 3

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1359
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1360
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    .line 1362
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1365
    invoke-virtual {p0, v0, p1, p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    .line 1367
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    .line 1368
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1370
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1371
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 1372
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1373
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    .line 1375
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return-void
.end method

.method public checkIfEmpty()V
    .locals 1

    .line 2141
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateEmptyViewAnimated()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty(Z)V

    return-void
.end method

.method public checkSection(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 1695
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-nez v1, :cond_2

    :cond_1
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v1, :cond_2a

    .line 1696
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 1697
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_2a

    .line 1698
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1699
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    .line 1700
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_27

    .line 1701
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 1702
    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/16 v7, 0x20

    const/4 v8, 0x3

    const v10, 0x7fffffff

    if-eq v6, v3, :cond_14

    if-ne v6, v8, :cond_3

    goto/16 :goto_5

    :cond_3
    const/4 v1, 0x2

    if-ne v6, v1, :cond_2a

    const/4 v1, 0x0

    .line 1804
    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowTargetAlpha:F

    .line 1805
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 1808
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v11, v5

    move v12, v11

    move v8, v10

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v11, v1, :cond_9

    .line 1816
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1817
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 1818
    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    add-int/2addr v15, v2

    if-gt v14, v15, :cond_5

    goto :goto_1

    :cond_5
    if-ge v14, v10, :cond_6

    move-object v9, v13

    move v10, v14

    .line 1825
    :cond_6
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1826
    iget v15, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    add-int/2addr v15, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v15, v15, v16

    if-ge v14, v15, :cond_7

    goto :goto_1

    :cond_7
    if-ge v14, v8, :cond_8

    move-object v6, v13

    move v8, v14

    :cond_8
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_9
    if-nez v9, :cond_a

    return-void

    .line 1837
    :cond_a
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    .line 1841
    :cond_b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 1842
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v7

    if-gez v7, :cond_c

    return-void

    .line 1846
    :cond_c
    iget v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    if-ne v8, v7, :cond_d

    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-nez v8, :cond_e

    .line 1847
    :cond_d
    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-direct {v0, v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    .line 1848
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v11

    invoke-static {v11, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1849
    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v8, v5, v5, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1850
    iput v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    .line 1852
    :cond_e
    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v8, :cond_f

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v6, v8, :cond_f

    .line 1853
    iput v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowTargetAlpha:F

    .line 1855
    :cond_f
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v4

    .line 1857
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    if-eqz v12, :cond_10

    .line 1858
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v12, v6, :cond_10

    goto :goto_2

    :cond_10
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    :goto_2
    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_13

    .line 1861
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1864
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v2

    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    sub-int/2addr v3, v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_11

    sub-int/2addr v3, v1

    goto :goto_3

    :cond_11
    move v3, v2

    :goto_3
    if-gez v3, :cond_12

    .line 1872
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 1874
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 1877
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1880
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_e

    .line 1703
    :cond_14
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v12, v5

    move v14, v12

    move v11, v10

    const/4 v13, 0x0

    :goto_6
    if-ge v12, v6, :cond_19

    .line 1710
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1711
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 1712
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    add-int/2addr v5, v2

    if-gt v9, v5, :cond_15

    goto :goto_7

    :cond_15
    if-ge v9, v10, :cond_16

    move v10, v9

    move-object v13, v15

    .line 1719
    :cond_16
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1720
    iget v5, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    add-int/2addr v5, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v5, v15

    if-ge v9, v5, :cond_17

    goto :goto_7

    :cond_17
    if-ge v9, v11, :cond_18

    move v11, v9

    :cond_18
    :goto_7
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_6

    :cond_19
    if-nez v13, :cond_1a

    return-void

    .line 1730
    :cond_1a
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-nez v5, :cond_1b

    return-void

    .line 1735
    :cond_1b
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 1736
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v1, v5

    .line 1737
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v3

    .line 1739
    iget-boolean v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v6, :cond_1c

    if-eqz p1, :cond_1d

    :cond_1c
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isPressed()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1740
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    .line 1741
    instance-of v6, v6, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v6, :cond_1d

    .line 1742
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    int-to-float v7, v5

    iget-object v9, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getTotalItemsCount()I

    move-result v9

    sub-int/2addr v9, v1

    add-int/2addr v9, v3

    int-to-float v9, v9

    div-float/2addr v7, v9

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setProgress(F)V

    .line 1746
    :cond_1d
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1747
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1748
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result v4

    if-nez v4, :cond_1e

    return-void

    .line 1751
    :cond_1e
    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    if-ne v4, v5, :cond_1f

    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    if-eq v4, v1, :cond_20

    .line 1752
    :cond_1f
    iput v5, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    .line 1753
    iput v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->currentVisible:I

    .line 1755
    iput v3, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    .line 1756
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    .line 1757
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v4

    add-int/2addr v4, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v6, v5}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v6

    sub-int/2addr v4, v6

    :goto_8
    add-int v6, v5, v1

    if-ge v4, v6, :cond_20

    .line 1759
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    iget v9, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    add-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 1760
    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    add-int/2addr v6, v3

    iput v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    goto :goto_8

    .line 1764
    :cond_20
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    if-eq v1, v8, :cond_2a

    .line 1766
    iget v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    move v3, v5

    :goto_9
    iget v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    iget v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsCount:I

    add-int/2addr v4, v6

    if-ge v1, v4, :cond_2a

    .line 1768
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    .line 1769
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1770
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_21
    const/4 v4, 0x0

    .line 1772
    :goto_a
    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 1773
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    iget-object v6, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v6

    .line 1775
    iget v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->startSection:I

    const/16 v8, 0x64

    if-ne v1, v7, :cond_25

    .line 1776
    iget-object v7, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v7

    add-int/lit8 v9, v6, -0x1

    if-ne v7, v9, :cond_22

    .line 1778
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    add-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_c

    :cond_22
    add-int/lit8 v9, v6, -0x2

    if-ne v7, v9, :cond_24

    sub-int v7, v3, v5

    .line 1780
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 1783
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v2

    goto :goto_b

    .line 1785
    :cond_23
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    :goto_b
    const/4 v8, 0x0

    .line 1787
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_c

    :cond_24
    const/4 v8, 0x0

    .line 1789
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1791
    :goto_c
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v4

    sub-int/2addr v6, v4

    goto :goto_d

    :cond_25
    sub-int v7, v3, v5

    .line 1793
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 1795
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_d

    .line 1797
    :cond_26
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_d
    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 1883
    :cond_27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 1884
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v1, v2

    .line 1885
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    const/4 v1, -0x1

    if-ne v2, v1, :cond_28

    return-void

    .line 1891
    :cond_28
    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-nez v1, :cond_29

    if-eqz p1, :cond_2a

    :cond_29
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isPressed()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1892
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 1894
    instance-of v2, v1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    if-eqz v2, :cond_2a

    .line 1895
    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F

    move-result v2

    .line 1896
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v1

    .line 1897
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setIsVisible(Z)V

    .line 1898
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setProgress(F)V

    .line 1899
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->access$2900(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;Z)V

    :cond_2a
    :goto_e
    return-void
.end method

.method public clickItem(Landroid/view/View;I)V
    .locals 2

    .line 1937
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 1938
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    goto :goto_0

    .line 1939
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1940
    invoke-interface {v0, p1, p2, v1, v1}, Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;->onItemClick(Landroid/view/View;IFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public disableItemAnimationDelay()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2566
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    if-eqz v0, :cond_0

    .line 2567
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->dispatchDraw()V

    .line 2570
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelection:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelectorBehind:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2571
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2572
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2573
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorTransformer:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_1

    .line 2574
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 2576
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2577
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2579
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2580
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2582
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2583
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelection:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelectorBehind:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2584
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2585
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2586
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorTransformer:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_4

    .line 2587
    invoke-interface {v0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 2589
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 2590
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2592
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2593
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2595
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 2596
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2598
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    .line 2599
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 2600
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 2601
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2602
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2603
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2604
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    :cond_8
    move v6, v2

    :goto_1
    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2605
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p1, v3, v3, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2606
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2607
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 2611
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_f

    .line 2612
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2613
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2614
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    :cond_a
    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2615
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    .line 2616
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2617
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    iget v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2618
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v4, 0x14

    .line 2621
    iget-wide v6, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastAlphaAnimationTime:J

    sub-long v6, v1, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2622
    iput-wide v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastAlphaAnimationTime:J

    .line 2623
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowTargetAlpha:F

    cmpg-float v6, v1, v2

    const/high16 v7, 0x43340000    # 180.0f

    if-gez v6, :cond_c

    long-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v1, v4

    .line 2624
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    .line 2626
    iput v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    .line 2628
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_2

    :cond_c
    cmpl-float v6, v1, v2

    if-lez v6, :cond_e

    long-to-float v4, v4

    div-float/2addr v4, v7

    sub-float/2addr v1, v4

    .line 2630
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    .line 2632
    iput v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowAlpha:F

    .line 2634
    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2637
    :cond_e
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2638
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2639
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_f
    return-void
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 1

    .line 2482
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->longPressCalled:Z

    if-eqz v0, :cond_1

    .line 2483
    iget-object p4, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

    if-eqz p4, :cond_0

    int-to-float p5, p1

    int-to-float v0, p2

    .line 2484
    invoke-interface {p4, p5, v0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;->onMove(FF)V

    :cond_0
    const/4 p4, 0x0

    .line 2486
    aput p1, p3, p4

    const/4 p1, 0x1

    .line 2487
    aput p2, p3, p1

    return p1

    .line 2490
    :cond_1
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2128
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2129
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eqz v2, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isMoving:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 2132
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2135
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawItemBackground(Landroid/graphics/Canvas;III)V
    .locals 8

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    .line 1575
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1576
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1580
    :cond_0
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 1582
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    if-gtz p3, :cond_1

    .line 1584
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    add-int v1, v0, p3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ge v0, v1, :cond_5

    .line 1592
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez p2, :cond_4

    .line 1593
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    .line 1595
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    int-to-float v4, v0

    .line 1596
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float v5, p2

    int-to-float v6, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method protected drawSectionBackground(Landroid/graphics/Canvas;III)V
    .locals 8

    if-ge p3, p2, :cond_0

    return-void

    :cond_0
    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    .line 1514
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1515
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1519
    :cond_1
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-lt v4, p2, :cond_2

    if-gt v4, p3, :cond_2

    .line 1521
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1523
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ge v0, v1, :cond_5

    .line 1528
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez p2, :cond_4

    .line 1529
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    .line 1531
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    int-to-float v4, v0

    .line 1532
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float v5, p2

    int-to-float v6, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method protected drawSectionBackgroundExclusive(Landroid/graphics/Canvas;III)V
    .locals 8

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    .line 1540
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1541
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1545
    :cond_0
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-le v4, p2, :cond_1

    if-ge v4, p3, :cond_1

    .line 1547
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1548
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_1
    if-ne v4, p2, :cond_2

    .line 1550
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1551
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_2
    if-ne v4, p3, :cond_3

    .line 1553
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1554
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ge v0, v1, :cond_6

    .line 1559
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    if-nez p2, :cond_5

    .line 1560
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    .line 1562
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    int-to-float v4, v0

    .line 1563
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float v5, p2

    int-to-float v6, v1

    iget-object v7, p0, Lorg/telegram/ui/Components/RecyclerListView;->backgroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 2414
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2415
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateSelectorState()V

    return-void
.end method

.method public emptyViewIsVisible()Z
    .locals 2

    .line 2206
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->isFastScrollAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2209
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 7

    .line 1291
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 1294
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1295
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v4, :cond_0

    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 1296
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    if-nez v1, :cond_3

    .line 1297
    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 1298
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_4

    .line 1299
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    cmpg-float v5, p1, v6

    if-gtz v5, :cond_4

    .line 1300
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    .line 1301
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v4, p2, v5

    if-gtz v4, :cond_4

    return-object v3

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 2000
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2694
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeadersCache()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 2698
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOnItemClickListener()Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .locals 1

    .line 1933
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method public getOnScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    .line 2251
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method public getPinnedHeader()Landroid/view/View;
    .locals 1

    .line 2702
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getPressedChildView()Landroid/view/View;
    .locals 1

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object v0
.end method

.method public getResourceDeclareStyleableIntArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 2

    const/4 v0, 0x0

    .line 1413
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".R$styleable"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1415
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 1

    .line 1914
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorColor:Lorg/telegram/messenger/GenericProvider;

    if-eqz v0, :cond_0

    .line 1915
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1691
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectorRect()Landroid/graphics/Rect;
    .locals 1

    .line 2557
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 2940
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method protected getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2944
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 2945
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method protected getThemedPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    .line 2949
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getPaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 2950
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getTouchParent()Landroid/view/ViewParent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .line 2213
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2216
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    .line 2217
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 2218
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2220
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 2221
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public hideSelector(Z)V
    .locals 3

    .line 2363
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2365
    invoke-virtual {p0, v0, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->onChildPressed(Landroid/view/View;FFZ)V

    const/4 v1, 0x0

    .line 2366
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2368
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->removeSelection(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    if-nez p1, :cond_1

    .line 2372
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2373
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    return-void
.end method

.method public highlightRow(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;)V
    .locals 2

    const/16 v0, 0x2bc

    const/4 v1, 0x1

    .line 2030
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V

    return-void
.end method

.method public highlightRow(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;I)V
    .locals 1

    const/4 v0, 0x1

    .line 2034
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V

    return-void
.end method

.method public invalidateViews()V
    .locals 3

    .line 2004
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2006
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isFastScrollAnimationRunning()Z
    .locals 1

    .line 2706
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    return v0
.end method

.method public isMultiselect()Z
    .locals 1

    .line 2936
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGesture:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 2425
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 2426
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2427
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2433
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 2434
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2435
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2437
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2439
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2440
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 2397
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    if-eqz v0, :cond_0

    .line 2398
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2400
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2401
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->accessibilityEnabled:Z

    if-eqz v0, :cond_1

    .line 2402
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->accessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2406
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 2407
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2409
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    return-void
.end method

.method protected onChildPressed(Landroid/view/View;FFZ)V
    .locals 0

    .line 1322
    iget-boolean p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->disableHighlightState:Z

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1325
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 2654
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    const/4 v0, -0x1

    .line 2655
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v0, 0x0

    .line 2656
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    .line 2657
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2658
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    if-eqz v0, :cond_0

    .line 2659
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->onDetached()V

    .line 2662
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2663
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->stoppedAllHeavyOperations:Z

    .line 2664
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2117
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2120
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->disallowInterceptTouchEvents:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2121
    invoke-direct {p0, p0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    .line 2123
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1637
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 1638
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p4, 0x1

    .line 1639
    iput-boolean p4, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    .line 1640
    iget-boolean p4, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->topOffset:I

    :goto_0
    add-int/2addr p3, p1

    .line 1642
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iget-boolean p4, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isRtl:Z

    if-eqz p4, :cond_1

    .line 1643
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->layout(IIII)V

    goto :goto_1

    .line 1645
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object p4, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p1, p4

    .line 1646
    iget-object p4, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p4, p1, p3, p5, v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->layout(IIII)V

    .line 1648
    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selfOnLayout:Z

    .line 1650
    :cond_2
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->checkSection(Z)V

    .line 1651
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    if-eqz p1, :cond_3

    const/16 p3, 0x2bc

    .line 1652
    invoke-direct {p0, p1, p3, p2}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRowInternal(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;IZ)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1625
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 1626
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1627
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->topOffset:I

    .line 1628
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    .line 1629
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1630
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    const/16 v0, 0x84

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 1632
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->touchSlop:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 2536
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 2537
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->overlayContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 2538
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2540
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 2541
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 2544
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_5

    .line 2545
    iget-object p3, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 2546
    invoke-direct {p0, p3, p2}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 p3, 0x2

    if-ne p1, p3, :cond_5

    .line 2549
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-nez p1, :cond_4

    goto :goto_2

    .line 2552
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    nop

    :cond_5
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2793
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->access$100(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2796
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGesture:Z

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    .line 2797
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 2798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastX:F

    .line 2799
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastY:F

    .line 2801
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGestureStarted:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->touchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 2802
    iput-boolean v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGestureStarted:Z

    .line 2803
    invoke-direct {p0, p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    .line 2805
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGestureStarted:Z

    if-eqz v0, :cond_7

    .line 2806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->chekMultiselect(FF)Z

    .line 2807
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->getPaddings([I)V

    .line 2808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    const/16 v4, 0x38

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    aget v5, v5, v3

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {v0}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->limitReached()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2809
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->startMultiselectScroll(Z)V

    goto :goto_0

    .line 2810
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    if-le p1, v0, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    invoke-interface {p1}, Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;->limitReached()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2811
    :cond_5
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->startMultiselectScroll(Z)V

    goto :goto_0

    .line 2813
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelMultiselectScroll()V

    :cond_7
    :goto_0
    return v3

    .line 2818
    :cond_8
    iput v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastX:F

    .line 2819
    iput v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->lastY:F

    .line 2820
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGesture:Z

    .line 2821
    iput-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGestureStarted:Z

    .line 2822
    invoke-direct {p0, p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    .line 2823
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelMultiselectScroll()V

    .line 2824
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public relayoutPinnedHeader()V
    .locals 4

    .line 2645
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2646
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 2647
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2648
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public removeHighlightRow()V
    .locals 4

    .line 2039
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2040
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2041
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2042
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    .line 2043
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    goto :goto_0

    .line 2045
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->removeHighlighSelectionRunnable:Ljava/lang/Runnable;

    .line 2046
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pendingHighlightPosition:Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;

    .line 2047
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->highlightPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2048
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    .line 2049
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2051
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    .line 2052
    iput v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->highlightPosition:I

    goto :goto_0

    .line 2054
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 2055
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2056
    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_2

    .line 2057
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2060
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2061
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2062
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2711
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 2714
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 0

    .line 2967
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->accessibilityEnabled:Z

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 2446
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2448
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 2450
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2451
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2452
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v0, -0x1

    .line 2454
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentFirst:I

    .line 2455
    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v0, 0x0

    .line 2456
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    .line 2457
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2458
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeader:Landroid/view/View;

    .line 2459
    instance-of v1, p1, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    if-eqz v1, :cond_2

    .line 2460
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    goto :goto_0

    .line 2462
    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsAdapter:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    .line 2464
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_3

    .line 2466
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_3
    const/4 p1, 0x0

    .line 2468
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty(Z)V

    return-void
.end method

.method public setAllowItemsInteractionDuringAnimation(Z)V
    .locals 0

    .line 2359
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->allowItemsInteractionDuringAnimation:Z

    return-void
.end method

.method public setAllowStopHeaveOperations(Z)V
    .locals 0

    .line 2971
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->allowStopHeaveOperations:Z

    return-void
.end method

.method public setAnimateEmptyView(ZI)V
    .locals 0

    .line 2731
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->animateEmptyView:Z

    .line 2732
    iput p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimationType:I

    return-void
.end method

.method public setDisableHighlightState(Z)V
    .locals 0

    .line 1314
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->disableHighlightState:Z

    return-void
.end method

.method public setDisallowInterceptTouchEvents(Z)V
    .locals 0

    .line 2263
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->disallowInterceptTouchEvents:Z

    return-void
.end method

.method public setDrawSelection(Z)V
    .locals 0

    .line 2975
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelection:Z

    return-void
.end method

.method public setDrawSelectorBehind(Z)V
    .locals 0

    .line 1669
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->drawSelectorBehind:Z

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    .line 1974
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 1978
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1980
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    .line 1981
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->animateEmptyView:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1982
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1984
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    if-eqz p1, :cond_3

    .line 1985
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 1986
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimateToVisibility:I

    .line 1987
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    .line 1990
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewAnimateToVisibility:I

    .line 1991
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->updateEmptyViewAnimated()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setFastScrollEnabled(I)V
    .locals 2

    .line 2267
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    .line 2268
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2269
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setFastScrollVisible(Z)V
    .locals 2

    .line 2274
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 2277
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2278
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    iput-boolean p1, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    return-void
.end method

.method public setHideIfEmpty(Z)V
    .locals 0

    .line 2247
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->hideIfEmpty:Z

    return-void
.end method

.method public setInstantClick(Z)V
    .locals 0

    .line 2259
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z

    return-void
.end method

.method public setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1921
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorColor:Lorg/telegram/messenger/GenericProvider;

    return-void
.end method

.method public setItemsEnterAnimator(Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;)V
    .locals 0

    .line 2963
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    return-void
.end method

.method public setListSelectorColor(Ljava/lang/Integer;)V
    .locals 2

    .line 1909
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method public setOnInterceptTouchListener(Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;)V
    .locals 0

    .line 2255
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    return-void
.end method

.method public setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V
    .locals 0

    .line 1925
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-void
.end method

.method public setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V
    .locals 0

    .line 1929
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;

    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V
    .locals 2

    .line 1954
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;J)V

    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;J)V
    .locals 1

    .line 1958
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    .line 1959
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->setIsLongpressEnabled(Z)V

    .line 1960
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->setLongpressDuration(J)V

    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V
    .locals 2

    .line 1964
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;J)V

    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;J)V
    .locals 1

    .line 1968
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListenerExtended:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;

    .line 1969
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->setIsLongpressEnabled(Z)V

    .line 1970
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->gestureDetector:Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap;->setLongpressDuration(J)V

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .line 2243
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setPinnedHeaderShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2017
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->pinnedHeaderShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPinnedSectionOffsetY(I)V
    .locals 0

    .line 2290
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionOffset:I

    .line 2291
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setResetSelectorOnChanged(Z)V
    .locals 0

    .line 1380
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->resetSelectorOnChanged:Z

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 2026
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->scrollEnabled:Z

    return-void
.end method

.method public setSectionsType(I)V
    .locals 1

    .line 2282
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->sectionsType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2284
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headers:Ljava/util/ArrayList;

    .line 2285
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->headersCache:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public setSelectorDrawableColor(I)V
    .locals 4

    .line 1673
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1674
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1676
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorType:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1677
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRadius:I

    invoke-static {p1, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1678
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->topBottomSelectorRadius:I

    if-lez v1, :cond_2

    .line 1679
    invoke-static {p1, v1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1680
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRadius:I

    if-lez v1, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/high16 v0, -0x1000000

    .line 1681
    invoke-static {v1, v2, p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 1683
    invoke-static {p1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1685
    :cond_4
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1687
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public setSelectorRadius(I)V
    .locals 0

    .line 1661
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRadius:I

    return-void
.end method

.method public setSelectorTransformer(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/graphics/Canvas;",
            ">;)V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorTransformer:Landroidx/core/util/Consumer;

    return-void
.end method

.method public setSelectorType(I)V
    .locals 0

    .line 1657
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorType:I

    return-void
.end method

.method public setTopBottomSelectorRadius(I)V
    .locals 0

    .line 1665
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->topBottomSelectorRadius:I

    return-void
.end method

.method public setTranslateSelector(Z)V
    .locals 0

    .line 2561
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->translateSelector:Z

    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 2770
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2771
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v0, :cond_0

    .line 2772
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1

    .line 1618
    sget-object v0, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    if-eqz v0, :cond_0

    .line 1619
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 2235
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2237
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->hiddenByEmptyView:Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 2226
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2229
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->isHidden:Z

    .line 2230
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty(Z)V

    return-void
.end method

.method public startMultiselect(IZLorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;)V
    .locals 1

    .line 2777
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGesture:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2778
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->listPaddings:[I

    .line 2779
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x1

    .line 2781
    invoke-direct {p0, p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Landroid/view/View;Z)V

    .line 2783
    iput-object p3, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionListener:Lorg/telegram/ui/Components/RecyclerListView$onMultiSelectionChanged;

    .line 2784
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->multiSelectionGesture:Z

    .line 2785
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentSelectedPosition:I

    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->startSelectionFrom:I

    .line 2787
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/RecyclerListView;->useRelativePositions:Z

    return-void
.end method

.method public stopScroll()V
    .locals 0

    .line 2474
    :try_start_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected updateEmptyViewAnimated()Z
    .locals 1

    .line 1996
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public updateFastScrollColors()V
    .locals 1

    .line 2011
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScroll:Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    if-eqz v0, :cond_0

    .line 2012
    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->access$3000(Lorg/telegram/ui/Components/RecyclerListView$FastScroll;)V

    :cond_0
    return-void
.end method

.method public updateSelector()V
    .locals 2

    .line 2299
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2300
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->positionSelector(ILandroid/view/View;)V

    .line 2301
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 2420
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
