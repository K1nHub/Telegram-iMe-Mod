.class public final Lcom/iMe/ui/shop/view/ListBotsPageView;
.super Landroid/widget/FrameLayout;
.source "ListBotsPageView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBotsPageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBotsPageView.kt\ncom/iMe/ui/shop/view/ListBotsPageView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"
.end annotation


# instance fields
.field private botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private recycler:Lorg/telegram/ui/Components/RecyclerListView;

.field private recyclerAdapter:Lcom/iMe/ui/shop/view/adapter/BotsAdapter;

.field private recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private subscribeDisposable:Lio/reactivex/disposables/Disposable;

.field private final tab:Lcom/iMe/ui/shop/NeurobotsStoreActivity$StoreTab;


# direct methods
.method public static synthetic $r8$lambda$F4M5ZRyYhHV-ayTP2bXP8LAaczQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/view/ListBotsPageView;->subscribeToContent$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PyZhbmZq_Gh05RUqW3_kW-BkRc8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/view/ListBotsPageView;->subscribeToContent$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y0wyVrYxJkmSm4M53n8SoD3e4Wk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/view/ListBotsPageView;->subscribeToContent$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wBqPjGFjXQy-WS-3rbPeHrXqqeM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/shop/view/ListBotsPageView;->subscribeToContent$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/ui/shop/NeurobotsStoreActivity$StoreTab;Lio/reactivex/disposables/CompositeDisposable;Lcom/iMe/bots/domain/model/BotLanguage;Landroid/content/Context;I)V
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
    iput-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->tab:Lcom/iMe/ui/shop/NeurobotsStoreActivity$StoreTab;

    .line 25
    iput-object p2, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 26
    iput-object p3, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

    .line 31
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, p4}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    .line 35
    new-instance p1, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;

    invoke-direct {p1, p5}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;-><init>(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iput-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recyclerAdapter:Lcom/iMe/ui/shop/view/adapter/BotsAdapter;

    .line 38
    iget-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 39
    iget-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 40
    iget-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    .line 41
    iget-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 42
    new-instance p1, Lcom/iMe/ui/shop/view/ListBotsPageView$1;

    invoke-direct {p1, p4}, Lcom/iMe/ui/shop/view/ListBotsPageView$1;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 53
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 54
    iget-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recyclerLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recyclerAdapter:Lcom/iMe/ui/shop/view/adapter/BotsAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    iget-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recycler:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, -0x1

    const/16 p3, 0x11

    invoke-static {p2, p2, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p0}, Lcom/iMe/ui/shop/view/ListBotsPageView;->subscribeToContent()V

    return-void
.end method

.method public static final synthetic access$getRecyclerAdapter$p(Lcom/iMe/ui/shop/view/ListBotsPageView;)Lcom/iMe/ui/shop/view/adapter/BotsAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->recyclerAdapter:Lcom/iMe/ui/shop/view/adapter/BotsAdapter;

    return-object p0
.end method

.method public static final synthetic access$getTab$p(Lcom/iMe/ui/shop/view/ListBotsPageView;)Lcom/iMe/ui/shop/NeurobotsStoreActivity$StoreTab;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->tab:Lcom/iMe/ui/shop/NeurobotsStoreActivity$StoreTab;

    return-object p0
.end method

.method private static final subscribeToContent$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final subscribeToContent$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final subscribeToContent$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeToContent$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getBotLanguage()Lcom/iMe/bots/domain/model/BotLanguage;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

    return-object v0
.end method

.method public final setBotLanguage(Lcom/iMe/bots/domain/model/BotLanguage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

    return-void
.end method

.method public final subscribeToContent()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->subscribeDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 64
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

    iget-object v1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->botLanguage:Lcom/iMe/bots/domain/model/BotLanguage;

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

    .line 65
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$1;-><init>(Lcom/iMe/ui/shop/view/ListBotsPageView;)V

    new-instance v2, Lcom/iMe/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$2;-><init>(Lcom/iMe/ui/shop/view/ListBotsPageView;)V

    new-instance v2, Lcom/iMe/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/iMe/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 83
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$3;-><init>(Lcom/iMe/ui/shop/view/ListBotsPageView;)V

    new-instance v2, Lcom/iMe/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$4;->INSTANCE:Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$4;

    .line 86
    new-instance v3, Lcom/iMe/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/iMe/ui/shop/view/ListBotsPageView$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 84
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 89
    iput-object v0, p0, Lcom/iMe/ui/shop/view/ListBotsPageView;->subscribeDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
