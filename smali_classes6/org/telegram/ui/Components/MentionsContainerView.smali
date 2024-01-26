.class public Lorg/telegram/ui/Components/MentionsContainerView;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "MentionsContainerView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MentionsContainerView$Delegate;,
        Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field private allowBlur:Z

.field baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private botContextProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private botContextResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private color:Ljava/lang/Integer;

.field private containerBottom:F

.field private containerPadding:F

.field private containerTop:F

.field private delegate:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

.field private gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private hideT:F

.field private ignoreLayout:Z

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

.field private listViewHiding:Z

.field private listViewPadding:F

.field private listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mentionsOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private rect:Landroid/graphics/Rect;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollRangeUpdateTries:I

.field private scrollToFirst:Z

.field private shouldLiftMentions:Z

.field private shown:Z

.field private final sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private switchLayoutManagerOnEnd:Z

.field private updateVisibilityRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$5IKaehLzFl7jQLpdlnamoSmLdw4(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$withDelegate$5(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7Pjs5Vv4maAmZvpMkpfQNA6n3ew(Lorg/telegram/ui/Components/MentionsContainerView;ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$updateListViewTranslation$2(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$9RR4ZvTPURD6vFPYIHpnkXlyBLI(Lorg/telegram/ui/Components/MentionsContainerView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$YcCqfTxnq9MUpeMpxihxlQdueec(Lorg/telegram/ui/Components/MentionsContainerView;Lorg/telegram/ui/Components/MentionsContainerView$Delegate;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$withDelegate$4(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aMMf0l6gxLUL2g1byx7_cMUDTuo(Lorg/telegram/ui/Components/MentionsContainerView;FFFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$updateListViewTranslation$1(FFFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$iP-uwJHuzdpLqv3KEA5oiF1J5qY(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MentionsContainerView;->lambda$updateListViewTranslation$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p6

    move-object/from16 v0, p7

    move-object/from16 v15, p8

    .line 73
    invoke-direct {v6, v8, v0}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    const/4 v14, 0x0

    .line 255
    iput-boolean v14, v6, Lorg/telegram/ui/Components/MentionsContainerView;->shouldLiftMentions:Z

    .line 303
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    .line 399
    iput-boolean v14, v6, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    .line 413
    iput-boolean v14, v6, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 414
    iput-boolean v14, v6, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    .line 415
    new-instance v1, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda4;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    .line 455
    iput-boolean v14, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listViewHiding:Z

    const/4 v1, 0x0

    .line 456
    iput v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    .line 457
    iput-boolean v14, v6, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    .line 554
    new-instance v1, Lorg/telegram/ui/Components/MentionsContainerView$5;

    invoke-direct {v1, v6}, Lorg/telegram/ui/Components/MentionsContainerView$5;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->botContextProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 74
    iput-object v7, v6, Lorg/telegram/ui/Components/MentionsContainerView;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 75
    iput-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 76
    iput-object v15, v6, Lorg/telegram/ui/Components/MentionsContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 77
    iput-boolean v14, v6, Lorg/telegram/ui/Components/BlurredFrameLayout;->drawBlur:Z

    .line 78
    iput-boolean v14, v6, Lorg/telegram/ui/Components/BlurredFrameLayout;->isTopView:Z

    const/16 v0, 0x8

    .line 79
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 80
    invoke-virtual {v6, v14}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/high16 v0, 0x42fc0000    # 126.0f

    .line 82
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v2, 0x3e6147ae    # 0.22f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    .line 84
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-direct {v0, v6, v8, v15}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    const/4 v1, 0x6

    .line 85
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    .line 86
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$1;

    invoke-direct {v0, v6, v8}, Lorg/telegram/ui/Components/MentionsContainerView$1;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 99
    new-instance v9, Lorg/telegram/ui/Components/MentionsContainerView$2;

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/MentionsContainerView$2;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;IZZ)V

    iput-object v9, v6, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    .line 168
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$3;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/MentionsContainerView$3;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    invoke-virtual {v9, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 189
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    .line 190
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 191
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 192
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 193
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 194
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 195
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 196
    iget-object v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 197
    iget-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 198
    iget-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 200
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter;

    new-instance v1, Lorg/telegram/ui/Components/MentionsContainerView$4;

    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Components/MentionsContainerView$4;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v9, 0x0

    move-object v7, v0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move v2, v14

    move-object v14, v1

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    .line 240
    new-instance v1, Lorg/telegram/ui/Adapters/PaddedListAdapter;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Adapters/PaddedListAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    .line 241
    iget-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 243
    iget-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-virtual {v6, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->setReversed(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/MentionsContainerView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/MentionsContainerView;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/MentionsContainerView;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/MentionsContainerView;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Components/MentionsContainerView;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/MentionsContainerView;)F
    .locals 0

    .line 54
    iget p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/MentionsContainerView;F)F
    .locals 0

    .line 54
    iput p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/MentionsContainerView;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/MentionsContainerView;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/MentionsContainerView;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/MentionsContainerView;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->botContextResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/MentionsContainerView$Delegate;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    return-object p0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 416
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->updateListViewTranslation(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateListViewTranslation$1(FFFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 514
    iget-object p5, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p5, p6}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    .line 515
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->onAnimationScroll()V

    sub-float/2addr p6, p3

    sub-float/2addr p4, p3

    div-float/2addr p6, p4

    .line 516
    invoke-static {p1, p2, p6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    return-void
.end method

.method private synthetic lambda$updateListViewTranslation$2(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p2, 0x0

    .line 521
    iput-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    move p3, p2

    .line 522
    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 523
    iget-boolean p3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 524
    iput-boolean p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x1

    .line 526
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateListViewTranslation$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$withDelegate$4(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    if-eqz p3, :cond_e

    .line 602
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBannedInline()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v3, p3, -0x1

    .line 606
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 607
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getResultStartPosition()I

    move-result v5

    .line 608
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getResultLength()I

    move-result v6

    .line 609
    instance-of v7, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 611
    instance-of v5, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v5, :cond_1

    .line 612
    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerCell;->getSendAnimationData()Lorg/telegram/messenger/MessageObject$SendAnimationData;

    .line 614
    :cond_1
    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 615
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemParent(I)Ljava/lang/Object;

    move-result-object v5

    .line 616
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    .line 617
    invoke-interface {v2, v0, v6, v5}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 618
    :cond_2
    instance-of v0, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    const-string v7, "@"

    const-string v10, " "

    if-eqz v0, :cond_3

    .line 619
    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 620
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 622
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v6, v0, v9}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    goto/16 :goto_3

    .line 624
    :cond_3
    instance-of v0, v4, Lorg/telegram/tgnet/TLRPC$User;

    const/16 v11, 0x21

    if-eqz v0, :cond_5

    .line 625
    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 627
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 628
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v6, v0, v9}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    goto/16 :goto_3

    .line 630
    :cond_4
    invoke-static {v0, v9}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;Z)Ljava/lang/String;

    move-result-object v7

    .line 631
    new-instance v12, Landroid/text/SpannableString;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 632
    new-instance v7, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x3

    invoke-direct {v7, v0, v10}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;I)V

    invoke-interface {v12}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-interface {v12, v7, v9, v0, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 633
    invoke-interface {v2, v5, v6, v12, v9}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    goto/16 :goto_3

    .line 635
    :cond_5
    instance-of v0, v4, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v5, v6, v0, v9}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    goto :goto_3

    .line 637
    :cond_6
    instance-of v0, v4, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    if-eqz v0, :cond_9

    .line 638
    move-object v0, v4

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v7, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    .line 639
    invoke-interface {v2, v7}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->addEmojiToRecent(Ljava/lang/String;)V

    if-eqz v7, :cond_8

    const-string v0, "animated_"

    .line 640
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v10, 0x0

    .line 644
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->getFontMetrics()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 647
    :try_start_1
    invoke-static {v12, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_0
    const/16 v0, 0x9

    .line 649
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 650
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0, v12, v13}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 651
    new-instance v14, Landroid/text/SpannableString;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_7

    .line 654
    new-instance v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v12, v0, v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 656
    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {v0, v12, v13, v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    move-object v12, v0

    .line 658
    :goto_1
    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v14, v12, v9, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 659
    invoke-interface {v2, v5, v6, v14, v9}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 661
    :catch_1
    invoke-interface {v2, v5, v6, v7, v8}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    goto :goto_2

    .line 664
    :cond_8
    invoke-interface {v2, v5, v6, v7, v8}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->replaceText(IILjava/lang/CharSequence;Z)V

    .line 666
    :goto_2
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    .line 667
    :cond_9
    :goto_3
    instance-of v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_e

    .line 668
    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 669
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v5, "photo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v0, :cond_c

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v0, :cond_c

    :cond_a
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v5, "gif"

    .line 670
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_c

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v5, "video"

    .line 671
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_d

    .line 672
    :cond_c
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getSearchResultBotContext()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v1, Lorg/telegram/ui/Components/MentionsContainerView;->botContextResults:Ljava/util/ArrayList;

    .line 673
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/MentionsContainerView;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v4, v1, Lorg/telegram/ui/Components/MentionsContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 674
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemPosition(I)I

    move-result v12

    const/4 v13, 0x3

    const/4 v14, 0x0

    iget-object v15, v1, Lorg/telegram/ui/Components/MentionsContainerView;->botContextProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    goto :goto_4

    .line 676
    :cond_d
    invoke-interface {v2, v4, v8, v9}, Lorg/telegram/ui/Components/MentionsContainerView$Delegate;->sendBotInlineResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZI)V

    :cond_e
    :goto_4
    return-void
.end method

.method private synthetic lambda$withDelegate$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 680
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/MentionsContainerView;->mentionsOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private updateListViewTranslation(ZZ)V
    .locals 11

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 465
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewHiding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 466
    iput v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollRangeUpdateTries:I

    return-void

    .line 469
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 472
    iget v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    neg-float v3, v3

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto :goto_0

    .line 474
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    .line 475
    iget-object v4, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/PaddedListAdapter;->getPadding()I

    move-result v4

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    add-float/2addr v4, v5

    if-gtz v3, :cond_3

    .line 476
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItemCountInternal()I

    move-result v3

    if-lez v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollRangeUpdateTries:I

    const/4 v5, 0x3

    if-ge v3, v5, :cond_3

    add-int/2addr v3, v2

    .line 477
    iput v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollRangeUpdateTries:I

    .line 478
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    return-void

    :cond_3
    move v3, v4

    .line 482
    :goto_0
    iput v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollRangeUpdateTries:I

    const/4 v4, 0x0

    .line 483
    iget v5, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    if-eqz v0, :cond_4

    sub-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    neg-float v3, v3

    goto :goto_1

    :cond_4
    neg-float v6, v5

    sub-float/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v6

    :goto_1
    if-eqz p1, :cond_5

    if-nez v0, :cond_5

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    :cond_5
    move v10, v3

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_6

    .line 489
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_6
    const/16 v0, 0x8

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p2, :cond_c

    .line 492
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewHiding:Z

    .line 493
    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v9

    .line 495
    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    if-eqz p1, :cond_7

    move v8, v5

    goto :goto_2

    :cond_7
    move v8, v4

    :goto_2
    cmpl-float p2, v9, v10

    if-nez p2, :cond_a

    .line 498
    iput-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    .line 499
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 500
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 501
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    .line 502
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 503
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    :cond_9
    move-object v3, p2

    goto :goto_4

    .line 506
    :cond_a
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v9}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, v10}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 510
    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v1, 0x44098000    # 550.0f

    .line 511
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 508
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 513
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda3;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;FFFF)V

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-eqz p1, :cond_b

    .line 519
    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Z)V

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 531
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 534
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_4

    :cond_c
    if-eqz p1, :cond_d

    move v4, v5

    .line 537
    :cond_d
    iput v4, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    .line 538
    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p2, v10}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    if-eqz p1, :cond_e

    .line 540
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_e
    :goto_4
    if-eqz v3, :cond_f

    .line 544
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_f

    .line 545
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_f
    return-void

    .line 462
    :cond_10
    :goto_5
    iput v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollRangeUpdateTries:I

    return-void
.end method


# virtual methods
.method protected canOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clipBottom()F
    .locals 2

    .line 308
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    sub-float v1, v0, v1

    :goto_0
    return v1
.end method

.method public clipTop()F
    .locals 2

    .line 315
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    :cond_1
    return v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 884
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 885
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 323
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v5

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotWebViewSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    add-int/2addr v0, v3

    .line 325
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    const/4 v0, 0x6

    .line 327
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    .line 328
    iget v4, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 330
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    iget-boolean v7, v3, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v7, :cond_3

    iget-object v3, v3, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    :goto_2
    int-to-float v3, v3

    .line 331
    iget-object v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    add-float/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    add-float/2addr v3, v7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 332
    iget v8, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 333
    iget-object v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iput v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    float-to-int v8, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iput v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    float-to-int v3, v3

    invoke-virtual {v7, v2, v8, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 334
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v2, v0, v6

    if-lez v2, :cond_7

    .line 336
    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    float-to-int v7, v0

    sub-int/2addr v3, v7

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 339
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    if-ne v7, v8, :cond_5

    .line 340
    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    .line 341
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 343
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    iget-boolean v7, v3, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v7, :cond_6

    iget-object v3, v3, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    int-to-float v3, v3

    .line 344
    iget-object v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    add-float/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    sub-float/2addr v3, v7

    iput v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    .line 345
    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 346
    iget-object v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iput v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    float-to-int v9, v9

    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 347
    iget v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v2, v0, v6

    if-lez v2, :cond_7

    .line 349
    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    float-to-int v7, v0

    add-int/2addr v3, v7

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 352
    :cond_7
    :goto_4
    iget v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 353
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->onAnimationScroll()V

    .line 356
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    if-nez v2, :cond_9

    .line 357
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x4

    .line 358
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x1e000000

    invoke-virtual {v2, v1, v6, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 360
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->color:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    :cond_a
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/MentionsContainerView;->getThemedColor(I)I

    move-result v2

    :goto_5
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget-boolean v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->allowBlur:Z

    if-eqz v1, :cond_d

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v1, :cond_d

    cmpl-float v6, v0, v6

    if-lez v6, :cond_c

    .line 364
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 365
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->path:Landroid/graphics/Path;

    if-nez v1, :cond_b

    .line 366
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->path:Landroid/graphics/Path;

    goto :goto_6

    .line 368
    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 370
    :goto_6
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 371
    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 374
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    if-lez v6, :cond_e

    .line 376
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 379
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Components/MentionsContainerView;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 381
    :cond_e
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 383
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 1

    .line 388
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 389
    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method public getCurrentLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 2

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    :goto_0
    return-object v1
.end method

.method public getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    return-object v0
.end method

.method public getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isBotContext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isMediaLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    :goto_0
    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 450
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    return v0
.end method

.method public isReversed()Z
    .locals 2

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAnimationScroll()V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 872
    invoke-super {p0}, Lorg/telegram/ui/Components/BlurredFrameLayout;->onAttachedToWindow()V

    .line 873
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onClose()V
    .locals 0

    return-void
.end method

.method protected onContextClick(Lorg/telegram/tgnet/TLRPC$BotInlineResult;)V
    .locals 0

    return-void
.end method

.method protected onContextSearch(Z)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 878
    invoke-super {p0}, Lorg/telegram/ui/Components/BlurredFrameLayout;->onDetachedFromWindow()V

    .line 879
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onOpen()V
    .locals 0

    return-void
.end method

.method public onPanTransitionEnd()V
    .locals 0

    return-void
.end method

.method public onPanTransitionStart()V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shouldLiftMentions:Z

    return-void
.end method

.method public onPanTransitionUpdate(F)V
    .locals 1

    .line 262
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shouldLiftMentions:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method protected onScrolled(ZZ)V
    .locals 0

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 407
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setDialogId(J)V
    .locals 1

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setDialogId(J)V

    return-void
.end method

.method public setIgnoreLayout(Z)V
    .locals 0

    .line 402
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    return-void
.end method

.method public setOverrideColor(I)V
    .locals 0

    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->color:Ljava/lang/Integer;

    .line 395
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setReversed(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setIsReversed(Z)V

    return-void
.end method

.method public updateVisibility(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 421
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v1

    .line 422
    iget-boolean v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 423
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 424
    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    const v2, -0x186a0

    goto :goto_0

    :cond_0
    const v2, 0x186a0

    .line 425
    :goto_0
    invoke-virtual {v3, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 427
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 428
    iput v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    .line 429
    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    neg-float v1, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    add-float/2addr v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    .line 432
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 434
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 436
    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_5

    .line 439
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 441
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentBeginToShow()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x0

    goto :goto_3

    :cond_6
    const-wide/16 v1, 0x64

    :goto_3
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    if-eqz p1, :cond_7

    .line 443
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->onOpen()V

    goto :goto_4

    .line 445
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->onClose()V

    :goto_4
    return-void
.end method

.method public withDelegate(Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V
    .locals 2

    .line 600
    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->delegate:Lorg/telegram/ui/Components/MentionsContainerView$Delegate;

    .line 601
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Lorg/telegram/ui/Components/MentionsContainerView$Delegate;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->mentionsOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 680
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
