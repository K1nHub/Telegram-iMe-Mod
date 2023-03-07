.class public Lorg/telegram/ui/Components/StickerMasksAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "StickerMasksAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;,
        Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;,
        Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;,
        Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;,
        Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;,
        Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;
    }
.end annotation


# instance fields
.field private bottomTabContainer:Landroid/widget/FrameLayout;

.field private contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

.field private currentAccount:I

.field private currentType:I

.field private delegate:Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;

.field private emojiButton:Landroid/widget/ImageView;

.field private emojiSmoothScrolling:Z

.field private favTabBum:I

.field private favouriteStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private lastSearchKeyboardLanguage:[Ljava/lang/String;

.field private masksButton:Landroid/widget/ImageView;

.field private recentStickers:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentTabBum:I

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private scrollOffsetY:I

.field private searchFieldHeight:I

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shadowLine:Landroid/view/View;

.field private stickerIcons:[Landroid/graphics/drawable/Drawable;

.field private stickerSets:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private stickersButton:Landroid/widget/ImageView;

.field private stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

.field private stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private stickersSearchField:Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

.field private stickersSearchGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

.field private stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private stickersTabOffset:I


# direct methods
.method public static synthetic $r8$lambda$0j1h8tSvXl_5I96vCFE5-TMzZOM(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I8RY8D5Sq7VLdQdNZiKWs-wsNog(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LvtYIN90ZpxBQ4B7fHb-1xbKmAM(Lorg/telegram/ui/Components/StickerMasksAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/StickerMasksAlert;->lambda$new$0(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OgAKJXi-Z9zGcprfD7Hvy8FnwxE(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WGeM9-Yi9wjvnQLmh89fJcfmX90(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sdq3CCBCzdrd-YVywrpTbfDi-PY(Lorg/telegram/ui/Components/StickerMasksAlert;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->lambda$new$2(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    const/4 v0, 0x1

    .line 329
    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 102
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/util/ArrayList;

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iput-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerSets:[Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/util/ArrayList;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v5

    iput-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentStickers:[Ljava/util/ArrayList;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favouriteStickers:Ljava/util/ArrayList;

    const/4 v1, -0x2

    .line 122
    iput v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentTabBum:I

    .line 123
    iput v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favTabBum:I

    .line 139
    new-instance v2, Lorg/telegram/ui/Components/StickerMasksAlert$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$1;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    const/4 v2, 0x0

    .line 330
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColorKey:Ljava/lang/String;

    const v2, -0xdadadb

    .line 331
    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColor:I

    .line 332
    iput-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightStatusBar:Z

    .line 333
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 335
    iput v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    .line 337
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v3, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 338
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v3, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 339
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v3, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 340
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v0, v4}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 341
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v0, v4, v0, v4}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 342
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v5, v4, v0, v4}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 345
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 347
    new-instance v3, Lorg/telegram/ui/Components/StickerMasksAlert$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$2;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 486
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 487
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v3, v6, v4, v6, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/16 v3, 0x40

    .line 489
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->searchFieldHeight:I

    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    .line 491
    sget v5, Lorg/telegram/messenger/R$drawable;->stickers_recent:I

    const v6, -0xb4b4b5

    const v7, -0x914513

    .line 492
    invoke-static {p1, v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    sget v5, Lorg/telegram/messenger/R$drawable;->stickers_favorites:I

    .line 493
    invoke-static {p1, v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v0

    iput-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    .line 496
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 497
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 498
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->checkFeaturedStickers()V

    .line 499
    new-instance v3, Lorg/telegram/ui/Components/StickerMasksAlert$3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$3;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 596
    new-instance v5, Lorg/telegram/ui/Components/StickerMasksAlert$4;

    const/4 v6, 0x5

    invoke-direct {v5, p0, p1, v6}, Lorg/telegram/ui/Components/StickerMasksAlert$4;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;I)V

    iput-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 616
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v5, Lorg/telegram/ui/Components/StickerMasksAlert$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$5;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 641
    new-instance v3, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v3, v5, v6}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 642
    new-instance v5, Lorg/telegram/ui/Components/StickerMasksAlert$6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$6;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V

    .line 660
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/16 v8, 0x38

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v9, 0x30

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v3, v6, v8, v5, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 661
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 662
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 663
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 664
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 665
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 666
    new-instance v3, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    .line 667
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 668
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, p3}, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 669
    new-instance v3, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 682
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 683
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, -0x1

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    new-instance v3, Lorg/telegram/ui/Components/StickerMasksAlert$7;

    invoke-direct {v3, p0, p1, p3}, Lorg/telegram/ui/Components/StickerMasksAlert$7;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 695
    new-instance p3, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    invoke-direct {p3, p0, p1, v4}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;I)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersSearchField:Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    .line 696
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->searchFieldHeight:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v10

    add-int/2addr v8, v10

    invoke-direct {v5, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget-object v3, Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;->TAB:Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setType(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$Type;)V

    .line 699
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v3

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    .line 700
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p3, v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 701
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p3, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 702
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {p3, v2}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 703
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/16 v5, 0x2a

    const/16 v8, 0x33

    invoke-static {v6, v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p3, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v3, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 730
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/StickerMasksAlert$8;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$8;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V

    invoke-virtual {p3, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 748
    new-instance p3, Lorg/telegram/ui/Components/StickerMasksAlert$9;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$9;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->bottomTabContainer:Landroid/widget/FrameLayout;

    .line 758
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->shadowLine:Landroid/view/View;

    const/high16 v3, 0x12000000

    .line 759
    invoke-virtual {p3, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 760
    iget-object p3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->bottomTabContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->shadowLine:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v8

    invoke-direct {v5, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 763
    invoke-virtual {p3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 764
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->bottomTabContainer:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v8, 0x53

    invoke-direct {v3, v6, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, p3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->bottomTabContainer:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v10

    add-int/2addr v5, v10

    invoke-direct {v3, v6, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 769
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 771
    new-instance v2, Lorg/telegram/ui/Components/StickerMasksAlert$10;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$10;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->emojiButton:Landroid/widget/ImageView;

    .line 782
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 783
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->emojiButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->smiles_tab_smiles:I

    invoke-static {p1, v3, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 784
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x1effffff

    const/16 v4, 0x15

    if-lt v2, v4, :cond_0

    .line 785
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    .line 786
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->setRippleDrawableForceSoftware(Landroid/graphics/drawable/RippleDrawable;)V

    .line 787
    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->emojiButton:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 789
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->emojiButton:Landroid/widget/ImageView;

    const/16 v8, 0x46

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {p3, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->emojiButton:Landroid/widget/ImageView;

    new-instance v10, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    new-instance v5, Lorg/telegram/ui/Components/StickerMasksAlert$11;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$11;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersButton:Landroid/widget/ImageView;

    .line 809
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 810
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersButton:Landroid/widget/ImageView;

    sget v10, Lorg/telegram/messenger/R$drawable;->smiles_tab_stickers:I

    invoke-static {p1, v10, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-lt v2, v4, :cond_1

    .line 812
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    .line 813
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->setRippleDrawableForceSoftware(Landroid/graphics/drawable/RippleDrawable;)V

    .line 814
    iget-object v10, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersButton:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 816
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersButton:Landroid/widget/ImageView;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {p3, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersButton:Landroid/widget/ImageView;

    new-instance v10, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p2, :cond_3

    .line 826
    new-instance p2, Lorg/telegram/ui/Components/StickerMasksAlert$12;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$12;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->masksButton:Landroid/widget/ImageView;

    .line 837
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 838
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->masksButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_masks_msk1:I

    invoke-static {p1, v5, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->createEmojiIconSelectorDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-lt v2, v4, :cond_2

    .line 840
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    .line 841
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->setRippleDrawableForceSoftware(Landroid/graphics/drawable/RippleDrawable;)V

    .line 842
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->masksButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 844
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->masksButton:Landroid/widget/ImageView;

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->masksButton:Landroid/widget/ImageView;

    new-instance p2, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->bottomTabContainer:Landroid/widget/FrameLayout;

    const/16 p2, 0x51

    invoke-static {v1, v9, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->checkDocuments(Z)V

    .line 857
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->reloadStickersAdapter()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->delegate:Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->searchFieldHeight:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->scrollOffsetY:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/StickerMasksAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/StickerMasksAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/Components/StickerMasksAlert;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->emojiSmoothScrolling:Z

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersSearchField:Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerSets:[Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/StickerMasksAlert;I)I
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTabOffset:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentTabBum:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favTabBum:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/util/ArrayList;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentStickers:[Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/StickerMasksAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favouriteStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/StickerMasksAlert;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/StickerMasksAlert;Ljava/lang/String;)I
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/StickerMasksAlert;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/Components/StickerMasksAlert;)[Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/StickerMasksAlert;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/StickerMasksAlert;)I
    .locals 0

    .line 73
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/StickerMasksAlert;Z)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert;->updateLayout(Z)V

    return-void
.end method

.method private checkDocuments(Z)V
    .locals 11

    .line 1251
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentStickers:[Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1252
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1253
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentStickers:[Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1254
    iget v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MediaDataController;->getRecentStickers(I)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favouriteStickers:Ljava/util/ArrayList;

    .line 1255
    iget v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1256
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1257
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v5, 0x0

    .line 1258
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentStickers:[Ljava/util/ArrayList;

    iget v7, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1259
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentStickers:[Ljava/util/ArrayList;

    iget v7, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1260
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-ne v7, v8, :cond_0

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    .line 1261
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentStickers:[Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v6

    aget-object v4, v4, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 1267
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentStickers:[Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 1268
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->updateStickerTabs()V

    .line 1270
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    if-eqz v0, :cond_5

    .line 1271
    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->notifyDataSetChanged()V

    :cond_5
    if-nez p1, :cond_6

    .line 1274
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->checkPanels()V

    :cond_6
    return-void
.end method

.method private checkPanels()V
    .locals 6

    .line 1185
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v0, :cond_0

    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1191
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1192
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->searchFieldHeight:I

    const/16 v5, 0x30

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-void

    .line 1199
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    .line 1200
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    :goto_2
    if-eq v0, v1, :cond_7

    .line 1203
    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favTabBum:I

    if-lez v1, :cond_5

    goto :goto_3

    .line 1205
    :cond_5
    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentTabBum:I

    if-lez v1, :cond_6

    goto :goto_3

    .line 1208
    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTabOffset:I

    .line 1210
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->getTabForPosition(I)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 668
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-object v1, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ContentPreviewViewer;->onTouch(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILjava/lang/Object;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 1

    .line 670
    instance-of p2, p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    if-eqz p2, :cond_0

    .line 671
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    .line 672
    check-cast p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    .line 673
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->delegate:Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;

    const/4 v0, 0x0

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-interface {p2, v0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;->onStickerSelected(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 674
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_0

    .line 675
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz p2, :cond_1

    .line 676
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    .line 677
    check-cast p1, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 678
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->delegate:Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getParentObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;->onStickerSelected(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 679
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(I)V
    .locals 3

    .line 706
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentTabBum:I

    if-ne p1, v0, :cond_1

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    const-string v0, "recent"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentTabBum:I

    if-lez v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTabOffset:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_2

    .line 709
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favTabBum:I

    if-ne p1, v0, :cond_3

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    const-string v0, "fav"

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    .line 711
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favTabBum:I

    if-lez v1, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTabOffset:I

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_2

    .line 713
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTabOffset:I

    sub-int/2addr p1, v0

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerSets:[Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    return-void

    .line 717
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerSets:[Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    .line 718
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerSets:[Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 720
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerSets:[Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->getPositionForPack(Ljava/lang/Object;)I

    move-result p1

    .line 722
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_6

    return-void

    .line 727
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->searchFieldHeight:I

    add-int/2addr v0, v1

    const/16 v1, 0x30

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->scrollEmojisToPosition(II)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 1

    .line 791
    iget p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    return-void

    .line 794
    :cond_0
    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    .line 795
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->updateType()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    .line 818
    iget p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 821
    iput p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    .line 822
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->updateType()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    .line 846
    iget p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 849
    :cond_0
    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    .line 850
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->updateType()V

    return-void
.end method

.method private reloadStickersAdapter()V
    .locals 1

    .line 1230
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1233
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->notifyDataSetChanged()V

    .line 1236
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1237
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->close()V

    .line 1239
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ContentPreviewViewer;->reset()V

    return-void
.end method

.method private scrollEmojisToPosition(II)V
    .locals 4

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 896
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-nez v0, :cond_0

    sub-int v0, p1, v1

    .line 897
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41100000    # 9.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 898
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v2, v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_1

    .line 902
    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/StickerMasksAlert$13;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/Components/StickerMasksAlert$13;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;I)V

    .line 913
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 914
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    .line 915
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :goto_1
    return-void
.end method

.method private typeIndex(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private updateLayout(Z)V
    .locals 5

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 930
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->scrollOffsetY:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 931
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 934
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 935
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 936
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v3, 0x7

    .line 937
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 938
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-lt v0, v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    const/16 v2, 0xb

    .line 941
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    add-int/2addr v0, v2

    .line 942
    iget v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->scrollOffsetY:I

    if-eq v2, v0, :cond_2

    .line 943
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->scrollOffsetY:I

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 944
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 945
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersSearchField:Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 949
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersSearchField:Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    invoke-static {v0, v2, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->access$3500(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;ZZ)V

    goto :goto_2

    .line 953
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersSearchField:Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    if-ge v0, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-static {v3, v0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;->access$3500(Lorg/telegram/ui/Components/StickerMasksAlert$SearchField;ZZ)V

    .line 956
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersSearchGridAdapter:Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;

    if-ne p1, v0, :cond_5

    .line 957
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickerMasksAlert$StickersSearchGridAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_5

    .line 958
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 959
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 960
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 961
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->searchFieldHeight:I

    sub-int/2addr v2, v3

    const/16 v3, 0x30

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    :goto_3
    if-ge v1, v0, :cond_5

    .line 963
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 968
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->checkPanels()V

    return-void
.end method

.method private updateStickerTabs()V
    .locals 7

    .line 1127
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v0, :cond_0

    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->emojiButton:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersButton:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1134
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->masksButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1135
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    if-ne v3, v1, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_4
    const/4 v0, -0x2

    .line 1139
    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentTabBum:I

    .line 1140
    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favTabBum:I

    .line 1142
    iput v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTabOffset:I

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v0

    .line 1144
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->beginUpdate(Z)V

    .line 1146
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favouriteStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1147
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTabOffset:I

    iput v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->favTabBum:I

    add-int/2addr v3, v1

    .line 1148
    iput v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTabOffset:I

    .line 1149
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->FavoriteStickers:I

    const-string v5, "FavoriteStickers"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1152
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentStickers:[Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1153
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTabOffset:I

    iput v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->recentTabBum:I

    add-int/2addr v3, v1

    .line 1154
    iput v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTabOffset:I

    .line 1155
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(ILandroid/graphics/drawable/Drawable;)Landroid/widget/FrameLayout;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->RecentStickers:I

    const-string v4, "RecentStickers"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1158
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerSets:[Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1159
    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    .line 1160
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 1161
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1162
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    if-nez v5, :cond_8

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 1165
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerSets:[Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    .line 1167
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerSets:[Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 1168
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickerSets:[Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->typeIndex(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1169
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1170
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->thumbs:Ljava/util/ArrayList;

    const/16 v6, 0x5a

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    if-nez v5, :cond_a

    move-object v5, v4

    .line 1174
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v6, v5, v4, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrStickerSet:I

    const-string v6, "AccDescrStickerSet"

    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1176
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->commitUpdate()V

    .line 1177
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    if-eqz v0, :cond_c

    .line 1179
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersTab:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1181
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->checkPanels()V

    return-void
.end method

.method private updateType()V
    .locals 3

    .line 872
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 873
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_0

    .line 875
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 877
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 880
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 883
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-eqz v2, :cond_1

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    goto :goto_1

    .line 886
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    .line 888
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->stickersLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    const/4 v0, 0x1

    .line 891
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->checkDocuments(Z)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 1280
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1281
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    if-ne p1, p2, :cond_5

    .line 1282
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->updateStickerTabs()V

    .line 1283
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->reloadStickersAdapter()V

    .line 1284
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickerMasksAlert;->checkPanels()V

    goto :goto_1

    .line 1286
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    if-ne p1, p2, :cond_2

    .line 1287
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    .line 1288
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p1, :cond_5

    .line 1289
    iget p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentType:I

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_5

    .line 1290
    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->checkDocuments(Z)V

    goto :goto_1

    .line 1292
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_5

    .line 1293
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_5

    .line 1294
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_5

    .line 1296
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1297
    instance-of p3, p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    if-nez p3, :cond_3

    instance-of p3, p2, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz p3, :cond_4

    .line 1298
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public dismissInternal()V
    .locals 2

    .line 1244
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 1245
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1246
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1247
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentDocumentsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;)V
    .locals 0

    .line 925
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert;->delegate:Lorg/telegram/ui/Components/StickerMasksAlert$StickerMasksAlertDelegate;

    return-void
.end method
