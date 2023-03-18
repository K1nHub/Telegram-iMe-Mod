.class public final Lcom/smedialink/ui/shop/NeurobotsStoreActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "NeurobotsStoreActivity.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;,
        Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;,
        Lcom/smedialink/ui/shop/NeurobotsStoreActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeurobotsStoreActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeurobotsStoreActivity.kt\ncom/smedialink/ui/shop/NeurobotsStoreActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,405:1\n13644#2,3:406\n13644#2,3:410\n1#3:409\n766#4:413\n857#4,2:414\n*S KotlinDebug\n*F\n+ 1 NeurobotsStoreActivity.kt\ncom/smedialink/ui/shop/NeurobotsStoreActivity\n*L\n112#1:406,3\n302#1:410,3\n322#1:413\n322#1:414,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;


# instance fields
.field private baseViewsContainer:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private changeCountryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private me:Lorg/telegram/tgnet/TLRPC$User;

.field private nothingFoundPlaceholder:Landroid/widget/TextView;

.field private pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private searchDisposable:Lio/reactivex/disposables/Disposable;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private searchMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchResultsAdapter:Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

.field private searchResultsList:Lorg/telegram/ui/Components/RecyclerListView;

.field private final searchSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final swipeBackEnabled:Z

.field private tabLayout:Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

.field private final tabViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final userId:J

.field private viewPager:Lcom/smedialink/ui/shop/view/custom/NonSwipeableViewPager;


# direct methods
.method public static synthetic $r8$lambda$-g3yBb_B4LSBa2J2BPNL4KTrENc()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->updateBotStatus$lambda$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$0OF1PJDFbTRCWFNmdVTitU_no18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->listenForSearchResults$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1TDAIJ9eVSHPpECKZxMJ_0e6yxM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->purchaseItem$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BImFEnfIyUnKjVvQ7JzRyUQO390(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->listenForSearchResults$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gdga3icoiYjXbII5uzAId0c4rbY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->listenForSearchResults$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KF3skAjkxjH7MTMtlTWQDZGmpro(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->purchaseItem$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N3m0qPyzosUcjnwGTJnm_B5BtB0(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->listenForSearchResults$lambda$8(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QyT0BuMsyCaIo-5EKaWikLAfQ9A(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->updateBotStatus$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->Companion:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 97
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 98
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->me:Lorg/telegram/tgnet/TLRPC$User;

    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabViews:Ljava/util/Map;

    .line 102
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 103
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchSubject:Lio/reactivex/subjects/PublishSubject;

    .line 105
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->userId:J

    return-void
.end method

.method public static final synthetic access$getActionBar$p$s-914277367(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method public static final synthetic access$getBaseViewsContainer$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->baseViewsContainer:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

.method public static final synthetic access$getChangeCountryItem$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->changeCountryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method public static final synthetic access$getNothingFoundPlaceholder$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->nothingFoundPlaceholder:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getRootContainer$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method public static final synthetic access$getSearchDisposable$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method public static final synthetic access$getSearchItem$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method public static final synthetic access$getSearchMenuItem$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method public static final synthetic access$getSearchResultsAdapter$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchResultsAdapter:Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

    return-object p0
.end method

.method public static final synthetic access$getSearchResultsList$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchResultsList:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method public static final synthetic access$getSearchSubject$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchSubject:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getTabLayout$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabLayout:Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

    return-object p0
.end method

.method public static final synthetic access$getTabViews$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Ljava/util/Map;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabViews:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getUserId$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->userId:J

    return-wide v0
.end method

.method public static final synthetic access$listenForSearchResults(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->listenForSearchResults()V

    return-void
.end method

.method private final buildNewTabsAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 381
    new-instance v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$buildNewTabsAdapter$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$buildNewTabsAdapter$1;-><init>(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)V

    return-object v0
.end method

.method private final initiateBotDownloading(Lcom/smedialink/bots/domain/model/ShopItem;)V
    .locals 6

    .line 358
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/smedialink/bots/usecase/AiBotsManager;

    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getBotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getDownloadLink()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->userId:J

    invoke-virtual/range {v0 .. v5}, Lcom/smedialink/bots/usecase/AiBotsManager;->startBotDownloading(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private final listenForSearchResults()V
    .locals 6

    .line 317
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 319
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/smedialink/bots/usecase/AiBotsManager;

    sget-object v1, Lcom/smedialink/bots/domain/model/BotLanguage;->Companion:Lcom/smedialink/bots/domain/model/BotLanguage$Companion;

    sget-object v2, Lcom/smedialink/bots/data/repository/CountriesRepository;->Companion:Lcom/smedialink/bots/data/repository/CountriesRepository$Companion;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "parentActivity"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/smedialink/bots/data/repository/CountriesRepository$Companion;->getInstance(Landroid/content/Context;)Lcom/smedialink/bots/data/repository/CountriesRepository;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->me:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const-string v4, "me.phone"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance().currentLocaleInfo.langCode"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/smedialink/bots/data/repository/CountriesRepository;->getCurrentBotLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/bots/domain/model/BotLanguage$Companion;->fromValue(Ljava/lang/String;)Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/bots/usecase/AiBotsManager;->getAllBotsObservable(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda1;

    .line 318
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 324
    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2;->INSTANCE:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$2;

    new-instance v2, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 325
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 326
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$3;-><init>(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)V

    new-instance v2, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$4;->INSTANCE:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$listenForSearchResults$4;

    .line 348
    new-instance v3, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 327
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 353
    iput-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static final listenForSearchResults$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final listenForSearchResults$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final listenForSearchResults$lambda$8(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const-string v0, "items"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/bots/domain/model/ShopItem;

    .line 322
    invoke-virtual {v2}, Lcom/smedialink/bots/domain/model/ShopItem;->getSearchField()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, p1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static final listenForSearchResults$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final purchaseItem(Ljava/lang/String;)V
    .locals 3

    .line 370
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->purchaseHelper:Lcom/smedialink/ui/shop/PurchaseHelper;

    .line 371
    invoke-virtual {v0, p1}, Lcom/smedialink/ui/shop/PurchaseHelper;->purchase(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 372
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 373
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 374
    new-instance v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$purchaseItem$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$purchaseItem$1;-><init>(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)V

    new-instance v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$purchaseItem$2;->INSTANCE:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$purchaseItem$2;

    .line 376
    new-instance v2, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 374
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 377
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final purchaseItem$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final purchaseItem$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final updateBotStatus(Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)V
    .locals 2

    .line 362
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/smedialink/bots/usecase/AiBotsManager;

    .line 363
    invoke-virtual {v0, p1, p2}, Lcom/smedialink/bots/usecase/AiBotsManager;->updateBotStatus(Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)Lio/reactivex/Completable;

    move-result-object p1

    .line 364
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object p2, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda0;

    .line 365
    sget-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$updateBotStatus$2;->INSTANCE:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$updateBotStatus$2;

    new-instance v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 366
    iget-object p2, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final updateBotStatus$lambda$13()V
    .locals 0

    return-void
.end method

.method private static final updateBotStatus$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "context"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object v1, Lcom/smedialink/bots/domain/model/BotLanguage;->Companion:Lcom/smedialink/bots/domain/model/BotLanguage$Companion;

    sget-object v2, Lcom/smedialink/bots/data/repository/CountriesRepository;->Companion:Lcom/smedialink/bots/data/repository/CountriesRepository$Companion;

    invoke-virtual {v2, v7}, Lcom/smedialink/bots/data/repository/CountriesRepository$Companion;->getInstance(Landroid/content/Context;)Lcom/smedialink/bots/data/repository/CountriesRepository;

    move-result-object v2

    iget-object v3, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->me:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const-string v4, "me.phone"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance().currentLocaleInfo.langCode"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/smedialink/bots/data/repository/CountriesRepository;->getCurrentBotLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/bots/domain/model/BotLanguage$Companion;->fromValue(Ljava/lang/String;)Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v8

    .line 112
    invoke-static {}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->values()[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    move-result-object v9

    .line 13645
    array-length v10, v9

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_1

    aget-object v2, v9, v12

    add-int/lit8 v13, v1, 0x1

    .line 113
    sget-object v3, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->ALL:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 114
    iget-object v2, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabViews:Ljava/util/Map;

    new-instance v3, Lcom/smedialink/ui/shop/view/GridBotsPageView;

    iget-object v4, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v3, v4, v7, v8, v5}, Lcom/smedialink/ui/shop/view/GridBotsPageView;-><init>(Lio/reactivex/disposables/CompositeDisposable;Landroid/content/Context;Lcom/smedialink/bots/domain/model/BotLanguage;I)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 116
    iget-object v15, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabViews:Ljava/util/Map;

    new-instance v6, Lcom/smedialink/ui/shop/view/ListBotsPageView;

    iget-object v3, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    move-object v1, v6

    move-object v4, v8

    move/from16 v16, v5

    move-object/from16 v5, p1

    move-object v11, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/shop/view/ListBotsPageView;-><init>(Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;Lio/reactivex/disposables/CompositeDisposable;Lcom/smedialink/bots/domain/model/BotLanguage;Landroid/content/Context;I)V

    invoke-interface {v15, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v12, v12, 0x1

    move v1, v13

    goto :goto_0

    .line 120
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 121
    new-instance v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {v1, v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->baseViewsContainer:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 122
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const-string v2, "rootContainer"

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    iget-object v4, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->baseViewsContainer:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v5, "baseViewsContainer"

    if-nez v4, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_3
    const/16 v6, 0x30

    const/4 v8, -0x1

    invoke-static {v8, v8, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v1, Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

    invoke-direct {v1, v7}, Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabLayout:Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

    .line 125
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, "chats_actionBackground"

    const/16 v9, 0x15

    const-string v10, "tabLayout"

    if-lt v4, v9, :cond_6

    const/high16 v4, 0x40c00000    # 6.0f

    .line 126
    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->setElevation(F)V

    .line 127
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabLayout:Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

    if-nez v1, :cond_4

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_4
    const-string v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 128
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabLayout:Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

    if-nez v1, :cond_5

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_5
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 130
    :cond_6
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabLayout:Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

    if-nez v1, :cond_7

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 131
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabLayout:Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

    if-nez v1, :cond_8

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_8
    const-string v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    .line 132
    new-instance v1, Lcom/smedialink/ui/shop/view/custom/NonSwipeableViewPager;

    const/4 v4, 0x2

    invoke-direct {v1, v7, v3, v4, v3}, Lcom/smedialink/ui/shop/view/custom/NonSwipeableViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->viewPager:Lcom/smedialink/ui/shop/view/custom/NonSwipeableViewPager;

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->buildNewTabsAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    iput-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 134
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->viewPager:Lcom/smedialink/ui/shop/view/custom/NonSwipeableViewPager;

    const-string v4, "viewPager"

    if-nez v1, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_9
    iget-object v6, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v6, :cond_a

    const-string v6, "pagerAdapter"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_a
    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 135
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->viewPager:Lcom/smedialink/ui/shop/view/custom/NonSwipeableViewPager;

    if-nez v1, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_b
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 136
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabLayout:Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

    if-nez v1, :cond_c

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_c
    iget-object v6, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->viewPager:Lcom/smedialink/ui/shop/view/custom/NonSwipeableViewPager;

    if-nez v6, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_d
    invoke-virtual {v1, v6}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 137
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {v1, v7}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;)V

    .line 138
    iget-object v6, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabLayout:Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

    if-nez v6, :cond_e

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_e
    const/4 v11, -0x2

    invoke-static {v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createAppBar(II)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v6, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabLayout:Lcom/smedialink/ui/shop/view/custom/CustomTabLayout;

    if-nez v6, :cond_f

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_f
    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v10, "null cannot be cast to non-null type com.google.android.material.appbar.AppBarLayout.LayoutParams"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 140
    invoke-virtual {v6, v9}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 143
    iget-object v6, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->baseViewsContainer:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v6, :cond_10

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_10
    invoke-static {v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createCoordinator(II)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->baseViewsContainer:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v1, :cond_11

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_11
    iget-object v5, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->viewPager:Lcom/smedialink/ui/shop/view/custom/NonSwipeableViewPager;

    if-nez v5, :cond_12

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_12
    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createCoordinator(II)Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->viewPager:Lcom/smedialink/ui/shop/view/custom/NonSwipeableViewPager;

    if-nez v1, :cond_13

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 146
    new-instance v5, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-direct {v5}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    invoke-virtual {v1, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 147
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->viewPager:Lcom/smedialink/ui/shop/view/custom/NonSwipeableViewPager;

    if-nez v1, :cond_14

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_14
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 149
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v1, :cond_15

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_15
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 151
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    const/16 v4, 0x68

    .line 152
    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_search:I

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    iput-object v4, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v4, 0x69

    .line 153
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_language:I

    invoke-virtual {v1, v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    iput-object v4, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->changeCountryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x0

    .line 155
    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v5, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$2;

    invoke-direct {v5, v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$2;-><init>(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_16

    .line 185
    sget v5, Lorg/telegram/messenger/R$string;->Search:I

    const-string v6, "Search"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 186
    :cond_16
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v5, 0x8

    if-nez v1, :cond_17

    goto :goto_2

    :cond_17
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 187
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 188
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->neurobots_store_screen_title:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 192
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$3;

    invoke-direct {v6, v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$3;-><init>(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)V

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 209
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, v7}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchResultsList:Lorg/telegram/ui/Components/RecyclerListView;

    .line 210
    new-instance v1, Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v1, v6}, Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;-><init>(I)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iput-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchResultsAdapter:Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

    .line 211
    new-instance v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$5;

    invoke-direct {v1, v7}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$createView$5;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 223
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 224
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchResultsList:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v6, "searchResultsList"

    if-nez v1, :cond_18

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_18
    iget-object v9, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchListLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v9, :cond_19

    const-string v9, "searchListLayoutManager"

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v3

    :cond_19
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 225
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchResultsList:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v1, :cond_1a

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1a
    iget-object v9, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchResultsAdapter:Lcom/smedialink/ui/shop/view/adapter/BotsAdapter;

    if-nez v9, :cond_1b

    const-string v9, "searchResultsAdapter"

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v3

    :cond_1b
    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 226
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchResultsList:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v1, :cond_1c

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1c
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 228
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v1, :cond_1d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1d
    iget-object v5, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->searchResultsList:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v5, :cond_1e

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_1e
    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->nothingFoundPlaceholder:Landroid/widget/TextView;

    .line 231
    sget v5, Lorg/telegram/messenger/R$string;->neurobots_store_search_empty:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->nothingFoundPlaceholder:Landroid/widget/TextView;

    const-string v5, "nothingFoundPlaceholder"

    if-nez v1, :cond_1f

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1f
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v1, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 234
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->nothingFoundPlaceholder:Landroid/widget/TextView;

    if-nez v1, :cond_20

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_20
    const-string v4, "emptyListPlaceholder"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->nothingFoundPlaceholder:Landroid/widget/TextView;

    if-nez v1, :cond_21

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_21
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->nothingFoundPlaceholder:Landroid/widget/TextView;

    if-nez v1, :cond_22

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_22
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 237
    iget-object v1, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->rootContainer:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-nez v1, :cond_23

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_23
    iget-object v2, v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->nothingFoundPlaceholder:Landroid/widget/TextView;

    if-nez v2, :cond_24

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_24
    move-object v3, v2

    :goto_3
    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v11, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v2, "fragmentView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botButtonClicked:I

    const-string v0, "null cannot be cast to non-null type com.smedialink.bots.domain.model.ShopItem"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_4

    .line 276
    aget-object p1, p3, v2

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/bots/domain/model/ShopItem;

    .line 277
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getStatus()Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object p2

    sget-object p3, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    if-eq p2, v1, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    const/4 p3, 0x5

    if-eq p2, p3, :cond_0

    goto/16 :goto_2

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->initiateBotDownloading(Lcom/smedialink/bots/domain/model/ShopItem;)V

    goto/16 :goto_2

    .line 283
    :cond_1
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getSku()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->purchaseItem(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 281
    :cond_2
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getBotId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/smedialink/bots/data/model/BotStatus;->DISABLED:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->updateBotStatus(Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)V

    goto/16 :goto_2

    .line 279
    :cond_3
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getBotId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->updateBotStatus(Ljava/lang/String;Lcom/smedialink/bots/data/model/BotStatus;)V

    goto/16 :goto_2

    .line 291
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botItemClicked:I

    if-ne p1, p2, :cond_5

    .line 292
    aget-object p1, p3, v2

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/bots/domain/model/ShopItem;

    .line 293
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 294
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getBotId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "botId"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lcom/smedialink/bots/domain/model/ShopItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string p3, "title"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance p1, Lcom/smedialink/ui/shop/BotInfoActivity;

    invoke-direct {p1, p2}, Lcom/smedialink/ui/shop/BotInfoActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_2

    .line 299
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botLanguageChanged:I

    if-ne p1, p2, :cond_7

    .line 300
    sget-object p1, Lcom/smedialink/bots/domain/model/BotLanguage;->Companion:Lcom/smedialink/bots/domain/model/BotLanguage$Companion;

    sget-object p2, Lcom/smedialink/bots/data/repository/CountriesRepository;->Companion:Lcom/smedialink/bots/data/repository/CountriesRepository$Companion;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "parentActivity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/smedialink/bots/data/repository/CountriesRepository$Companion;->getInstance(Landroid/content/Context;)Lcom/smedialink/bots/data/repository/CountriesRepository;

    move-result-object p2

    iget-object p3, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->me:Lorg/telegram/tgnet/TLRPC$User;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const-string v0, "me.phone"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getInstance().currentLocaleInfo.langCode"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lcom/smedialink/bots/data/repository/CountriesRepository;->getCurrentBotLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smedialink/bots/domain/model/BotLanguage$Companion;->fromValue(Ljava/lang/String;)Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object p1

    .line 302
    invoke-static {}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->values()[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    move-result-object p2

    .line 13645
    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v2, p3, :cond_7

    aget-object v3, p2, v2

    add-int/lit8 v4, v0, 0x1

    .line 303
    sget-object v5, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    if-ne v3, v1, :cond_6

    .line 304
    iget-object v3, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabViews:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.smedialink.ui.shop.view.GridBotsPageView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/shop/view/GridBotsPageView;

    .line 305
    invoke-virtual {v0, p1}, Lcom/smedialink/ui/shop/view/GridBotsPageView;->setBotLanguage(Lcom/smedialink/bots/domain/model/BotLanguage;)V

    .line 306
    invoke-virtual {v0}, Lcom/smedialink/ui/shop/view/GridBotsPageView;->subscribeToContent()V

    goto :goto_1

    .line 307
    :cond_6
    iget-object v3, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->tabViews:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.smedialink.ui.shop.view.ListBotsPageView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/shop/view/ListBotsPageView;

    .line 308
    invoke-virtual {v0, p1}, Lcom/smedialink/ui/shop/view/ListBotsPageView;->setBotLanguage(Lcom/smedialink/bots/domain/model/BotLanguage;)V

    .line 309
    invoke-virtual {v0}, Lcom/smedialink/ui/shop/view/ListBotsPageView;->subscribeToContent()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 262
    iget-boolean p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->swipeBackEnabled:Z

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 244
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->purchaseHelper:Lcom/smedialink/ui/shop/PurchaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smedialink/ui/shop/PurchaseHelper;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 249
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 250
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botButtonClicked:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 251
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botItemClicked:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 252
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botLanguageChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 253
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/smedialink/bots/usecase/AiBotsManager;

    new-instance v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$onFragmentCreate$1;

    invoke-direct {v1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$onFragmentCreate$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/smedialink/bots/usecase/AiBotsManager;->listenForRemoteBotUpdates(Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 266
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 267
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 268
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botButtonClicked:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 269
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botItemClicked:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 270
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botLanguageChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method
