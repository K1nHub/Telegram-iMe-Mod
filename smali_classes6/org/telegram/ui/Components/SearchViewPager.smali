.class public Lorg/telegram/ui/Components/SearchViewPager;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SearchViewPager.java"

# interfaces
.implements Lorg/telegram/ui/FilteredSearchView$UiCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;,
        Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private attached:Z

.field chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

.field currentAccount:I

.field private currentSearchFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field private downloadsContainer:Lorg/telegram/ui/Components/SearchDownloadsContainer;

.field public emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

.field private final folderId:I

.field private forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private forwardToCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field fragmentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private isActionModeShowed:Z

.field private itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private keyboardSize:I

.field private lastSearchScrolledToTop:Z

.field lastSearchString:Ljava/lang/String;

.field private noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

.field parent:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public searchContainer:Landroid/widget/FrameLayout;

.field private searchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public searchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private selectedFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/ui/FilteredSearchView$MessageHashId;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private showOnlyDialogsAdapter:Z

.field private speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field protected final viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;


# direct methods
.method public static synthetic $r8$lambda$5ZrWEXqLIshfE2VghHDinaJPQuA(Lorg/telegram/ui/Components/SearchViewPager;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$onActionBarItemClick$3(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DeFoUtRLWUR_dgQ8Try-1utANoo(Lorg/telegram/ui/Components/SearchViewPager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$forwardCloud$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$E7vJbavNxtDcFIOwF9QQabe35yU(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$onActionBarItemClick$5(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Teq9Cw6wecezBDTMuUI31GWNDlI(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$onActionBarItemClick$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ckAlxuwz7Y4km8J-1Fky-2JJAL8(Lorg/telegram/ui/Components/SearchViewPager;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$onActionBarItemClick$4()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e2PCTu_DTJMC3vrX8A_5NzCgTsE(Lorg/telegram/ui/Components/SearchViewPager;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$getThemeDescriptions$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$pgYust4_8iB-RVSJU6rE_cAeHGc(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->lambda$showActionMode$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IIILorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    .line 168
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    .line 146
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    .line 169
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    iput v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    .line 170
    iput v12, v8, Lorg/telegram/ui/Components/SearchViewPager;->folderId:I

    .line 171
    iput-object v10, v8, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 172
    iput-object v13, v8, Lorg/telegram/ui/Components/SearchViewPager;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    .line 174
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v1, 0x96

    .line 175
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 176
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 177
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 178
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 179
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setTranslationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 182
    new-instance v14, Lorg/telegram/ui/Components/SearchViewPager$1;

    iget-object v5, v8, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->getAllowGlobalSearch()Z

    move-result v6

    iget v7, v8, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/SearchViewPager$1;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZI)V

    iput-object v14, v8, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-ne v11, v2, :cond_1

    .line 197
    iget v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-virtual {v10, v2, v11, v12, v1}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray(IIIZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    .line 199
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 200
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setFilterDialogIds(Ljava/util/ArrayList;)V

    .line 204
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->fragmentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 206
    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$2;

    invoke-direct {v2, p0, v9}, Lorg/telegram/ui/Components/SearchViewPager$2;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;)V

    iput-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 233
    iget-object v3, v8, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 234
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 235
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, v8, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 236
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 237
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    .line 238
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 239
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v9, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 240
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 241
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/SearchViewPager$3;

    invoke-direct {v3, p0, v10}, Lorg/telegram/ui/Components/SearchViewPager$3;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 265
    new-instance v2, Lorg/telegram/ui/FilteredSearchView;

    iget-object v3, v8, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v2, v3}, Lorg/telegram/ui/FilteredSearchView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    .line 266
    invoke-virtual {v2, p0}, Lorg/telegram/ui/FilteredSearchView;->setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V

    .line 267
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 268
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v2, v13}, Lorg/telegram/ui/FilteredSearchView;->setChatPreviewDelegate(Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V

    .line 270
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    .line 272
    new-instance v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v2, v9}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 274
    new-instance v4, Lorg/telegram/ui/Components/SearchViewPager$4;

    invoke-direct {v4, p0, v9, v2, v1}, Lorg/telegram/ui/Components/SearchViewPager$4;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Landroid/content/Context;Landroid/view/View;I)V

    iput-object v4, v8, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 284
    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v6, "NoResult"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v4, v8, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v4, v8, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 287
    iget-object v3, v8, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v3, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 288
    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 290
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 291
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 292
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 293
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 294
    iget-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SearchViewPager$5;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 302
    new-instance v0, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v2, v8, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 304
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    iput-object v0, v8, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->setAdapter(Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SearchViewPager;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchScrolledToTop:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/SearchViewPager;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchScrolledToTop:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SearchViewPager;)Landroidx/recyclerview/widget/DefaultItemAnimator;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SearchViewPager;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->searchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/FilteredSearchView;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/SearchViewPager;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->showOnlyDialogsAdapter:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/SearchViewPager;)Lorg/telegram/ui/Components/SearchDownloadsContainer;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Components/SearchViewPager;->downloadsContainer:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/SearchViewPager;Lorg/telegram/ui/Components/SearchDownloadsContainer;)Lorg/telegram/ui/Components/SearchDownloadsContainer;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->downloadsContainer:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/SearchViewPager;Landroid/view/View;ILjava/lang/String;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SearchViewPager;->search(Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method private forwardCloud()V
    .locals 4

    .line 89
    new-instance v0, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    .line 93
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isCloudAlbumsEnabled:Z

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v2, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v2, v3, v0}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 96
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;->didSelectCloudDialog(J)V

    :goto_0
    return-void
.end method

.method private isSpeedItemVisible()Z
    .locals 6

    .line 517
    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 521
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const-wide/32 v4, 0x9600000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic lambda$forwardCloud$0(J)V
    .locals 12

    .line 90
    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->prepareForwardingMessages()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide v3, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    const/4 p1, 0x0

    .line 91
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$6()V
    .locals 2

    .line 787
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    if-eqz v0, :cond_0

    const-string v1, "actionBarActionModeDefaultIcon"

    .line 788
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onActionBarItemClick$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 548
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onActionBarItemClick$3(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 550
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 551
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/DownloadController;->deleteRecentFiles(Ljava/util/ArrayList;)V

    .line 552
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchViewPager;->hideActionMode()V

    return-void
.end method

.method private synthetic lambda$onActionBarItemClick$4()Ljava/util/ArrayList;
    .locals 1

    .line 577
    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->prepareForwardingMessages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onActionBarItemClick$5(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 579
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 580
    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 581
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 582
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    .line 583
    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    .line 587
    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v15, 0x1

    if-gt v4, v15, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    if-nez p3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->isCustomMultiForward()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    .line 600
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 601
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "scrollToTopOnResume"

    .line 602
    invoke-virtual {v4, v5, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 603
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 604
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v2

    const-string v3, "enc_id"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 606
    :cond_2
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "user_id"

    .line 607
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    neg-long v2, v2

    const-string v5, "chat_id"

    .line 609
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 611
    :goto_1
    iget v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_4

    return v15

    .line 615
    :cond_4
    :goto_2
    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v4}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 616
    invoke-virtual {v1, v2, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 617
    invoke-virtual {v2, v15, v14}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    goto :goto_5

    .line 590
    :cond_5
    :goto_3
    invoke-virtual {v1, v14}, Lorg/telegram/ui/DialogsActivity;->getSelectedMessages(Ljava/util/ArrayList;)V

    move v13, v3

    .line 591
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_7

    .line 592
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v5, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p3, :cond_6

    .line 594
    iget v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v16

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget-boolean v3, v1, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v4, v1, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v18, v5

    move/from16 v27, v3

    move/from16 v28, v4

    invoke-virtual/range {v16 .. v31}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    .line 596
    :cond_6
    iget v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v9, v1, Lorg/telegram/ui/DialogsActivity;->notify:Z

    iget v10, v1, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->getForwardingParams()Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v12

    const/16 v16, 0x1

    move-object v4, v14

    move/from16 v17, v13

    move/from16 v13, v16

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/ForwardingMessagesParams;Z)I

    add-int/lit8 v13, v17, 0x1

    goto :goto_4

    .line 598
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    :goto_5
    return v15
.end method

.method private static synthetic lambda$showActionMode$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private prepareForwardingMessages()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    .line 105
    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private search(Landroid/view/View;ILjava/lang/String;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v10, p3

    .line 341
    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    if-nez v2, :cond_1

    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    const/4 v3, 0x0

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    .line 346
    :goto_2
    iget-object v12, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 347
    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 348
    iget v12, v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v4, 0x4

    if-ne v12, v4, :cond_3

    .line 349
    iget-object v4, v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->chat:Lorg/telegram/tgnet/TLObject;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_2

    .line 350
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_3

    .line 351
    :cond_2
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_5

    .line 352
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v8, v4

    goto :goto_3

    :cond_3
    const/4 v4, 0x6

    if-ne v12, v4, :cond_4

    .line 355
    iget-object v4, v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->dateData:Lorg/telegram/ui/Adapters/FiltersView$DateData;

    iget-wide v13, v4, Lorg/telegram/ui/Adapters/FiltersView$DateData;->minDate:J

    .line 356
    iget-wide v4, v4, Lorg/telegram/ui/Adapters/FiltersView$DateData;->maxDate:J

    move-wide v15, v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x7

    if-ne v12, v4, :cond_5

    const/4 v11, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 362
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    if-ne v1, v3, :cond_10

    const-wide/16 v3, 0x0

    cmp-long v1, v8, v3

    const-wide/16 v2, 0x96

    const/16 v12, 0x8

    const/4 v4, 0x0

    const-wide/16 v18, 0x0

    if-nez v1, :cond_7

    cmp-long v1, v13, v18

    if-nez v1, :cond_7

    cmp-long v1, v15, v18

    if-eqz v1, :cond_8

    :cond_7
    cmp-long v1, v6, v18

    if-eqz v1, :cond_d

    :cond_8
    const/4 v1, 0x0

    .line 364
    iput-boolean v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchScrolledToTop:Z

    .line 365
    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v5, v10, v11}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogs(Ljava/lang/String;I)V

    .line 366
    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    .line 367
    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 368
    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v5, v4, v1}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    if-eqz p4, :cond_9

    .line 370
    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isSearching()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 371
    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isSearching()Z

    move-result v6

    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_4

    .line 373
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasRecentSearch()Z

    move-result v1

    if-nez v1, :cond_a

    .line 374
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v5, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isSearching()Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_a
    :goto_4
    if-eqz p4, :cond_b

    .line 378
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 380
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_c

    .line 381
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/Components/SearchViewPager$6;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/SearchViewPager$6;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 386
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 389
    :cond_c
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 391
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 392
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    iget-object v6, v0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    .line 393
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p4, :cond_e

    .line 395
    iget-object v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 396
    iget-object v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    move/from16 v18, p4

    goto :goto_7

    .line 398
    :cond_e
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_f

    .line 399
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 400
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_6

    :cond_f
    move/from16 v5, p4

    .line 403
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    move/from16 v18, v5

    .line 405
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    const/16 v19, 0x0

    move-wide v2, v8

    move-wide v4, v13

    move-wide v6, v15

    move-object/from16 v8, v19

    move v9, v11

    move-object/from16 v10, p3

    move/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/ui/FilteredSearchView;->search(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;ZLjava/lang/String;Z)V

    .line 406
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 408
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    .line 409
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    iget v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/FilteredSearchView;->setKeyboardHeight(IZ)V

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 410
    instance-of v4, v1, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v4, :cond_12

    .line 411
    check-cast v1, Lorg/telegram/ui/FilteredSearchView;

    const-wide/16 v17, 0x0

    cmp-long v4, v6, v17

    if-eqz v4, :cond_11

    goto :goto_9

    :cond_11
    move v5, v3

    :goto_9
    invoke-virtual {v1, v5}, Lorg/telegram/ui/FilteredSearchView;->setUseFromUserAsAvatar(Z)V

    .line 412
    iget v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/FilteredSearchView;->setKeyboardHeight(IZ)V

    .line 413
    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    iget-object v3, v3, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    .line 414
    sget-object v3, Lorg/telegram/ui/Adapters/FiltersView;->filters:[Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v2, v2, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    aget-object v12, v3, v2

    move-wide v2, v8

    move-wide v4, v13

    move-wide v6, v15

    move-object v8, v12

    move v9, v11

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/ui/FilteredSearchView;->search(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;ZLjava/lang/String;Z)V

    goto :goto_a

    .line 415
    :cond_12
    instance-of v2, v1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    if-eqz v2, :cond_13

    .line 416
    check-cast v1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    iget v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->setKeyboardHeight(IZ)V

    .line 417
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->search(Ljava/lang/String;)V

    :cond_13
    :goto_a
    return-void
.end method

.method private showActionMode(Z)V
    .locals 11

    .line 449
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->isActionModeShowed:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 455
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const-string v2, "search_view_pager"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeIsExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 456
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 458
    new-instance v2, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v1, 0x12

    .line 459
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 460
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 461
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const-string v2, "actionBarActionModeDefaultIcon"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 462
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x48

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget-object v3, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/16 v3, 0xcb

    sget v4, Lorg/telegram/messenger/R$drawable;->avd_speed:I

    const/16 v5, 0x36

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sget v7, Lorg/telegram/messenger/R$string;->AccDescrPremiumSpeed:I

    const-string v8, "AccDescrPremiumSpeed"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v4, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 466
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 467
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/16 v2, 0xc8

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_message:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v6, Lorg/telegram/messenger/R$string;->AccDescrGoToMessage:I

    const-string v7, "AccDescrGoToMessage"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 468
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget v2, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_forward_cloud:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->forwardToCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 469
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/16 v2, 0xc9

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v6, Lorg/telegram/messenger/R$string;->Forward:I

    const-string v7, "Forward"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 470
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/16 v2, 0xca

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v5, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v6, "Delete"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 472
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 473
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 474
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    const/16 v1, 0x38

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    add-int/lit8 v1, v1, 0x48

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 475
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v1, :cond_6

    .line 478
    new-instance v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    .line 479
    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    .line 480
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 482
    :cond_6
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->isActionModeShowed:Z

    if-eqz p1, :cond_8

    .line 484
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 486
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->forwardToCloudItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->isSpeedItemVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->forwardItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_5

    .line 493
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 494
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    move p1, v2

    .line 495
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_b

    .line 496
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v1, :cond_9

    .line 497
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v1}, Lorg/telegram/ui/FilteredSearchView;->update()V

    .line 499
    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    if-eqz v1, :cond_a

    .line 500
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 503
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    if-eqz p1, :cond_c

    .line 504
    invoke-virtual {p1}, Lorg/telegram/ui/FilteredSearchView;->update()V

    .line 506
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_4
    if-ge v2, p1, :cond_e

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 509
    instance-of v1, v0, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v1, :cond_d

    .line 510
    check-cast v0, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v0}, Lorg/telegram/ui/FilteredSearchView;->update()V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    return-void
.end method


# virtual methods
.method public actionModeShowing()Z
    .locals 1

    .line 652
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->isActionModeShowed:Z

    return v0
.end method

.method public cancelEnterAnimation()V
    .locals 1

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->cancel()V

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method public getCurrentSearchFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;",
            ">;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDownloadsContainer()Lorg/telegram/ui/Components/SearchDownloadsContainer;
    .locals 1

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->downloadsContainer:Lorg/telegram/ui/Components/SearchDownloadsContainer;

    return-object v0
.end method

.method public getFolderId()I
    .locals 1

    .line 647
    iget v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->folderId:I

    return v0
.end method

.method public getPositionForType(I)I
    .locals 3

    const/4 v0, 0x0

    .line 955
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 956
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    invoke-static {v1}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->access$400(Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;

    iget v1, v1, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter$Item;->filterIndex:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSpeedItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method public getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
    .locals 1

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    return-object v0
.end method

.method public getThemeDescriptions(Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 760
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 761
    iget-object v4, v0, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 762
    instance-of v4, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-nez v4, :cond_0

    instance-of v4, v6, Lorg/telegram/ui/Cells/DialogCell;

    if-nez v4, :cond_0

    instance-of v4, v6, Lorg/telegram/ui/Cells/HashtagSearchCell;

    if-eqz v4, :cond_1

    .line 763
    :cond_0
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "windowBackgroundWhite"

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 767
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 768
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v4, :cond_3

    .line 769
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v4}, Lorg/telegram/ui/FilteredSearchView;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 773
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_6

    .line 775
    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 776
    instance-of v5, v4, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v5, :cond_5

    .line 777
    check-cast v4, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v4}, Lorg/telegram/ui/FilteredSearchView;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 780
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    if-eqz v2, :cond_7

    .line 781
    invoke-virtual {v2}, Lorg/telegram/ui/FilteredSearchView;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 784
    :cond_7
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v4, v3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "windowBackgroundWhiteBlackText"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v12, v3, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "windowBackgroundWhiteGrayText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    const-string v3, "actionBarActionModeDefaultIcon"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public goToMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    .line 626
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 627
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 628
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    const-string v2, "enc_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 630
    :cond_0
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "user_id"

    .line 631
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 633
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 634
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v4, :cond_2

    const-string v4, "migrated_to"

    .line 635
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 636
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v1, v1

    :cond_2
    neg-long v1, v1

    const-string v3, "chat_id"

    .line 638
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 640
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    const/4 p1, 0x0

    .line 642
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    return-void
.end method

.method public hideActionMode()V
    .locals 1

    const/4 v0, 0x0

    .line 656
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    return-void
.end method

.method protected includeDownloads()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected invalidateBlur()V
    .locals 1

    .line 941
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->fragmentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    return-void
.end method

.method public isCrossAccountsForward()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getSearchAdapterHelper()Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->crossAccountsForward:Z

    return v0
.end method

.method public isSelected(Lorg/telegram/ui/FilteredSearchView$MessageHashId;)Z
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public messagesDeleted(JLjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 874
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 875
    instance-of v4, v3, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v4, :cond_0

    .line 876
    check-cast v3, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v3, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView;->messagesDeleted(JLjava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 880
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 881
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v2, :cond_2

    .line 882
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v2, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView;->messagesDeleted(JLjava/util/ArrayList;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 885
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView;->messagesDeleted(JLjava/util/ArrayList;)V

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 888
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v3, v1

    .line 889
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 890
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    .line 891
    iget-object v5, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_6

    .line 893
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_4

    neg-long v6, v6

    long-to-int v6, v6

    int-to-long v7, v6

    .line 894
    iget v9, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentAccount:I

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/ChatObject;->isChannel(JI)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    int-to-long v6, v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_6

    move v6, v1

    .line 896
    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 897
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 899
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_a

    .line 906
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v1

    :goto_5
    if-ge p2, p1, :cond_8

    .line 907
    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 909
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 910
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_a

    .line 911
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-ne p2, p3, :cond_9

    goto :goto_6

    :cond_9
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public onActionBarItemClick(I)V
    .locals 5

    .line 530
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne p1, v0, :cond_0

    .line 531
    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->forwardCloud()V

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0xca

    if-ne p1, v0, :cond_3

    .line 534
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 537
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 538
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "RemoveDocumentsTitle"

    invoke-static {v4, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 541
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 542
    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    .line 543
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "RemoveDocumentsMessage"

    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    .line 544
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->RemoveDocumentsAlertMessage:I

    const-string v4, "RemoveDocumentsAlertMessage"

    .line 545
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 547
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 548
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 549
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SearchViewPager;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 554
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    .line 555
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_8

    const-string v0, "dialogTextRed"

    .line 557
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v0, 0xcb

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    .line 561
    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->isSpeedItemVisible()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 565
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    :cond_5
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_7

    .line 567
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-eq p1, v1, :cond_6

    return-void

    .line 570
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 571
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->goToMessage(Lorg/telegram/messenger/MessageObject;)V

    goto :goto_1

    :cond_7
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_8

    .line 573
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "onlySelect"

    .line 574
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x3

    const-string v1, "dialogsType"

    .line 575
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 577
    new-instance p1, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->setCustomForwardDelegate(Lorg/telegram/ui/DialogsActivity$CustomForwardDelegate;)V

    .line 578
    new-instance p1, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SearchViewPager$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SearchViewPager;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 621
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->parent:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_8
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 929
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 930
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->attached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 935
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 936
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->attached:Z

    return-void
.end method

.method protected onItemSelected(Landroid/view/View;Landroid/view/View;II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_1

    .line 737
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 738
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    invoke-virtual {p1, p3, v2}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    .line 739
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    goto :goto_1

    .line 741
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    .line 742
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    goto :goto_1

    .line 744
    :cond_1
    instance-of p3, p1, Lorg/telegram/ui/FilteredSearchView;

    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    .line 746
    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 749
    :goto_0
    check-cast p1, Lorg/telegram/ui/FilteredSearchView;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    .line 751
    :cond_3
    :goto_1
    instance-of p1, p2, Lorg/telegram/ui/FilteredSearchView;

    if-eqz p1, :cond_4

    .line 752
    check-cast p2, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    goto :goto_2

    .line 754
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    .line 755
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/FilteredSearchView;->setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V

    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 4

    .line 316
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 318
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->attached:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 321
    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 324
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->lastSearchString:Ljava/lang/String;

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/telegram/ui/Components/SearchViewPager;->search(Landroid/view/View;ILjava/lang/String;Z)V

    return-void
.end method

.method public removeSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 833
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SearchViewPager;->setPosition(I)V

    .line 834
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 835
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->searchLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 837
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public runResultsEnterAnimation()V
    .locals 1

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    return-void
.end method

.method public setFilteredSearchViewDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->filteredSearchViewDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    return-void
.end method

.method public setKeyboardHeight(I)V
    .locals 4

    .line 853
    iput p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->keyboardSize:I

    .line 854
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 855
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 856
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v2, :cond_1

    .line 857
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/FilteredSearchView;->setKeyboardHeight(IZ)V

    goto :goto_1

    .line 858
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->searchContainer:Landroid/widget/FrameLayout;

    if-ne v2, v3, :cond_2

    .line 859
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    .line 860
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/FilteredSearchView;->setKeyboardHeight(IZ)V

    goto :goto_1

    .line 861
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    if-eqz v2, :cond_3

    .line 862
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/SearchDownloadsContainer;

    invoke-virtual {v2, p1, v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->setKeyboardHeight(IZ)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setPosition(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    .line 844
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 847
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTabWithId(IF)V

    .line 849
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public showActionMode()V
    .locals 1

    const/4 v0, 0x1

    .line 731
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    return-void
.end method

.method public showDownloads()V
    .locals 1

    const/4 v0, 0x2

    .line 951
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SearchViewPager;->setPosition(I)V

    return-void
.end method

.method public showOnlyDialogsAdapter(Z)V
    .locals 0

    .line 868
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->showOnlyDialogsAdapter:Z

    return-void
.end method

.method public toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V
    .locals 9

    .line 660
    new-instance v0, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;-><init>(IJ)V

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 664
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    return-void

    .line 667
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 670
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/SearchViewPager;->showActionMode(Z)V

    goto/16 :goto_6

    .line 672
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedMessagesCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v3, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 673
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->gotoItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v3, 0x8

    if-eqz p1, :cond_4

    .line 674
    iget-object v4, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ne v4, v2, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 676
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_8

    .line 677
    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchViewPager;->isSpeedItemVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    move v4, v1

    goto :goto_2

    :cond_5
    move v4, v3

    .line 679
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_8

    .line 680
    iget-object v5, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 682
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_8

    .line 683
    iget-object v5, p0, Lorg/telegram/ui/Components/SearchViewPager;->speedItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 684
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    const-string v7, "actionBarActionModeDefaultIcon"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz p1, :cond_6

    .line 686
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_3

    :cond_6
    const/16 p1, 0x17

    if-lt v4, p1, :cond_7

    .line 689
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    goto :goto_3

    .line 691
    :cond_7
    invoke-virtual {v5, v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setVisible(ZZ)Z

    .line 697
    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_c

    .line 699
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 700
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    .line 701
    iget-object v5, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->isDownloadingFile:Z

    if-nez v4, :cond_9

    move p1, v1

    goto :goto_4

    :cond_a
    move p1, v2

    .line 706
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/SearchViewPager;->deleteItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move v1, v3

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 709
    :cond_c
    :goto_6
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz p1, :cond_d

    .line 710
    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto :goto_7

    .line 711
    :cond_d
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz p1, :cond_e

    .line 712
    check-cast p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p3, p1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_7

    .line 713
    :cond_e
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz p1, :cond_f

    .line 714
    check-cast p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_7

    .line 715
    :cond_f
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p1, :cond_10

    .line 716
    check-cast p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_7

    .line 717
    :cond_10
    instance-of p1, p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz p1, :cond_11

    .line 718
    check-cast p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setChecked(ZZ)V

    goto :goto_7

    .line 719
    :cond_11
    instance-of p1, p2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz p1, :cond_12

    .line 720
    check-cast p2, Lorg/telegram/ui/Cells/DialogCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchViewPager;->selectedFiles:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    :cond_12
    :goto_7
    return-void
.end method

.method public updateColors()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 794
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 795
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v2, :cond_1

    .line 796
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/FilteredSearchView;

    iget-object v2, v2, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 797
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 799
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 800
    instance-of v6, v5, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v6, :cond_0

    .line 801
    check-cast v5, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_5

    .line 808
    iget-object v3, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewsByType:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 809
    instance-of v4, v3, Lorg/telegram/ui/FilteredSearchView;

    if-eqz v4, :cond_4

    .line 810
    check-cast v3, Lorg/telegram/ui/FilteredSearchView;

    iget-object v3, v3, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 811
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v0

    :goto_3
    if-ge v5, v4, :cond_4

    .line 813
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 814
    instance-of v7, v6, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v7, :cond_3

    .line 815
    check-cast v6, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 820
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchViewPager;->noMediaFiltersSearchView:Lorg/telegram/ui/FilteredSearchView;

    if-eqz v1, :cond_7

    .line 821
    iget-object v1, v1, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 822
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_7

    .line 824
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 825
    instance-of v5, v4, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v5, :cond_6

    .line 826
    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public updateTabs()V
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchViewPager;->viewPagerAdapter:Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchViewPager$ViewPagerAdapter;->updateItems()V

    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->fillTabs(Z)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->finishAddingTabs()V

    :cond_0
    return-void
.end method
