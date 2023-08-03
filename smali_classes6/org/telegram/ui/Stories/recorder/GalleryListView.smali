.class public Lorg/telegram/ui/Stories/recorder/GalleryListView;
.super Landroid/widget/FrameLayout;
.source "GalleryListView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;,
        Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;,
        Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;,
        Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;
    }
.end annotation


# static fields
.field private static final draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;


# instance fields
.field private final actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarShown:Z

.field private final actionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final adapter:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private containsDraftFolder:Z

.field private containsDrafts:Z

.field private final currentAccount:I

.field private final drafts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final dropDown:Landroid/widget/TextView;

.field private dropDownAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final dropDownDrawable:Landroid/graphics/drawable/Drawable;

.field public firstLayout:Z

.field private headerView:Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;

.field public ignoreScroll:Z

.field public final layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private onBackClickListener:Ljava/lang/Runnable;

.field private onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final onlyPhotos:Z

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field public selectedPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1Xt7-Sfkfx1i9H2Blnhxhvioz6I(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$updateAlbumsDropDown$3(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5-Og0aSo5QcpCZb6Ytcm5o8DYLc(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5kXNB-4n-P1vMcFhLJLUw-7Ydtw(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/messenger/MediaController$AlbumEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$updateAlbumsDropDown$4(Lorg/telegram/messenger/MediaController$AlbumEntry;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NbXVdCOLmEoHT4J1mmeg9i1s_QI(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NmdviOjcrk6Z-c1MyzyeuWfdM7I(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$0(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 354
    new-instance v0, Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    .line 107
    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v12, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->backgroundPaint:Landroid/graphics/Paint;

    .line 288
    new-instance v14, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x15e

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v14, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 339
    iput-boolean v13, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->firstLayout:Z

    .line 355
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    move/from16 v15, p1

    .line 108
    iput v15, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->currentAccount:I

    .line 109
    iput-object v9, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 110
    iput-boolean v11, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onlyPhotos:Z

    const v0, -0xe0e0e1

    .line 112
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x40151eb8    # 2.33f

    .line 113
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x41333333    # -0.4f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-virtual {v12, v1, v3, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 115
    new-instance v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$1;

    invoke-direct {v1, v7, v8, v9}, Lorg/telegram/ui/Stories/recorder/GalleryListView$1;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 132
    sget-object v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda3;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    .line 133
    new-instance v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    const/4 v4, 0x0

    invoke-direct {v2, v7, v4}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/ui/Stories/recorder/GalleryListView$1;)V

    iput-object v2, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->adapter:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    new-instance v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$2;

    const/4 v12, 0x3

    invoke-direct {v2, v7, v8, v12}, Lorg/telegram/ui/Stories/recorder/GalleryListView$2;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;I)V

    iput-object v2, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 145
    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 146
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setAlpha(F)V

    .line 148
    new-instance v4, Lorg/telegram/ui/Stories/recorder/GalleryListView$3;

    invoke-direct {v4, v7}, Lorg/telegram/ui/Stories/recorder/GalleryListView$3;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 154
    new-instance v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$4;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Stories/recorder/GalleryListView$4;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v6, 0x0

    .line 160
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 v5, -0x1

    const/16 v2, 0x77

    .line 161
    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 188
    new-instance v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$5;

    invoke-direct {v2, v7}, Lorg/telegram/ui/Stories/recorder/GalleryListView$5;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 196
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v4, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 197
    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 198
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 199
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/16 v0, 0x8

    .line 200
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const v0, 0x19ffffff

    .line 202
    invoke-virtual {v4, v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 203
    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    const/4 v0, -0x2

    const/16 v1, 0x37

    .line 204
    invoke-static {v5, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$6;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/recorder/GalleryListView$6;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 218
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 219
    new-instance v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$7;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, p2

    move-object/from16 v19, v4

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/GalleryListView$7;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 226
    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 227
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x28

    const/16 v28, 0x0

    const/16 v22, -0x2

    const/16 v23, -0x1

    const/16 v24, 0x33

    invoke-static/range {v22 .. v28}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    move-object/from16 v1, v19

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x2

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    const/4 v1, 0x3

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 234
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLines(I)V

    .line 235
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 236
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, -0x1

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "fonts/rmedium.ttf"

    .line 238
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_arrow_drop_down:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x4

    .line 241
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 242
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x10

    const/16 v19, 0x10

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 243
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_1

    .line 247
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 250
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateAlbumsDropDown()V

    if-eqz v10, :cond_3

    .line 251
    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v10, v1, :cond_2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 252
    :cond_2
    iput-object v10, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_2

    .line 254
    :cond_3
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 257
    :cond_4
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_2

    .line 255
    :cond_5
    :goto_1
    sget-object v1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 260
    :goto_2
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPhotoEntries(Lorg/telegram/messenger/MediaController$AlbumEntry;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    .line 261
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateContainsDrafts()V

    .line 262
    iget-object v1, v7, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    sget-object v2, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v1, v2, :cond_6

    .line 263
    sget v1, Lorg/telegram/messenger/R$string;->ChatGallery:I

    const-string v2, "ChatGallery"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 264
    :cond_6
    sget-object v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v1, v2, :cond_7

    const-string v1, "StoryDraftsAlbum"

    .line 265
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 267
    :cond_7
    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/lang/Runnable;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onBackClickListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDrafts:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;)Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->headerView:Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectAlbum(Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Landroid/widget/TextView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700()Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 1

    .line 86
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDraftFolder:Z

    return p0
.end method

.method private getPhotoEntries(Lorg/telegram/messenger/MediaController$AlbumEntry;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 273
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 275
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onlyPhotos:Z

    if-nez v0, :cond_1

    .line 276
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    return-object p1

    .line 278
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 279
    :goto_0
    iget-object v2, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 280
    iget-object v2, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 281
    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v3, :cond_2

    .line 282
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    .line 132
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x2

    if-lt p2, v0, :cond_7

    .line 163
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v1, :cond_7

    instance-of v1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    if-nez v1, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    check-cast p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    sub-int/2addr p2, v0

    .line 168
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDraftFolder:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 170
    sget-object p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectAlbum(Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V

    return-void

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 174
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDrafts:Z

    if-eqz v0, :cond_5

    if-ltz p2, :cond_4

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    iget-boolean v2, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->prepareBlurredThumb(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    invoke-interface {v0, p2, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 180
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    :cond_5
    :goto_0
    if-ltz p2, :cond_7

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    iget-boolean v2, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->prepareBlurredThumb(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_6
    invoke-interface {v0, p2, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 228
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private static synthetic lambda$updateAlbumsDropDown$3(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I
    .locals 3

    .line 367
    iget v0, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 369
    iget v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-nez v0, :cond_1

    return v2

    .line 372
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 373
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-le p1, p0, :cond_2

    return v2

    :cond_2
    if-ge p1, p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateAlbumsDropDown$4(Lorg/telegram/messenger/MediaController$AlbumEntry;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 403
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectAlbum(Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    return-void
.end method

.method private prepareBlurredThumb(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;
    .locals 1

    .line 332
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->access$500(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x40c00000    # 6.0f

    .line 334
    invoke-static {p1, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapWithScaleFactor(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private selectAlbum(Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V
    .locals 3

    .line 411
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 412
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPhotoEntries(Lorg/telegram/messenger/MediaController$AlbumEntry;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    .line 413
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateContainsDrafts()V

    .line 414
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne p1, v0, :cond_0

    .line 415
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->ChatGallery:I

    const-string v1, "ChatGallery"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 416
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne p1, v0, :cond_1

    .line 417
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    const-string v0, "StoryDraftsAlbum"

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->adapter:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/16 p1, 0x10

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 423
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p2, v1, v2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    .line 424
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 425
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    neg-int v0, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    .line 426
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_1

    .line 428
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    neg-int v1, v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_1
    return-void
.end method

.method private updateAlbumsDropDown()V
    .locals 11

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 364
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    .line 365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    .line 366
    new-instance v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sget-object v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 388
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 389
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 390
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 392
    sget-object v3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v2, v3, :cond_2

    .line 393
    new-instance v3, Lorg/telegram/ui/Stories/recorder/AlbumButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    const-string v4, "StoryDraftsAlbum"

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Stories/recorder/AlbumButton;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/lang/CharSequence;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    .line 395
    :cond_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPhotoEntries(Lorg/telegram/messenger/MediaController$AlbumEntry;)Ljava/util/ArrayList;

    move-result-object v3

    .line 396
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 399
    :cond_3
    new-instance v4, Lorg/telegram/ui/Stories/recorder/AlbumButton;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v8, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Stories/recorder/AlbumButton;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/lang/CharSequence;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v3, v4

    .line 401
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 402
    new-instance v4, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method private updateContainsDrafts()V
    .locals 4

    .line 1158
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDraftFolder:Z

    if-nez v0, :cond_1

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    sget-object v3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDrafts:Z

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1118
    sget p2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    if-ne p1, p2, :cond_5

    .line 1119
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateAlbumsDropDown()V

    .line 1120
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 1121
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_2

    .line 1122
    :cond_1
    :goto_0
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_2

    .line 1127
    :cond_2
    :goto_1
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 1128
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 1129
    iget p3, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget v1, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-ne p3, v1, :cond_3

    iget-boolean p3, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    if-ne p3, v0, :cond_3

    .line 1130
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1135
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPhotoEntries(Lorg/telegram/messenger/MediaController$AlbumEntry;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    .line 1136
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateContainsDrafts()V

    .line 1137
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->adapter:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    if-eqz p1, :cond_6

    .line 1138
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 1140
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    if-ne p1, p2, :cond_6

    .line 1141
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateDrafts()V

    :cond_6
    :goto_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 292
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->top()I

    move-result v0

    int-to-float v0, v0

    .line 293
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 294
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    const/4 v4, 0x0

    .line 295
    invoke-static {v0, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 296
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarShown:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v1, v5, :cond_2

    .line 297
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarShown:Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onFullScreen(Z)V

    .line 298
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarShown:Z

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 300
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_4

    .line 301
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    cmpg-float v1, v3, v4

    if-gtz v1, :cond_3

    const/16 v2, 0x8

    .line 303
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 307
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->headerView:Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;

    if-eqz v1, :cond_5

    sub-float/2addr v6, v3

    .line 308
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 310
    :cond_5
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    const/16 v5, 0xe

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 311
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 313
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 314
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected firstLayout()V
    .locals 0

    return-void
.end method

.method public getPadding()I
    .locals 2

    .line 1080
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSelectedAlbum()Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1102
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1103
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1104
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1109
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1110
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1111
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1113
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->cleanupQueues()V

    return-void
.end method

.method protected onFullScreen(Z)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedSectionOffsetY(I)V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_0

    const/high16 v1, 0x41900000    # 18.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41a00000    # 20.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 328
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onScroll()V
    .locals 0

    return-void
.end method

.method public setOnBackClickListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onBackClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnSelectListener(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public top()I
    .locals 5

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7fffffff

    .line 1088
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    .line 1089
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1090
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1091
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_1

    .line 1093
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1097
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1085
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPadding()I

    move-result v0

    return v0
.end method

.method public updateDrafts()V
    .locals 2

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1147
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onlyPhotos:Z

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1150
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateAlbumsDropDown()V

    .line 1151
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateContainsDrafts()V

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->adapter:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    if-eqz v0, :cond_1

    .line 1153
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
