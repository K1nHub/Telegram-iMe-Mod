.class public final Lcom/smedialink/ui/shop/view/ListBotsPageView;
.super Landroid/widget/FrameLayout;
.source "ListBotsPageView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/shop/view/ListBotsPageView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBotsPageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBotsPageView.kt\ncom/smedialink/ui/shop/view/ListBotsPageView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1#2:94\n764#3:95\n855#3,2:96\n1052#3:98\n1052#3:99\n*S KotlinDebug\n*F\n+ 1 ListBotsPageView.kt\ncom/smedialink/ui/shop/view/ListBotsPageView\n*L\n67#1:95\n67#1:96,2\n77#1:98\n78#1:99\n*E\n"
.end annotation


# instance fields
.field private botLanguage:Lcom/smedialink/bots/domain/model/BotLanguage;

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private recycler:Lorg/telegram/ui/Components/RecyclerListView;

.field private recyclerAdapter:Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

.field private recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private subscribeDisposable:Lio/reactivex/disposables/Disposable;

.field private final tab:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;


# direct methods
.method public static synthetic $r8$lambda$2wVFlF-xW8cT_Maczw4AVqZhR-Y(Lcom/smedialink/ui/shop/view/ListBotsPageView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/view/ListBotsPageView;->subscribeToContent$lambda-2(Lcom/smedialink/ui/shop/view/ListBotsPageView;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q8_ZbQc3LxqceTEXfU0uSNaWKu4(Lcom/smedialink/ui/shop/view/ListBotsPageView;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/view/ListBotsPageView;->subscribeToContent$lambda-6(Lcom/smedialink/ui/shop/view/ListBotsPageView;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rIxpLHHvm21-B27rPkmXJxNmlyQ(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/shop/view/ListBotsPageView;->subscribeToContent$lambda-7(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tLkzJGjsn6ouu1rHTrPQRaGor3w(Lcom/smedialink/ui/shop/view/ListBotsPageView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/view/ListBotsPageView;->subscribeToContent$lambda-5(Lcom/smedialink/ui/shop/view/ListBotsPageView;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;Lio/reactivex/disposables/CompositeDisposable;Lcom/smedialink/bots/domain/model/BotLanguage;Landroid/content/Context;I)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disposable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botLanguage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->tab:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    .line 25
    iput-object p2, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 26
    iput-object p3, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->botLanguage:Lcom/smedialink/bots/domain/model/BotLanguage;

    .line 31
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, p4}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    .line 35
    new-instance p1, Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

    invoke-direct {p1, p5}, Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;-><init>(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recyclerAdapter:Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

    .line 38
    iget-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 39
    iget-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 40
    iget-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    .line 41
    iget-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 42
    new-instance p1, Lcom/smedialink/ui/shop/view/ListBotsPageView$1;

    invoke-direct {p1, p4}, Lcom/smedialink/ui/shop/view/ListBotsPageView$1;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 53
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 54
    iget-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recyclerAdapter:Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    iget-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, -0x1

    const/16 p3, 0x11

    invoke-static {p2, p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p0}, Lcom/smedialink/ui/shop/view/ListBotsPageView;->subscribeToContent()V

    return-void
.end method

.method private static final subscribeToContent$lambda-2(Lcom/smedialink/ui/shop/view/ListBotsPageView;Ljava/util/List;)Ljava/util/List;
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/bots/domain/model/ShopItem;

    .line 68
    iget-object v3, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->tab:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    sget-object v4, Lcom/smedialink/ui/shop/view/ListBotsPageView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 71
    :cond_1
    sget-object v3, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->Companion:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;

    invoke-virtual {v2}, Lcom/smedialink/bots/domain/model/ShopItem;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;->isMy(Lcom/smedialink/bots/data/model/BotStatus;)Z

    move-result v2

    goto :goto_1

    .line 70
    :cond_2
    sget-object v3, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->Companion:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;

    invoke-virtual {v2}, Lcom/smedialink/bots/domain/model/ShopItem;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;->isFree(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 69
    :cond_3
    sget-object v3, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->Companion:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;

    invoke-virtual {v2}, Lcom/smedialink/bots/domain/model/ShopItem;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;->isPopular(Ljava/util/List;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static final subscribeToContent$lambda-5(Lcom/smedialink/ui/shop/view/ListBotsPageView;Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->tab:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    sget-object v0, Lcom/smedialink/ui/shop/view/ListBotsPageView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1052
    :cond_0
    new-instance p0, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$lambda-5$$inlined$sortedByDescending$1;

    invoke-direct {p0}, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$lambda-5$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 1052
    :cond_1
    new-instance p0, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$lambda-5$$inlined$sortedByDescending$2;

    invoke-direct {p0}, Lcom/smedialink/ui/shop/view/ListBotsPageView$subscribeToContent$lambda-5$$inlined$sortedByDescending$2;-><init>()V

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static final subscribeToContent$lambda-6(Lcom/smedialink/ui/shop/view/ListBotsPageView;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->recyclerAdapter:Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;->setContent(Ljava/util/List;)V

    return-void
.end method

.method private static final subscribeToContent$lambda-7(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final getBotLanguage()Lcom/smedialink/bots/domain/model/BotLanguage;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->botLanguage:Lcom/smedialink/bots/domain/model/BotLanguage;

    return-object v0
.end method

.method public final setBotLanguage(Lcom/smedialink/bots/domain/model/BotLanguage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->botLanguage:Lcom/smedialink/bots/domain/model/BotLanguage;

    return-void
.end method

.method public final subscribeToContent()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->subscribeDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 64
    :goto_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/smedialink/bots/usecase/AiBotsManager;

    iget-object v1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->botLanguage:Lcom/smedialink/bots/domain/model/BotLanguage;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstance().currentLocaleInfo.langCode"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAllBotsObservable(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 65
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/smedialink/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/shop/view/ListBotsPageView;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/smedialink/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/shop/view/ListBotsPageView;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 83
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/smedialink/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/shop/view/ListBotsPageView;)V

    sget-object v2, Lcom/smedialink/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 89
    iput-object v0, p0, Lcom/smedialink/ui/shop/view/ListBotsPageView;->subscribeDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
