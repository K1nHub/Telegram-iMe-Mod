.class public Lorg/telegram/ui/Components/MentionsContainerView;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "MentionsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field chatActivity:Lorg/telegram/ui/ChatActivity;

.field private color:Ljava/lang/Integer;

.field private containerBottom:F

.field private containerPadding:F

.field private containerTop:F

.field private gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private hideT:F

.field private ignoreLayout:Z

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

.field private listViewHiding:Z

.field private listViewPadding:F

.field private listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private rect:Landroid/graphics/Rect;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollToFirst:Z

.field private shouldLiftMentions:Z

.field private shown:Z

.field private final sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private switchLayoutManagerOnEnd:Z

.field private updateVisibilityRunnable:Ljava/lang/Runnable;


# direct methods
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

.method public constructor <init>(Landroid/content/Context;JILorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p5

    move-object/from16 v14, p6

    .line 48
    iget-object v0, v7, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v6, v8, v0}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    const/4 v15, 0x0

    .line 226
    iput-boolean v15, v6, Lorg/telegram/ui/Components/MentionsContainerView;->shouldLiftMentions:Z

    .line 270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    .line 358
    iput-boolean v15, v6, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    .line 372
    iput-boolean v15, v6, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 373
    iput-boolean v15, v6, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    .line 374
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda3;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    .line 414
    iput-boolean v15, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listViewHiding:Z

    const/4 v0, 0x0

    .line 415
    iput v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    .line 416
    iput-boolean v15, v6, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    .line 49
    iput-object v7, v6, Lorg/telegram/ui/Components/MentionsContainerView;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 50
    iget-object v0, v7, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 51
    iput-object v14, v6, Lorg/telegram/ui/Components/MentionsContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 52
    iput-boolean v15, v6, Lorg/telegram/ui/Components/BlurredFrameLayout;->drawBlur:Z

    .line 53
    iput-boolean v15, v6, Lorg/telegram/ui/Components/BlurredFrameLayout;->isTopView:Z

    const/16 v0, 0x8

    .line 54
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 55
    invoke-virtual {v6, v15}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const/high16 v0, 0x42fc0000    # 126.0f

    .line 57
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v2, 0x3e6147ae    # 0.22f

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    .line 59
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-direct {v0, v6, v8, v14}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    const/4 v1, 0x6

    .line 60
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    .line 61
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$1;

    invoke-direct {v0, v6, v8}, Lorg/telegram/ui/Components/MentionsContainerView$1;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 74
    new-instance v9, Lorg/telegram/ui/Components/MentionsContainerView$2;

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/MentionsContainerView$2;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;IZZ)V

    iput-object v9, v6, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    .line 143
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$3;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Components/MentionsContainerView$3;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;)V

    invoke-virtual {v9, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 164
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v1, 0x96

    .line 165
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 166
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 167
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 168
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 169
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 170
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 171
    iget-object v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 172
    iget-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 173
    iget-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 175
    new-instance v0, Lorg/telegram/ui/Adapters/MentionsAdapter;

    new-instance v13, Lorg/telegram/ui/Components/MentionsContainerView$4;

    invoke-direct {v13, v6, v7}, Lorg/telegram/ui/Components/MentionsContainerView$4;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Lorg/telegram/ui/ChatActivity;)V

    const/4 v9, 0x0

    move-object v7, v0

    move-wide/from16 v10, p2

    move/from16 v12, p4

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJILorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    .line 211
    new-instance v1, Lorg/telegram/ui/Adapters/PaddedListAdapter;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Adapters/PaddedListAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;)V

    iput-object v1, v6, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    .line 212
    iget-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 214
    iget-object v0, v6, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v6, v15}, Lorg/telegram/ui/Components/MentionsContainerView;->setReversed(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/MentionsContainerView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/MentionsContainerView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/MentionsContainerView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/MentionsContainerView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/MentionsContainerView;)F
    .locals 0

    .line 32
    iget p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/MentionsContainerView;F)F
    .locals 0

    .line 32
    iput p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/MentionsContainerView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/MentionsContainerView;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/MentionsContainerView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/MentionsContainerView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 375
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->updateListViewTranslation(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateListViewTranslation$1(FFFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 463
    iget-object p5, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p5, p6}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    sub-float/2addr p6, p3

    sub-float/2addr p4, p3

    div-float/2addr p6, p4

    .line 464
    invoke-static {p1, p2, p6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    return-void
.end method

.method private synthetic lambda$updateListViewTranslation$2(ZLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p2, 0x0

    .line 469
    iput-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 470
    :goto_0
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 471
    iget-boolean p3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 472
    iput-boolean p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    .line 473
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x1

    .line 474
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateListViewTranslation$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    return-void
.end method

.method private updateListViewTranslation(ZZ)V
    .locals 9

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 422
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewHiding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return-void

    .line 425
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    if-eqz p1, :cond_2

    .line 428
    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    neg-float v1, v1

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_0

    .line 430
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/PaddedListAdapter;->getPadding()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    add-float/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    .line 432
    iget v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewPadding:F

    if-eqz v0, :cond_3

    sub-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    neg-float v1, v1

    goto :goto_1

    :cond_3
    neg-float v4, v3

    sub-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v1, v4

    :goto_1
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    :cond_4
    move v8, v1

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_5

    .line 438
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_5
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_b

    .line 441
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewHiding:Z

    .line 442
    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    .line 444
    iget v5, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    if-eqz p1, :cond_6

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    cmpl-float p2, v7, v8

    if-nez p2, :cond_9

    .line 447
    iput-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 448
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 449
    iget-boolean v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    .line 450
    iput-boolean p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->switchLayoutManagerOnEnd:Z

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x1

    .line 452
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibility(Z)V

    :cond_8
    move-object v1, v0

    goto :goto_4

    .line 455
    :cond_9
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0, v7}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, v8}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 459
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v2, 0x44098000    # 550.0f

    .line 460
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 457
    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 462
    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;FFFF)V

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    if-eqz p1, :cond_a

    .line 467
    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Z)V

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 479
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p2, Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/MentionsContainerView$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 482
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_4

    :cond_b
    if-eqz p1, :cond_c

    const/high16 v2, 0x3f800000    # 1.0f

    .line 485
    :cond_c
    iput v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    .line 486
    iget-object p2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {p2, v8}, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->setTranslationY(F)V

    if-eqz p1, :cond_d

    .line 488
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_d
    :goto_4
    if-eqz v1, :cond_e

    .line 492
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_e

    .line 493
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_e
    :goto_5
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

    .line 275
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 278
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

    .line 282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 285
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    :cond_1
    return v1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 290
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v5

    .line 291
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

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 292
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    const/4 v0, 0x4

    .line 294
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 296
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

    .line 297
    iget-object v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    add-float/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    add-float/2addr v3, v7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 298
    iget v8, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 299
    iget-object v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iput v6, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    float-to-int v8, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iput v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    float-to-int v3, v3

    invoke-virtual {v7, v2, v8, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 300
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerBottom:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpl-float v3, v2, v6

    if-lez v3, :cond_7

    .line 302
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    float-to-int v7, v2

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 305
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Components/MentionsContainerView;->gridLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    if-ne v7, v8, :cond_5

    .line 306
    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    .line 307
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    .line 309
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paddedAdapter:Lorg/telegram/ui/Adapters/PaddedListAdapter;

    iget-boolean v7, v3, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingViewAttached:Z

    if-eqz v7, :cond_6

    iget-object v3, v3, Lorg/telegram/ui/Adapters/PaddedListAdapter;->paddingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    int-to-float v3, v3

    .line 310
    iget-object v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    add-float/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerPadding:F

    sub-float/2addr v3, v7

    iput v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    .line 311
    iget v7, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 312
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

    .line 313
    iget v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->containerTop:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpl-float v3, v2, v6

    if-lez v3, :cond_7

    .line 315
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    float-to-int v7, v2

    add-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 319
    :cond_7
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    if-nez v3, :cond_8

    .line 320
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    .line 321
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x1e000000

    invoke-virtual {v3, v0, v6, v6, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 323
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->color:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5

    :cond_9
    const-string v1, "chat_messagePanelBackground"

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_c

    cmpl-float v6, v2, v6

    if-lez v6, :cond_b

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->path:Landroid/graphics/Path;

    if-nez v0, :cond_a

    .line 329
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->path:Landroid/graphics/Path;

    goto :goto_6

    .line 331
    :cond_a
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 333
    :goto_6
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 337
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    if-lez v6, :cond_d

    .line 339
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 342
    :cond_c
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 345
    :cond_d
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 347
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method public getCurrentLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 2

    .line 263
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

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listView:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    return-object v0
.end method

.method public getNeededLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 267
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

    .line 409
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    return v0
.end method

.method public isReversed()Z
    .locals 2

    .line 259
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

    .line 229
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shouldLiftMentions:Z

    return-void
.end method

.method public onPanTransitionUpdate(F)V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shouldLiftMentions:Z

    if-eqz v0, :cond_0

    .line 234
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

    .line 366
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setIgnoreLayout(Z)V
    .locals 0

    .line 361
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->ignoreLayout:Z

    return-void
.end method

.method public setOverrideColor(I)V
    .locals 0

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->color:Ljava/lang/Integer;

    .line 354
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setReversed(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->adapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setIsReversed(Z)V

    return-void
.end method

.method public updateVisibility(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 380
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v1

    .line 381
    iget-boolean v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 382
    iput-boolean v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 383
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

    .line 384
    :goto_0
    invoke-virtual {v3, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 386
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 387
    iput v2, p0, Lorg/telegram/ui/Components/MentionsContainerView;->hideT:F

    .line 388
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

    .line 391
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 393
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->scrollToFirst:Z

    .line 395
    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->shown:Z

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->listViewTranslationAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_5

    .line 398
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 400
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView;->updateVisibilityRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity;->fragmentOpened:Z

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x0

    goto :goto_3

    :cond_6
    const-wide/16 v1, 0x64

    :goto_3
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    if-eqz p1, :cond_7

    .line 402
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->onOpen()V

    goto :goto_4

    .line 404
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/MentionsContainerView;->onClose()V

    :goto_4
    return-void
.end method
