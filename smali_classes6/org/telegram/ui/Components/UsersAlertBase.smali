.class public Lorg/telegram/ui/Components/UsersAlertBase;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "UsersAlertBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;,
        Lorg/telegram/ui/Components/UsersAlertBase$SearchField;
    }
.end annotation


# instance fields
.field private backgroundColor:I

.field private colorProgress:F

.field private drawTitle:Z

.field protected emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field protected flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field protected frameLayout:Landroid/widget/FrameLayout;

.field protected isEmptyViewVisible:Z

.field protected keyActionBarUnscrolled:I

.field protected keyInviteMembersBackground:I

.field protected keyLastSeenText:I

.field protected keyLastSeenTextUnscrolled:I

.field protected keyListSelector:I

.field protected keyListViewBackground:I

.field protected keyNameText:I

.field protected keyScrollUp:I

.field protected keySearchBackground:I

.field protected keySearchIcon:I

.field protected keySearchIconUnscrolled:I

.field protected keySearchPlaceholder:I

.field protected keySearchText:I

.field protected final layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

.field protected listView:Lorg/telegram/ui/Components/RecyclerListView;

.field protected listViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field protected needSnapToTop:Z

.field private rect:Landroid/graphics/RectF;

.field protected scrollOffsetY:I

.field protected searchListViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field protected searchView:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

.field protected shadow:Landroid/view/View;

.field protected shadowAnimation:Landroid/animation/AnimatorSet;

.field protected shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 338
    new-instance v0, Lorg/telegram/ui/Components/UsersAlertBase$3;

    const-string v1, "colorProgress"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/UsersAlertBase$3;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    .line 88
    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 60
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/UsersAlertBase;->rect:Landroid/graphics/RectF;

    const/4 v2, 0x1

    .line 67
    iput-boolean v2, v0, Lorg/telegram/ui/Components/UsersAlertBase;->needSnapToTop:Z

    .line 68
    iput-boolean v2, v0, Lorg/telegram/ui/Components/UsersAlertBase;->isEmptyViewVisible:Z

    .line 70
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyScrollUp:I

    .line 71
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyListSelector:I

    .line 72
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchBackground:I

    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchBackground:I

    .line 73
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyInviteMembersBackground:I

    .line 74
    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyListViewBackground:I

    .line 75
    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyActionBarUnscrolled:I

    .line 76
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyNameText:I

    .line 77
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenText:I

    .line 78
    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenTextUnscrolled:I

    .line 79
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchHint:I

    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchPlaceholder:I

    .line 80
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchText:I

    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchText:I

    .line 81
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogSearchIcon:I

    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIcon:I

    .line 82
    iput v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIconUnscrolled:I

    .line 84
    iput-boolean v2, v0, Lorg/telegram/ui/Components/UsersAlertBase;->drawTitle:Z

    .line 89
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/UsersAlertBase;->updateColorKeys()V

    const/16 v4, 0x4b

    .line 91
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehindAlpha(I)V

    move/from16 v4, p3

    .line 93
    iput v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/Components/UsersAlertBase;->createContainerView(Landroid/content/Context;)Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    .line 98
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 99
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 100
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v4, v6, v5, v6, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 102
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    .line 104
    new-instance v4, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->searchView:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    .line 105
    iget-object v6, v0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v7, -0x1

    const/16 v8, 0x33

    invoke-static {v7, v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v4, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v6, 0x6

    .line 108
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 109
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 110
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setUseHeaderOffset(Z)V

    .line 111
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    iget v6, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyInviteMembersBackground:I

    iget v9, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchBackground:I

    iget v10, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyActionBarUnscrolled:I

    invoke-virtual {v4, v6, v9, v10}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(III)V

    .line 113
    new-instance v4, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v4, v1, v6, v2}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 114
    iget-object v6, v0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v4, v6, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v9, "NoResult"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    const-string v9, "SearchEmptyViewFilteredSubtitle2"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 118
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 119
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v4, v2, v5}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 120
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget v9, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyNameText:I

    iget v10, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenText:I

    iget v11, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyInviteMembersBackground:I

    iget v12, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchBackground:I

    invoke-virtual {v4, v9, v10, v11, v12}, Lorg/telegram/ui/Components/StickerEmptyView;->setColors(IIII)V

    .line 121
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v9, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x33

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v4, Lorg/telegram/ui/Components/UsersAlertBase$1;

    invoke-direct {v4, v0, v1, v3}, Lorg/telegram/ui/Components/UsersAlertBase$1;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v9, 0x2

    .line 140
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 141
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v9, 0xd

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 142
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v9, 0x30

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v4, v5, v5, v5, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 143
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 144
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setHideIfEmpty(Z)V

    .line 145
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v9, v0, Lorg/telegram/ui/Components/UsersAlertBase;->keyListSelector:I

    invoke-static {v9, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 146
    new-instance v3, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/UsersAlertBase;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    .line 147
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setBind(Z)V

    .line 148
    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 149
    iget-object v3, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 150
    iget-object v3, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 151
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/16 v11, 0x33

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v3, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/UsersAlertBase$2;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/UsersAlertBase$2;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 172
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v4

    invoke-direct {v3, v7, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v4, 0x3a

    .line 173
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 174
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    .line 175
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    iget-object v1, v0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 177
    iget-object v1, v0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v9, v0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    invoke-virtual {v1, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v7, v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/UsersAlertBase;->setColorProgress(F)V

    .line 184
    iget-object v1, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 185
    iget-object v1, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/UsersAlertBase;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/UsersAlertBase;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->drawTitle:Z

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/UsersAlertBase;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/UsersAlertBase;)Landroid/graphics/RectF;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/UsersAlertBase;I)I
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/UsersAlertBase;I)I
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/UsersAlertBase;)F
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/telegram/ui/Components/UsersAlertBase;->getColorProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/UsersAlertBase;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method private getColorProgress()F
    .locals 1

    .line 351
    iget v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->colorProgress:F

    return v0
.end method

.method private runShadowAnimation(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 426
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 428
    iget-object v2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 430
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    .line 431
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 433
    :cond_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v1, [Landroid/animation/Animator;

    .line 434
    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz p1, :cond_5

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    aput v6, v1, v0

    invoke-static {v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/UsersAlertBase$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$4;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createContainerView(Landroid/content/Context;)Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;
    .locals 1

    .line 195
    new-instance v0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->searchView:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 388
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method protected measurePadding(I)I
    .locals 1

    .line 657
    div-int/lit8 v0, p1, 0x5

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr p1, v0

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    sput p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    return-void
.end method

.method protected onSearchViewTouched(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    return-void
.end method

.method protected search(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected setColorProgress(F)V
    .locals 5

    .line 355
    iput p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->colorProgress:F

    .line 356
    iget v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyInviteMembersBackground:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyListViewBackground:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 359
    iget v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 360
    iget v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 361
    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 363
    iget v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenTextUnscrolled:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v0

    .line 364
    iget v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIconUnscrolled:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v1, v3, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    .line 365
    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 366
    iget-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 367
    instance-of v4, v3, Lorg/telegram/ui/Cells/GroupCallTextCell;

    if-eqz v4, :cond_0

    .line 368
    check-cast v3, Lorg/telegram/ui/Cells/GroupCallTextCell;

    .line 369
    invoke-virtual {v3, v0, v0}, Lorg/telegram/ui/Cells/GroupCallTextCell;->setColors(II)V

    goto :goto_2

    .line 370
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/GroupCallUserCell;

    if-eqz v4, :cond_2

    .line 371
    check-cast v3, Lorg/telegram/ui/Cells/GroupCallUserCell;

    .line 372
    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIcon:I

    goto :goto_1

    :cond_1
    iget v4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIconUnscrolled:I

    :goto_1
    invoke-virtual {v3, v4, p1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setGrayIconColor(II)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 376
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 377
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 9

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 663
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    .line 664
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/16 v3, 0x24

    const/16 v4, 0x33

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->searchView:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x1e

    .line 675
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x5e

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 678
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setTranslationY(I)V
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 420
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected showItemsAnimated(I)V
    .locals 2

    .line 459
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/UsersAlertBase$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$5;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected updateColorKeys()V
    .locals 0

    return-void
.end method

.method protected updateLayout()V
    .locals 4

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-ltz v2, :cond_3

    if-eqz v0, :cond_3

    .line 405
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_3

    .line 407
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/UsersAlertBase;->runShadowAnimation(Z)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 409
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/UsersAlertBase;->runShadowAnimation(Z)V

    move v2, v3

    .line 411
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    if-eq v0, v2, :cond_4

    .line 412
    iput v2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    .line 413
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/UsersAlertBase;->setTranslationY(I)V

    :cond_4
    return-void
.end method
