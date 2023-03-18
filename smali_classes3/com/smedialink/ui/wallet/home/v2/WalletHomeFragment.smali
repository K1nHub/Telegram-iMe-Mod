.class public final Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;
.super Lcom/smedialink/ui/wallet/common/WalletTabFragment;
.source "WalletHomeFragment.kt"

# interfaces
.implements Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;
.implements Lcom/smedialink/ui/wallet/home/v2/WalletHomeView;
.implements Lorg/fork/utils/TabbedViewPagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/wallet/common/WalletTabFragment;",
        "Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;",
        "Lcom/smedialink/ui/wallet/home/v2/WalletHomeView;",
        "Lorg/fork/utils/TabbedViewPagerDelegate<",
        "Lorg/fork/utils/TabbedFragmentPage<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeFragment.kt\ncom/smedialink/ui/wallet/home/v2/WalletHomeFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 CollectionExt.kt\ncom/smedialink/utils/extentions/common/CollectionExtKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n13#2,4:182\n56#3,6:186\n1855#4,2:192\n1855#4,2:194\n1855#4,2:196\n1855#4,2:198\n1855#4,2:200\n1855#4,2:202\n1855#4,2:204\n1855#4,2:206\n1549#4:208\n1620#4,3:209\n2634#4:213\n4#5:212\n5#5,2:215\n1#6:214\n*S KotlinDebug\n*F\n+ 1 WalletHomeFragment.kt\ncom/smedialink/ui/wallet/home/v2/WalletHomeFragment\n*L\n35#1:182,4\n36#1:186,6\n60#1:192,2\n67#1:194,2\n77#1:196,2\n82#1:198,2\n87#1:200,2\n91#1:202,2\n95#1:204,2\n128#1:206,2\n131#1:208\n131#1:209,3\n172#1:213\n172#1:212\n172#1:215,2\n172#1:214\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final homeNavigationRouter$delegate:Lkotlin/Lazy;

.field private final pageTabs$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 35
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/home/v2/WalletHomePresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 39
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletTabFragment;-><init>()V

    .line 35
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/smedialink/ui/wallet/home/v2/WalletHomePresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 35
    iput-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 36
    invoke-static {}, Lcom/smedialink/di/module/NavigationModuleKt;->getCOMMON_TABS_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$homeNavigationRouter$2;->INSTANCE:Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$homeNavigationRouter$2;

    .line 58
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$special$$inlined$inject$default$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->homeNavigationRouter$delegate:Lkotlin/Lazy;

    .line 39
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 40
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$pageTabs$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment$pageTabs$2;-><init>(Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->pageTabs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$initPageTabs(Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;)Ljava/util/List;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->initPageTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    return-object v0
.end method

.method private final getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/smedialink/navigation/common/router/base/NavigationRouter<",
            "Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->homeNavigationRouter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    return-object v0
.end method

.method private final getPageTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->pageTabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/home/v2/WalletHomePresenter;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/WalletHomePresenter;

    return-object v0
.end method

.method private final initPageTabs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 148
    new-instance v1, Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 149
    sget v2, Lorg/telegram/messenger/R$id;->wallet_home_crypto:I

    .line 150
    new-instance v10, Lorg/fork/utils/TabbedFragmentPage;

    .line 151
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_home_navigation_crypto:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_crypto_24:I

    .line 153
    sget-object v3, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$Companion;

    invoke-virtual {v3}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment$Companion;->newInstance()Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoFragment;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v10

    .line 150
    invoke-direct/range {v3 .. v9}, Lorg/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 148
    invoke-direct {v1, v2, v10}, Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;-><init>(ILorg/fork/utils/TabbedFragmentPage;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 156
    new-instance v1, Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 157
    sget v2, Lorg/telegram/messenger/R$id;->wallet_home_binance_pay:I

    .line 158
    new-instance v10, Lorg/fork/utils/TabbedFragmentPage;

    .line 159
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_home_navigation_binance_pay:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_binance_pay_24:I

    .line 161
    sget-object v3, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$Companion;

    invoke-virtual {v3}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$Companion;->newInstance()Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;

    move-result-object v6

    move-object v3, v10

    .line 158
    invoke-direct/range {v3 .. v9}, Lorg/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 156
    invoke-direct {v1, v2, v10}, Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;-><init>(ILorg/fork/utils/TabbedFragmentPage;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 164
    new-instance v1, Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 165
    sget v2, Lorg/telegram/messenger/R$id;->wallet_home_internal_points:I

    .line 166
    new-instance v10, Lorg/fork/utils/TabbedFragmentPage;

    .line 167
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_home_navigation_services:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 168
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_points_24:I

    .line 169
    sget-object v3, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$Companion;

    invoke-virtual {v3}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment$Companion;->newInstance()Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesFragment;

    move-result-object v6

    move-object v3, v10

    .line 166
    invoke-direct/range {v3 .. v9}, Lorg/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 164
    invoke-direct {v1, v2, v10}, Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;-><init>(ILorg/fork/utils/TabbedFragmentPage;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 147
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 173
    invoke-virtual {v2}, Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;->getPage()Lorg/fork/utils/TabbedFragmentPage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;

    invoke-virtual {v2, p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->setParentView(Lcom/smedialink/ui/wallet/home/v2/WalletHomeView;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final setupColors()V
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->getRoot()Lorg/fork/ui/view/TabbedViewPager;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public synthetic bind(Lorg/fork/utils/AbstractTabbedViewPage;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/utils/TabbedViewPagerDelegate$-CC;->$default$bind(Lorg/fork/utils/TabbedViewPagerDelegate;Lorg/fork/utils/AbstractTabbedViewPage;I)V

    return-void
.end method

.method public getFragmentContainer()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;",
            ">;>;"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getPageTabs()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 131
    invoke-virtual {v2}, Lcom/smedialink/model/wallet/home/navigation/WalletHomeNavigationTab;->getPage()Lorg/fork/utils/TabbedFragmentPage;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getParentFragment()Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getParentFragment()Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getScrollableHeaderView()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lorg/fork/utils/TabbedViewPagerDelegate$-CC;->$default$getScrollableHeaderView(Lorg/fork/utils/TabbedViewPagerDelegate;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    invoke-static {p0}, Lorg/fork/utils/TabbedViewPagerDelegate$-CC;->$default$getSwipeRefreshLayout(Lorg/fork/utils/TabbedViewPagerDelegate;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 57
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->getRoot()Lorg/fork/ui/view/TabbedViewPager;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundGray"

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 56
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->walletHomeViewPager:Lorg/fork/ui/view/TabbedViewPager;

    invoke-virtual {v1}, Lorg/fork/ui/view/TabbedViewPager;->getThemeDescription()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;

    .line 61
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;

    .line 128
    invoke-virtual {v1, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->handleBottomPadding(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->walletHomeViewPager:Lorg/fork/ui/view/TabbedViewPager;

    invoke-virtual {p1}, Lorg/fork/ui/view/TabbedViewPager;->isSwipeBackEnabled()Z

    move-result p1

    return p1
.end method

.method public loadBalances()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;

    .line 95
    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->loadBalances()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadTabsInfo()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;

    .line 91
    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->loadTabInfo()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 66
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 67
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;

    .line 67
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->setupColors()V

    .line 49
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->getRoot()Lorg/fork/ui/view/TabbedViewPager;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/smedialink/ui/wallet/common/BottomNavigationTabFragment;->onDestroyView()V

    .line 77
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;

    .line 77
    invoke-virtual {v1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onDestroyView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 72
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->clean()V

    return-void
.end method

.method public bridge synthetic onPageChanged(Lorg/fork/utils/AbstractTabbedViewPage;Lorg/fork/utils/AbstractTabbedViewPage;II)V
    .locals 0

    .line 32
    check-cast p1, Lorg/fork/utils/TabbedFragmentPage;

    check-cast p2, Lorg/fork/utils/TabbedFragmentPage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->onPageChanged(Lorg/fork/utils/TabbedFragmentPage;Lorg/fork/utils/TabbedFragmentPage;II)V

    return-void
.end method

.method public onPageChanged(Lorg/fork/utils/TabbedFragmentPage;Lorg/fork/utils/TabbedFragmentPage;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;",
            ">;",
            "Lorg/fork/utils/TabbedFragmentPage<",
            "Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;",
            ">;II)V"
        }
    .end annotation

    const-string p4, "newPage"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldPage"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/WalletHomePresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/smedialink/ui/wallet/home/v2/WalletHomePresenter;->selectTab(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    .line 87
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;

    .line 87
    invoke-virtual {v1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/smedialink/ui/wallet/common/BottomNavigationTabFragment;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/wallet/home/v2/tabs/WalletHomeTabFragment;

    .line 82
    invoke-virtual {v1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 7

    .line 108
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getHomeNavigationRouter()Lcom/smedialink/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;

    .line 111
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getPageTabs()Ljava/util/List;

    move-result-object v2

    .line 109
    invoke-direct {v1, p0, v2}, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 108
    invoke-interface {v0, v1}, Lcom/smedialink/navigation/common/router/base/NavigationRouter;->init(Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;)V

    .line 114
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->walletHomeViewPager:Lorg/fork/ui/view/TabbedViewPager;

    .line 115
    invoke-virtual {v0, p0}, Lorg/fork/ui/view/TabbedViewPager;->init(Lorg/fork/utils/TabbedViewPagerDelegate;)V

    .line 116
    invoke-virtual {v0}, Lorg/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v1

    const/high16 v0, 0x40000000    # 2.0f

    .line 117
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    const-string v2, "actionBarTabLine"

    const-string v3, "actionBarTabActiveText"

    const-string v4, "actionBarTabUnactiveText"

    const-string v5, "actionBarTabSelector"

    const-string v6, "actionBarDefault"

    .line 118
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->walletHomeViewPager:Lorg/fork/ui/view/TabbedViewPager;

    .line 100
    invoke-virtual {v0}, Lorg/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 101
    invoke-virtual {v0}, Lorg/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 102
    invoke-virtual {v0}, Lorg/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTabWithId(IF)V

    :cond_0
    return-void
.end method

.method public onViewReady()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomeFragment;->getPresenter()Lcom/smedialink/ui/wallet/home/v2/WalletHomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/home/v2/WalletHomePresenter;->setupNavigationRouter()V

    return-void
.end method
