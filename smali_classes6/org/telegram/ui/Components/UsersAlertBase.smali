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

.field protected emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field protected flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field protected frameLayout:Landroid/widget/FrameLayout;

.field protected isEmptyViewVisible:Z

.field protected keyActionBarUnscrolled:Ljava/lang/String;

.field protected keyInviteMembersBackground:Ljava/lang/String;

.field protected keyLastSeenText:Ljava/lang/String;

.field protected keyLastSeenTextUnscrolled:Ljava/lang/String;

.field protected keyListSelector:Ljava/lang/String;

.field protected keyListViewBackground:Ljava/lang/String;

.field protected keyNameText:Ljava/lang/String;

.field protected keyScrollUp:Ljava/lang/String;

.field protected keySearchBackground:Ljava/lang/String;

.field protected keySearchIcon:Ljava/lang/String;

.field protected keySearchIconUnscrolled:Ljava/lang/String;

.field protected keySearchPlaceholder:Ljava/lang/String;

.field protected keySearchText:Ljava/lang/String;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 341
    new-instance v0, Lorg/telegram/ui/Components/UsersAlertBase$3;

    const-string v1, "colorProgress"

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/UsersAlertBase$3;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 85
    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 58
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->rect:Landroid/graphics/RectF;

    const/4 p2, 0x1

    .line 65
    iput-boolean p2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->needSnapToTop:Z

    .line 66
    iput-boolean p2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->isEmptyViewVisible:Z

    const-string p4, "key_sheet_scrollUp"

    .line 68
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyScrollUp:Ljava/lang/String;

    const-string p4, "listSelectorSDK21"

    .line 69
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyListSelector:Ljava/lang/String;

    const-string p4, "dialogSearchBackground"

    .line 70
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchBackground:Ljava/lang/String;

    const-string p4, "windowBackgroundWhite"

    .line 71
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyInviteMembersBackground:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyListViewBackground:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyActionBarUnscrolled:Ljava/lang/String;

    const-string p4, "windowBackgroundWhiteBlackText"

    .line 74
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyNameText:Ljava/lang/String;

    const-string p4, "windowBackgroundWhiteGrayText"

    .line 75
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenText:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenTextUnscrolled:Ljava/lang/String;

    const-string p4, "dialogSearchHint"

    .line 77
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchPlaceholder:Ljava/lang/String;

    const-string p4, "dialogSearchText"

    .line 78
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchText:Ljava/lang/String;

    const-string p4, "dialogSearchIcon"

    .line 79
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIcon:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIconUnscrolled:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lorg/telegram/ui/Components/UsersAlertBase;->updateColorKeys()V

    const/16 p4, 0x4b

    .line 87
    invoke-virtual {p0, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehindAlpha(I)V

    .line 89
    iput p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase;->createContainerView(Landroid/content/Context;)Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 p4, 0x0

    .line 94
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 95
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 96
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {p3, v0, p4, v0, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 98
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    .line 100
    new-instance p3, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->searchView:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    const/16 v2, 0x33

    invoke-static {v1, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, p3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance p3, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v0, 0x6

    .line 104
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 105
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 106
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setUseHeaderOffset(Z)V

    .line 107
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyInviteMembersBackground:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchBackground:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyActionBarUnscrolled:Ljava/lang/String;

    invoke-virtual {p3, v0, v3, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance p3, Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {p3, p1, v0, p2}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p3, v0, p4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p3, p3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v3, "NoResult"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p3, p3, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    const-string v3, "SearchEmptyViewFilteredSubtitle2"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 114
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 115
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p3, p2, p4}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 116
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyNameText:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenText:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyInviteMembersBackground:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchBackground:Ljava/lang/String;

    invoke-virtual {p3, v3, v4, v5, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance p3, Lorg/telegram/ui/Components/UsersAlertBase$1;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$1;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0xd

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x30

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p3, p4, p4, p4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 142
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 143
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setHideIfEmpty(Z)V

    .line 144
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyListSelector:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 145
    new-instance p3, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, 0x1

    move-object v4, p3

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;-><init>(Landroid/content/Context;IZILandroidx/recyclerview/widget/RecyclerView;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->layoutManager:Lorg/telegram/ui/Components/FillLastLinearLayoutManager;

    .line 146
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/FillLastLinearLayoutManager;->setBind(Z)V

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 148
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 149
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 150
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/UsersAlertBase$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/UsersAlertBase$2;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;)V

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 171
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v0

    invoke-direct {p3, v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v0, 0x3a

    .line 172
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 173
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    const-string p1, "dialogShadowLine"

    .line 174
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    invoke-virtual {p1, v4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/UsersAlertBase;->setColorProgress(F)V

    .line 183
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/UsersAlertBase;)Landroid/view/ViewGroup;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/UsersAlertBase;)Landroid/graphics/RectF;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/UsersAlertBase;Ljava/lang/String;)I
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/UsersAlertBase;Ljava/lang/String;)I
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/UsersAlertBase;)F
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/telegram/ui/Components/UsersAlertBase;->getColorProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/UsersAlertBase;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/UsersAlertBase;)I
    .locals 0

    .line 45
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method private getColorProgress()F
    .locals 1

    .line 354
    iget v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->colorProgress:F

    return v0
.end method

.method private runShadowAnimation(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 428
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

    .line 429
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

    .line 431
    iget-object v2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    .line 434
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 436
    :cond_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v1, [Landroid/animation/Animator;

    .line 437
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

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/UsersAlertBase$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$4;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 457
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

    .line 194
    new-instance v0, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$ContainerView;-><init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->searchView:Lorg/telegram/ui/Components/UsersAlertBase$SearchField;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 391
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method protected isAllowSelectChildAtPosition(FF)Z
    .locals 3

    const/16 p1, 0x3a

    .line 198
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 189
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
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

    .line 358
    iput p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->colorProgress:F

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyInviteMembersBackground:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyListViewBackground:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 362
    iget v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 363
    iget v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->backgroundColor:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    .line 364
    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenTextUnscrolled:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keyLastSeenText:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v0

    .line 367
    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIconUnscrolled:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIcon:Ljava/lang/String;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3, p1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result p1

    .line 368
    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 369
    iget-object v3, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 370
    instance-of v4, v3, Lorg/telegram/ui/Cells/GroupCallTextCell;

    if-eqz v4, :cond_0

    .line 371
    check-cast v3, Lorg/telegram/ui/Cells/GroupCallTextCell;

    .line 372
    invoke-virtual {v3, v0, v0}, Lorg/telegram/ui/Cells/GroupCallTextCell;->setColors(II)V

    goto :goto_2

    .line 373
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Cells/GroupCallUserCell;

    if-eqz v4, :cond_2

    .line 374
    check-cast v3, Lorg/telegram/ui/Cells/GroupCallUserCell;

    .line 375
    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->shadow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIcon:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchIconUnscrolled:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4, p1}, Lorg/telegram/ui/Cells/GroupCallUserCell;->setGrayIconColor(Ljava/lang/String;I)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected setTranslationY(I)V
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->frameLayout:Landroid/widget/FrameLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected showItemsAnimated(I)V
    .locals 2

    .line 462
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 465
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

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-lez v2, :cond_2

    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ltz v2, :cond_3

    if-eqz v0, :cond_3

    .line 408
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_3

    .line 410
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/UsersAlertBase;->runShadowAnimation(Z)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 412
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/UsersAlertBase;->runShadowAnimation(Z)V

    move v2, v3

    .line 414
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    if-eq v0, v2, :cond_4

    .line 415
    iput v2, p0, Lorg/telegram/ui/Components/UsersAlertBase;->scrollOffsetY:I

    .line 416
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/UsersAlertBase;->setTranslationY(I)V

    :cond_4
    return-void
.end method
