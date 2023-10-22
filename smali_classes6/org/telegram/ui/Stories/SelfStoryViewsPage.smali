.class public Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.super Landroid/widget/FrameLayout;
.source "SelfStoryViewsPage.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$RecyclerListViewInner;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;,
        Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;
    }
.end annotation


# instance fields
.field private TOP_PADDING:I

.field private checkAutoscroll:Z

.field currentAccount:I

.field currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

.field defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

.field private dialogId:J

.field headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

.field private isAttachedToWindow:Z

.field isSearchDebounce:Z

.field public layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

.field listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

.field private measuerdHeight:I

.field onSharedStateChanged:Lcom/google/android/exoplayer2/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsPage;",
            ">;"
        }
    .end annotation
.end field

.field private popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

.field recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private final scroller:Lorg/telegram/ui/RecyclerListViewScroller;

.field searchField:Lorg/telegram/ui/Components/SearchField;

.field shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final shadowView:Landroid/view/View;

.field private final shadowView2:Landroid/view/View;

.field final sharedFilterState:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

.field private showContactsFilter:Z

.field private showReactionsSort:Z

.field private showSearch:Z

.field final state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

.field storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

.field storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field private final titleView:Landroid/widget/TextView;

.field private final topViewsContainer:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$fXPp9e819bWYczhHWudt87tdTMA(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->lambda$new$0(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;Lcom/google/android/exoplayer2/util/Consumer;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Stories/StoryViewer;",
            "Landroid/content/Context;",
            "Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;",
            "Lcom/google/android/exoplayer2/util/Consumer<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsPage;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 164
    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x60

    .line 91
    iput v2, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    .line 127
    new-instance v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;-><init>()V

    iput-object v2, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    move-object/from16 v2, p3

    .line 165
    iput-object v2, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->sharedFilterState:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    move-object/from16 v2, p4

    .line 167
    iput-object v2, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->onSharedStateChanged:Lcom/google/android/exoplayer2/util/Consumer;

    .line 168
    iget-object v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object v2, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 169
    iput-object v0, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 172
    iget v2, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentAccount:I

    iput v2, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    .line 174
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    .line 175
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v4, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    const/high16 v4, 0x41a00000    # 20.0f

    .line 176
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "fonts/rmedium.ttf"

    .line 177
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v4, 0x15

    .line 178
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/4 v7, 0x6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/16 v8, 0x8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v2, v5, v7, v4, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 180
    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Landroid/content/Context;)V

    iput-object v4, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    .line 182
    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;

    iget-object v5, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v4, v6, v1, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    .line 192
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 193
    new-instance v4, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v7, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v4, v7, v3}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v4, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 194
    iget-object v4, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v7, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-direct {v7, v1, v5, v4}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;ILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v7, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 195
    iget-object v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 196
    iget-object v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    iput-object v4, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 197
    new-instance v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v4, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v7, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-direct {v1, v4, v7}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 198
    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;

    invoke-direct {v4, v6}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V

    .line 205
    iget-object v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 206
    new-instance v1, Lorg/telegram/ui/RecyclerListViewScroller;

    iget-object v4, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, v4}, Lorg/telegram/ui/RecyclerListViewScroller;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    .line 207
    iget-object v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$3;

    invoke-direct {v4, v6}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$3;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 228
    iget-object v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$$ExternalSyntheticLambda0;

    invoke-direct {v4, v6, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 237
    iget-object v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;

    invoke-direct {v4, v6, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$4;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 361
    iget-object v0, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 363
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    .line 364
    new-instance v0, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowView:Landroid/view/View;

    .line 365
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v9, 0x2

    new-array v9, v9, [I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v11, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    aput v11, v9, v5

    aput v5, v9, v3

    invoke-direct {v1, v4, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    add-int/lit8 v15, v1, -0x8

    const/4 v11, -0x1

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    new-instance v0, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowView2:Landroid/view/View;

    .line 369
    iget-object v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v10, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 370
    iget v1, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    add-int/lit8 v12, v1, -0x11

    const/4 v8, -0x1

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v0, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 373
    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 374
    new-instance v8, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/high16 v4, 0x41500000    # 13.0f

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$5;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Landroid/content/Context;ZFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v8, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    .line 401
    sget v0, Lorg/telegram/messenger/R$string;->Search:I

    const-string v1, "Search"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/SearchField;->setHint(Ljava/lang/String;)V

    .line 402
    iget-object v0, v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/16 v10, 0x33

    const/16 v12, 0x24

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->measuerdHeight:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Stories/SelfStoryViewsPage;I)I
    .locals 0

    .line 85
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->measuerdHeight:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showPremiumAlert()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)Lorg/telegram/ui/Components/CustomPopupMenu;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Components/CustomPopupMenu;)Lorg/telegram/ui/Components/CustomPopupMenu;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->updateViewState(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkLoadMore()V

    return-void
.end method

.method static synthetic access$302(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkAutoscroll:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)Lorg/telegram/ui/RecyclerListViewScroller;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/TLRPC$TL_storyView;)Z
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isStoryShownToUser(Lorg/telegram/tgnet/TLRPC$TL_storyView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->reload()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    return p0
.end method

.method private checkLoadMore()V
    .locals 2

    .line 481
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    if-le v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    :cond_0
    return-void
.end method

.method private isStoryShownToUser(Lorg/telegram/tgnet/TLRPC$TL_storyView;)Z
    .locals 4

    .line 139
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController;->isBlocked(Lorg/telegram/tgnet/TLRPC$TL_storyView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 143
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_1

    return v1

    .line 147
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    if-eqz v0, :cond_4

    .line 150
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    if-eqz v1, :cond_3

    .line 151
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    if-nez v0, :cond_2

    .line 152
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(ILjava/util/ArrayList;)V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 154
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    return p1

    .line 155
    :cond_3
    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->privacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->containsUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;I)V
    .locals 0

    if-ltz p3, :cond_1

    .line 229
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/TLRPC$TL_storyView;

    if-eqz p2, :cond_1

    .line 234
    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$TL_storyView;->user_id:J

    invoke-static {p2, p3}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static preload(IJLorg/telegram/tgnet/TLRPC$StoryItem;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    .line 589
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    .line 590
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    :goto_0
    if-eqz v0, :cond_2

    .line 591
    iget v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    if-eq v2, v1, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    .line 593
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->release()V

    .line 595
    :cond_3
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    const/4 v8, 0x1

    move-object v3, v0

    move v4, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;-><init>(IJLorg/telegram/tgnet/TLRPC$StoryItem;Z)V

    .line 596
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    .line 597
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    iget p1, p3, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private reload()V
    .locals 4

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->removeListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 1395
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-nez v0, :cond_1

    return-void

    .line 1399
    :cond_1
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->addListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    iget-boolean v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reloadIfNeed(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;ZZ)V

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 1402
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->getTopOffset()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private showPremiumAlert()V
    .locals 4

    .line 937
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryViewer;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 938
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private updateViewState(Z)V
    .locals 3

    .line 1406
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->setState(ZZ)V

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->lastSortType:Z

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->sortByReactions:Z

    if-eq v1, v2, :cond_1

    .line 1408
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->lastSortType:Z

    .line 1409
    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->replacableDrawable:Lorg/telegram/ui/Components/ReplaceableIconDrawable;

    if-eqz v2, :cond_0

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_views_reactions3:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$drawable;->menu_views_recent3:I

    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ReplaceableIconDrawable;->setIcon(IZ)V

    :cond_1
    return-void
.end method

.method private updateViewsVisibility()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 494
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 495
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    .line 496
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 498
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    const/16 v9, 0x2e

    const/16 v10, 0x8

    if-eqz v2, :cond_18

    .line 500
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    const/16 v12, 0xa

    const/16 v13, 0xf

    const/16 v14, 0x14

    const/4 v15, 0x1

    if-eqz v3, :cond_4

    .line 501
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    if-lt v4, v13, :cond_0

    move v5, v15

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iput-boolean v5, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 502
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryViews;->reactions_count:I

    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :cond_1
    move v5, v12

    :goto_1
    if-lt v3, v5, :cond_2

    move v3, v15

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    if-lt v4, v14, :cond_3

    .line 503
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->contacts:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->selected_contacts:Z

    if-nez v3, :cond_3

    move v3, v15

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    .line 505
    :cond_4
    iget v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iput-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    .line 506
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    if-nez v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    :goto_4
    if-eqz v3, :cond_7

    .line 507
    iget v5, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    if-eq v5, v4, :cond_6

    goto :goto_5

    .line 516
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    invoke-virtual {v3, v4, v5, v6}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reloadIfNeed(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;ZZ)V

    goto :goto_6

    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 509
    invoke-virtual {v3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->release()V

    .line 511
    :cond_8
    new-instance v8, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    iget-wide v5, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->dialogId:J

    const/16 v16, 0x1

    move-object v3, v8

    move-object v7, v2

    move-object v11, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;-><init>(IJLorg/telegram/tgnet/TLRPC$StoryItem;Z)V

    iput-object v11, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    .line 512
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    iget-boolean v5, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    invoke-virtual {v11, v3, v4, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->reloadIfNeed(Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;ZZ)V

    .line 513
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loadNext()V

    .line 514
    iget v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Stories/StoriesController;->selfViewsModel:Landroid/util/SparseArray;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->id:I

    iget-object v5, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 518
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v3, :cond_9

    .line 519
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->removeListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 521
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iput-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v3, :cond_a

    .line 522
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isAttachedToWindow:Z

    if-eqz v4, :cond_a

    .line 523
    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->addListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 525
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    const-string v4, "Viewers"

    if-eqz v3, :cond_b

    iget v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v5, :cond_d

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-nez v5, :cond_d

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 526
    :cond_c
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 527
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 528
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    .line 529
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->Viewers:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 531
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 532
    iput v9, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    goto/16 :goto_f

    .line 533
    :cond_d
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    if-eqz v3, :cond_17

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    if-nez v3, :cond_e

    goto/16 :goto_e

    .line 542
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 543
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->showReactionOnly:Z

    if-eqz v5, :cond_f

    .line 544
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StoryViews;->reactions_count:I

    new-array v4, v15, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Likes"

    invoke-static {v5, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 546
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 547
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    goto/16 :goto_c

    .line 549
    :cond_f
    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v14, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    if-ge v3, v5, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean v5, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v5, :cond_10

    iget-boolean v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-nez v3, :cond_10

    .line 550
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 551
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 552
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    goto :goto_b

    .line 555
    :cond_10
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->views:Lorg/telegram/tgnet/TLRPC$StoryViews;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$StoryViews;->views_count:I

    if-lt v5, v13, :cond_11

    move v6, v15

    goto :goto_7

    :cond_11
    move v6, v1

    :goto_7
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 556
    iget v3, v3, Lorg/telegram/tgnet/TLRPC$StoryViews;->reactions_count:I

    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v6, :cond_12

    const/4 v11, 0x5

    goto :goto_8

    :cond_12
    move v11, v12

    :goto_8
    if-lt v3, v11, :cond_13

    move v3, v15

    goto :goto_9

    :cond_13
    move v3, v1

    :goto_9
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    if-lt v5, v14, :cond_14

    .line 557
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->contacts:Z

    if-nez v3, :cond_14

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->close_friends:Z

    if-nez v3, :cond_14

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StoryItem;->selected_contacts:Z

    if-nez v2, :cond_14

    goto :goto_a

    :cond_14
    move v15, v1

    :goto_a
    iput-boolean v15, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    .line 559
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->Viewers:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    if-eqz v3, :cond_15

    move v3, v1

    goto :goto_d

    :cond_15
    move v3, v10

    :goto_d
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 562
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    if-eqz v2, :cond_16

    const/16 v9, 0x60

    :cond_16
    iput v9, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    goto :goto_f

    .line 534
    :cond_17
    :goto_e
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showSearch:Z

    .line 535
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    .line 536
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    .line 537
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->Viewers:I

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 539
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 540
    iput v9, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    goto :goto_f

    .line 567
    :cond_18
    iput v9, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    .line 568
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->UploadingStory:I

    const-string v4, "UploadingStory"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->searchField:Lorg/telegram/ui/Components/SearchField;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 570
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 572
    :goto_f
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->access$700(Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showReactionsSort:Z

    if-eqz v3, :cond_19

    move v3, v1

    goto :goto_10

    :cond_19
    move v3, v10

    :goto_10
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 573
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->allViewersView:Landroid/widget/TextView;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    if-eqz v3, :cond_1a

    move v3, v1

    goto :goto_11

    :cond_1a
    move v3, v10

    :goto_11
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->headerView:Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$HeaderView;->contactsViewersView:Landroid/widget/TextView;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    if-eqz v3, :cond_1b

    move v3, v1

    goto :goto_12

    :cond_1b
    move v3, v10

    :goto_12
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->showContactsFilter:Z

    if-nez v2, :cond_1c

    .line 576
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13

    .line 578
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    sub-int/2addr v2, v10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 582
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowView2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    add-int/lit8 v2, v2, -0x11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 653
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    .line 654
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz p1, :cond_5

    .line 655
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v0, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$PeerStories;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 657
    :goto_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p3, p2, :cond_5

    .line 658
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 659
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$StoryItem;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    const/4 p3, 0x0

    iput-object p3, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    .line 661
    iput-object p2, p1, Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 662
    iget-wide p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->dialogId:J

    invoke-virtual {p0, p2, p3, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->setStoryItem(JLorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;)V

    goto :goto_4

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 668
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    if-ne p1, p2, :cond_5

    .line 669
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge p3, p1, :cond_5

    .line 670
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 671
    instance-of p2, p1, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    if-eqz p2, :cond_4

    .line 672
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-ltz p2, :cond_4

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_3

    .line 676
    :cond_2
    check-cast p1, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/TLRPC$TL_storyView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isStoryShownToUser(Lorg/telegram/tgnet/TLRPC$TL_storyView;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/high16 p2, 0x3f000000    # 0.5f

    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    :cond_4
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v0

    move v3, v1

    .line 412
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 413
    iget-object v5, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 414
    iget-object v6, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v6

    if-lt v6, v4, :cond_0

    if-ne v4, v0, :cond_1

    :cond_0
    move-object v2, v5

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-nez v4, :cond_3

    .line 422
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    goto :goto_1

    :cond_3
    if-lez v4, :cond_4

    move v2, v1

    goto :goto_1

    .line 426
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 428
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    .line 429
    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 430
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->onTopOffsetChanged(I)V

    .line 432
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v6, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v5, v2, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 433
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkAutoscroll:Z

    if-eqz v2, :cond_7

    .line 435
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkAutoscroll:Z

    .line 436
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/RecyclerListViewScroller;->smoothScrollBy(I)V

    goto :goto_2

    .line 440
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/RecyclerListViewScroller;->smoothScrollBy(I)V

    .line 445
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p2, v0, :cond_0

    .line 471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 472
    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->TOP_PADDING:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 473
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x1

    return p1

    .line 477
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getTopOffset()F
    .locals 1

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 603
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 604
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isAttachedToWindow:Z

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->addListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 609
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 610
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 611
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 612
    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$6;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .line 703
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    return v1

    .line 707
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return v1

    :cond_1
    return v2
.end method

.method public onDataRecieved(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;)V
    .locals 1

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->getItemCount()I

    move-result p1

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    if-nez v0, :cond_0

    .line 636
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->updateViewsVisibility()V

    .line 638
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->listAdapter:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->updateRows()V

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    .line 640
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->checkLoadMore()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 622
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 623
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isAttachedToWindow:Z

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->removeListener(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    .line 627
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 628
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesBlocklistUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 629
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 457
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyboardShown()V
    .locals 5

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->emptyMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->scroller:Lorg/telegram/ui/RecyclerListViewScroller;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    const-wide/16 v2, 0xfa

    sget-object v4, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/RecyclerListViewScroller;->smoothScrollBy(IJLandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method public onTopOffsetChanged(I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->topViewsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 465
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setListBottomPadding(F)V
    .locals 2

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStoryItem(JLorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;)V
    .locals 0

    .line 487
    iput-wide p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->dialogId:J

    .line 488
    iput-object p3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->storyItem:Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;

    .line 489
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->updateViewsVisibility()V

    const/4 p1, 0x0

    .line 490
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->updateViewState(Z)V

    return-void
.end method

.method protected updateSharedState()V
    .locals 0

    return-void
.end method
