.class public Lorg/telegram/ui/Components/Premium/StoriesPageView;
.super Lorg/telegram/ui/Components/Premium/BaseListPageView;
.source "StoriesPageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/StoriesPageView$ItemCell;,
        Lorg/telegram/ui/Components/Premium/StoriesPageView$HeaderView;,
        Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

.field bitmap:Landroid/graphics/Bitmap;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$avbhSCJdQIYRDL8c89f6s5BgAR4(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/StoriesPageView;->lambda$new$0(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 22

    move-object/from16 v7, p0

    .line 52
    invoke-direct/range {p0 .. p2}, Lorg/telegram/ui/Components/Premium/BaseListPageView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    .line 53
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v9, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_order:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesPriority:I

    const-string v1, "PremiumStoriesPriority"

    .line 55
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesPriorityDescription:I

    const-string v1, "PremiumStoriesPriorityDescription"

    .line 56
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    const/16 v6, 0x14

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v9, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_stealth:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesStealth:I

    const-string v1, "PremiumStoriesStealth"

    .line 60
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesStealthDescription:I

    const-string v1, "PremiumStoriesStealthDescription"

    .line 61
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v9, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_views:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesViews:I

    const-string v1, "PremiumStoriesViews"

    .line 65
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesViewsDescription:I

    const-string v1, "PremiumStoriesViewsDescription"

    .line 66
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    .line 64
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v9, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_timer:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesExpiration:I

    const-string v1, "PremiumStoriesExpiration"

    .line 70
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesExpirationDescription:I

    const-string v1, "PremiumStoriesExpirationDescription"

    .line 71
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v9, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_save:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesSaveToGallery:I

    const-string v1, "PremiumStoriesSaveToGallery"

    .line 75
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesSaveToGalleryDescription:I

    const-string v1, "PremiumStoriesSaveToGalleryDescription"

    .line 76
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    .line 74
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v9, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_caption:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesCaption:I

    const-string v1, "PremiumStoriesCaption"

    .line 80
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesCaptionDescription:I

    const-string v1, "PremiumStoriesCaptionDescription"

    .line 81
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x15

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    .line 79
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v9, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_link:I

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesFormatting:I

    const-string v1, "PremiumStoriesFormatting"

    .line 85
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lorg/telegram/messenger/R$string;->PremiumStoriesFormattingDescription:I

    const-string v1, "PremiumStoriesFormattingDescription"

    .line 86
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x13

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;IILjava/lang/String;Ljava/lang/String;I)V

    .line 84
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 91
    new-instance v1, Lorg/telegram/ui/Components/Premium/StoriesPageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/StoriesPageView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MessagesController;)V

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v7, v2, v3}, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;ILorg/telegram/ui/Components/Premium/StoriesPageView$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;

    const/4 v4, 0x2

    invoke-direct {v1, v7, v4, v3}, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;ILorg/telegram/ui/Components/Premium/StoriesPageView$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/StoriesPageView;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/ui/Components/Premium/StoriesPageView;->bitmap:Landroid/graphics/Bitmap;

    .line 101
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/StoriesPageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, v7, Lorg/telegram/ui/Components/Premium/StoriesPageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v5, 0x4

    new-array v5, v5, [I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    .line 104
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    aput v6, v5, v2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient2:I

    .line 105
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    aput v2, v5, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient3:I

    .line 106
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    aput v2, v5, v4

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient4:I

    .line 107
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x3

    aput v2, v5, v3

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v14, v0

    move/from16 v17, v1

    move-object/from16 v19, v5

    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 103
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 109
    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/StoriesPageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v11, v0

    iget-object v0, v7, Lorg/telegram/ui/Components/Premium/StoriesPageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v12, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;)I
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    iget p1, p1, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->order:I

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 93
    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->premiumFeaturesTypesToPosition:Landroid/util/SparseIntArray;

    iget p2, p2, Lorg/telegram/ui/Components/Premium/StoriesPageView$Item;->order:I

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public createAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 114
    new-instance v0, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/StoriesPageView$1;-><init>(Lorg/telegram/ui/Components/Premium/StoriesPageView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StoriesPageView;->adapter:Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;

    return-object v0
.end method
