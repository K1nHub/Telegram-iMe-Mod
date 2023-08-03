.class public final Lcom/iMe/ui/wallet/home/WalletHomeFragment;
.super Lcom/iMe/ui/wallet/common/WalletTabFragment;
.source "WalletHomeFragment.kt"

# interfaces
.implements Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;
.implements Lcom/iMe/ui/wallet/home/WalletHomeView;
.implements Lcom/iMe/fork/utils/TabbedViewPagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/WalletHomeFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/wallet/common/WalletTabFragment;",
        "Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;",
        "Lcom/iMe/ui/wallet/home/WalletHomeView;",
        "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
        "Lcom/iMe/fork/utils/TabbedFragmentPage<",
        "Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeFragment.kt\ncom/iMe/ui/wallet/home/WalletHomeFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n13#2,4:197\n56#3,6:201\n1855#4,2:207\n1855#4,2:209\n1855#4,2:211\n1855#4,2:213\n1855#4,2:215\n1855#4,2:217\n1855#4,2:219\n1855#4,2:221\n1549#4:223\n1620#4,3:224\n2634#4:228\n4#5:227\n5#5,2:230\n1#6:229\n*S KotlinDebug\n*F\n+ 1 WalletHomeFragment.kt\ncom/iMe/ui/wallet/home/WalletHomeFragment\n*L\n36#1:197,4\n37#1:201,6\n63#1:207,2\n70#1:209,2\n81#1:211,2\n87#1:213,2\n91#1:215,2\n96#1:217,2\n100#1:219,2\n137#1:221,2\n143#1:223\n143#1:224,3\n187#1:228\n187#1:227\n187#1:230,2\n187#1:229\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/home/WalletHomeFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final homeNavigationRouter$delegate:Lkotlin/Lazy;

.field private final pageTabs$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 36
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/home/WalletHomePresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 40
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/home/WalletHomeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/WalletHomeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->Companion:Lcom/iMe/ui/wallet/home/WalletHomeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletTabFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/iMe/ui/wallet/home/WalletHomeFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/home/WalletHomeFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/home/WalletHomePresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 36
    iput-object v1, p0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 37
    invoke-static {}, Lcom/iMe/di/module/NavigationModuleKt;->getCOMMON_TABS_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lcom/iMe/ui/wallet/home/WalletHomeFragment$homeNavigationRouter$2;->INSTANCE:Lcom/iMe/ui/wallet/home/WalletHomeFragment$homeNavigationRouter$2;

    .line 58
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/wallet/home/WalletHomeFragment$special$$inlined$inject$default$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/iMe/ui/wallet/home/WalletHomeFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->homeNavigationRouter$delegate:Lkotlin/Lazy;

    .line 40
    new-instance v0, Lcom/iMe/ui/wallet/home/WalletHomeFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/home/WalletHomeFragment;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 41
    new-instance v0, Lcom/iMe/ui/wallet/home/WalletHomeFragment$pageTabs$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment$pageTabs$2;-><init>(Lcom/iMe/ui/wallet/home/WalletHomeFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->pageTabs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$initPageTabs(Lcom/iMe/ui/wallet/home/WalletHomeFragment;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->initPageTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    return-object v0
.end method

.method private final getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/navigation/common/router/base/NavigationRouter<",
            "Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->homeNavigationRouter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/common/router/base/NavigationRouter;

    return-object v0
.end method

.method private final getPageTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->pageTabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/home/WalletHomePresenter;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/WalletHomePresenter;

    return-object v0
.end method

.method private final initPageTabs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 163
    new-instance v1, Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 164
    sget v2, Lorg/telegram/messenger/R$id;->wallet_home_crypto:I

    .line 165
    new-instance v10, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 166
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_home_navigation_crypto:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_crypto_24:I

    .line 168
    sget-object v3, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;->Companion:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$Companion;

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoFragment;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v10

    .line 165
    invoke-direct/range {v3 .. v9}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 163
    invoke-direct {v1, v2, v10}, Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 171
    new-instance v1, Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 172
    sget v2, Lorg/telegram/messenger/R$id;->wallet_home_binance_pay:I

    .line 173
    new-instance v10, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 174
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_home_navigation_binance_pay:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_binance_pay_24:I

    .line 176
    sget-object v3, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->Companion:Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$Companion;

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;

    move-result-object v6

    move-object v3, v10

    .line 173
    invoke-direct/range {v3 .. v9}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 171
    invoke-direct {v1, v2, v10}, Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 179
    new-instance v1, Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 180
    sget v2, Lorg/telegram/messenger/R$id;->wallet_home_internal_points:I

    .line 181
    new-instance v10, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 182
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_home_navigation_services:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_points_24:I

    .line 184
    sget-object v3, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;->Companion:Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$Companion;

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesFragment;

    move-result-object v6

    move-object v3, v10

    .line 181
    invoke-direct/range {v3 .. v9}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 179
    invoke-direct {v1, v2, v10}, Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 162
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
    check-cast v2, Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 188
    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;->getPage()Lcom/iMe/fork/utils/TabbedFragmentPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;

    invoke-virtual {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->setParentView(Lcom/iMe/ui/wallet/home/WalletHomeView;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final setupColors()V
    .locals 2

    .line 159
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->getRoot()Lcom/iMe/fork/ui/view/TabbedViewPager;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public synthetic bind(Lcom/iMe/fork/utils/AbstractTabbedViewPage;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate$-CC;->$default$bind(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;Lcom/iMe/fork/utils/AbstractTabbedViewPage;I)V

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
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;",
            ">;>;"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getPageTabs()Ljava/util/List;

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
    check-cast v2, Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;

    .line 143
    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;->getPage()Lcom/iMe/fork/utils/TabbedFragmentPage;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    return-object p0
.end method

.method public synthetic getScrollableHeaderView()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate$-CC;->$default$getScrollableHeaderView(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    invoke-static {p0}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate$-CC;->$default$getSwipeRefreshLayout(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

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

    .line 60
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->getRoot()Lcom/iMe/fork/ui/view/TabbedViewPager;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 59
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->walletHomeViewPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getThemeDescription()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

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

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;

    .line 64
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

    .line 137
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

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

    check-cast v1, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;

    .line 138
    invoke-virtual {v1, p1}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->handleBottomPadding(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->walletHomeViewPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->isSwipeBackEnabled()Z

    move-result p1

    return p1
.end method

.method public loadBalances()V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

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

    check-cast v1, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;

    .line 100
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->loadBalances()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadTabsInfo()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

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

    check-cast v1, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;

    .line 96
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->loadTabInfo()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 69
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

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

    check-cast v1, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;

    .line 71
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->setupColors()V

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->getRoot()Lcom/iMe/fork/ui/view/TabbedViewPager;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

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

    check-cast v1, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;

    .line 81
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->onDestroyView()V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->clean()V

    .line 77
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public bridge synthetic onPageChanged(Lcom/iMe/fork/utils/AbstractTabbedViewPage;Lcom/iMe/fork/utils/AbstractTabbedViewPage;II)V
    .locals 0

    .line 33
    check-cast p1, Lcom/iMe/fork/utils/TabbedFragmentPage;

    check-cast p2, Lcom/iMe/fork/utils/TabbedFragmentPage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->onPageChanged(Lcom/iMe/fork/utils/TabbedFragmentPage;Lcom/iMe/fork/utils/TabbedFragmentPage;II)V

    return-void
.end method

.method public onPageChanged(Lcom/iMe/fork/utils/TabbedFragmentPage;Lcom/iMe/fork/utils/TabbedFragmentPage;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;",
            ">;",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;",
            ">;II)V"
        }
    .end annotation

    const-string p4, "newPage"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldPage"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getPresenter()Lcom/iMe/ui/wallet/home/WalletHomePresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/iMe/ui/wallet/home/WalletHomePresenter;->selectTab(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

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

    check-cast v1, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;

    .line 91
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

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

    check-cast v1, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;

    .line 87
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 7

    .line 113
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getHomeNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    .line 116
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getPageTabs()Ljava/util/List;

    move-result-object v2

    .line 114
    invoke-direct {v1, p0, v2}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 113
    invoke-interface {v0, v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->init(Lcom/iMe/navigation/common/configuration/NavigationConfiguration;)V

    .line 119
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->walletHomeViewPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 120
    invoke-virtual {v0, p0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->init(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;)V

    .line 121
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v1

    const/high16 v0, 0x40000000    # 2.0f

    .line 122
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 124
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabLine:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabActiveText:I

    .line 125
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabUnactiveText:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabSelector:I

    .line 126
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 123
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setColors(IIIII)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinding;->walletHomeViewPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 105
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 107
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTabWithId(IF)V

    :cond_0
    return-void
.end method

.method public onViewReady()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->getPresenter()Lcom/iMe/ui/wallet/home/WalletHomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/WalletHomePresenter;->setupNavigationRouter()V

    return-void
.end method
