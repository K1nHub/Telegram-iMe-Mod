.class public final Lcom/iMe/ui/shop/view/GridBotsPageView;
.super Landroid/widget/FrameLayout;
.source "GridBotsPageView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGridBotsPageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GridBotsPageView.kt\ncom/iMe/ui/shop/view/GridBotsPageView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n1#2:144\n1855#3:145\n1054#3:146\n1856#3:147\n1855#3:148\n1549#3:149\n1620#3,3:150\n1855#3,2:153\n1856#3:155\n*S KotlinDebug\n*F\n+ 1 GridBotsPageView.kt\ncom/iMe/ui/shop/view/GridBotsPageView\n*L\n110#1:145\n112#1:146\n110#1:147\n127#1:148\n128#1:149\n128#1:150,3\n128#1:153,2\n127#1:155\n*E\n"
.end annotation


# instance fields
.field private botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private progress:Landroid/widget/ProgressBar;

.field private recycler:Lorg/telegram/ui/Components/RecyclerListView;

.field private recyclerAdapter:Lcom/iMe/ui/shop/view/adapter/BotsCategoriesAdapter;

.field private recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private subscribeDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public static synthetic $r8$lambda$0lfcsFm8fTllVLEF9zkBzlpATRY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/view/GridBotsPageView;->subscribeToContent$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$149yVBF8nzuc2LkG3E9mJpXOshM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/view/GridBotsPageView;->subscribeToContent$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fT5bv4soD1F3TsvytOZhveN-bAA(Lcom/iMe/ui/shop/view/GridBotsPageView;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/shop/view/GridBotsPageView;->subscribeToContent$lambda$1(Lcom/iMe/ui/shop/view/GridBotsPageView;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iWxNk6OsnrKj79h0g150EVYhYec(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/view/GridBotsPageView;->subscribeToContent$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/disposables/CompositeDisposable;Landroid/content/Context;Lcom/iMe/bots/domain/model/BotLanguage;I)V
    .locals 7

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botLanguage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 33
    iput-object p3, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

    .line 37
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    .line 41
    new-instance p1, Lcom/iMe/ui/shop/view/adapter/BotsCategoriesAdapter;

    invoke-direct {p1, p4}, Lcom/iMe/ui/shop/view/adapter/BotsCategoriesAdapter;-><init>(I)V

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iput-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recyclerAdapter:Lcom/iMe/ui/shop/view/adapter/BotsCategoriesAdapter;

    .line 46
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 47
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, p4, v0, p4, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 48
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 49
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 50
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    .line 51
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 52
    new-instance p1, Lcom/iMe/ui/shop/view/GridBotsPageView$1;

    invoke-direct {p1, p2}, Lcom/iMe/ui/shop/view/GridBotsPageView$1;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 63
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 64
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p4, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p4, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recyclerAdapter:Lcom/iMe/ui/shop/view/adapter/BotsCategoriesAdapter;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance p1, Landroid/widget/ProgressBar;

    invoke-direct {p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->progress:Landroid/widget/ProgressBar;

    .line 70
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 71
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->progress:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->progress:Landroid/widget/ProgressBar;

    const/4 p2, -0x2

    const/16 p3, 0x11

    invoke-static {p2, p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {p0}, Lcom/iMe/ui/shop/view/GridBotsPageView;->subscribeToContent()V

    return-void
.end method

.method public static final synthetic access$getProgress$p(Lcom/iMe/ui/shop/view/GridBotsPageView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->progress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static final synthetic access$getRecycler$p(Lcom/iMe/ui/shop/view/GridBotsPageView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method public static final synthetic access$getRecyclerAdapter$p(Lcom/iMe/ui/shop/view/GridBotsPageView;)Lcom/iMe/ui/shop/view/adapter/BotsCategoriesAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->recyclerAdapter:Lcom/iMe/ui/shop/view/adapter/BotsCategoriesAdapter;

    return-object p0
.end method

.method private final buildShopContent(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/SmartBotCategory;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/bots/domain/model/SmartBotCategory;

    .line 111
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartBotCategory;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartBotCategory;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/iMe/ui/shop/view/GridBotsPageView;->findItemsByTags(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1054
    new-instance v3, Lcom/iMe/ui/shop/view/GridBotsPageView$buildShopContent$lambda$7$$inlined$sortedByDescending$1;

    invoke-direct {v3}, Lcom/iMe/ui/shop/view/GridBotsPageView$buildShopContent$lambda$7$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 113
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 114
    new-instance v3, Lcom/iMe/ui/shop/view/model/DisplayingBotsCategory;

    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartBotCategory;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/iMe/ui/shop/view/model/DisplayingBotsCategory;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/iMe/ui/shop/view/model/DisplayingBots;

    invoke-direct {v1, v2}, Lcom/iMe/ui/shop/view/model/DisplayingBots;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final findItemsByTags(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/bots/domain/model/ShopItem;

    .line 128
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/ShopItem;->getTags()Ljava/util/List;

    move-result-object v2

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/bots/domain/model/SmartTag;

    .line 128
    invoke-virtual {v4}, Lcom/iMe/bots/domain/model/SmartTag;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1621
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1855
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static final subscribeToContent$lambda$1(Lcom/iMe/ui/shop/view/GridBotsPageView;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bots"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categories"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/shop/view/GridBotsPageView;->buildShopContent(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final subscribeToContent$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeToContent$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeToContent$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getBotLanguage()Lcom/iMe/bots/domain/model/BotLanguage;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 140
    iget-object v0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->subscribeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final setBotLanguage(Lcom/iMe/bots/domain/model/BotLanguage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

    return-void
.end method

.method public final subscribeToContent()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->subscribeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 81
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

    iget-object v1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstance().currentLocaleInfo.langCode"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/iMe/bots/usecase/AiBotsManager;->getAllBotsObservable(Lcom/iMe/bots/domain/model/BotLanguage;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 82
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/iMe/bots/usecase/AiBotsManager;->getCategories(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 80
    new-instance v2, Lcom/iMe/ui/shop/view/GridBotsPageView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/shop/view/GridBotsPageView$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/shop/view/GridBotsPageView;)V

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 86
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 87
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$2;-><init>(Lcom/iMe/ui/shop/view/GridBotsPageView;)V

    new-instance v2, Lcom/iMe/ui/shop/view/GridBotsPageView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/iMe/ui/shop/view/GridBotsPageView$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$3;-><init>(Lcom/iMe/ui/shop/view/GridBotsPageView;)V

    new-instance v2, Lcom/iMe/ui/shop/view/GridBotsPageView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/shop/view/GridBotsPageView$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$4;->INSTANCE:Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$4;

    .line 100
    new-instance v3, Lcom/iMe/ui/shop/view/GridBotsPageView$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/iMe/ui/shop/view/GridBotsPageView$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 92
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 103
    iput-object v0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView;->subscribeDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
