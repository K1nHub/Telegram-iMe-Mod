.class public final Lcom/iMe/ui/catalog/tabs/CatalogFragment;
.super Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;
.source "CatalogFragment.kt"

# interfaces
.implements Lcom/iMe/ui/catalog/tabs/CatalogView;
.implements Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;
.implements Lcom/iMe/fork/utils/TabbedViewPagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/catalog/tabs/CatalogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;",
        "Lcom/iMe/ui/catalog/tabs/CatalogView;",
        "Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;",
        "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
        "Lcom/iMe/fork/utils/TabbedFragmentPage<",
        "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogFragment.kt\ncom/iMe/ui/catalog/tabs/CatalogFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,222:1\n13#2,4:223\n56#3,6:227\n1855#4,2:233\n1855#4,2:235\n1855#4,2:237\n1855#4,2:239\n1855#4,2:241\n1855#4,2:243\n1549#4:245\n1620#4,3:246\n1855#4,2:249\n2634#4:251\n1#5:252\n*S KotlinDebug\n*F\n+ 1 CatalogFragment.kt\ncom/iMe/ui/catalog/tabs/CatalogFragment\n*L\n40#1:223,4\n41#1:227,6\n52#1:233,2\n76#1:235,2\n92#1:237,2\n97#1:239,2\n102#1:241,2\n136#1:243,2\n142#1:245\n142#1:246,3\n171#1:249,2\n209#1:251\n209#1:252\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/catalog/tabs/CatalogFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

.field private final navigationRouter$delegate:Lkotlin/Lazy;

.field private final pageTabs$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$F9VC269qYsAli0R6eIKA9-UjUQ4(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->setupColors()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 40
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/catalog/tabs/CatalogPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 46
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/catalog/tabs/CatalogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->Companion:Lcom/iMe/ui/catalog/tabs/CatalogFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .locals 4

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    .line 40
    new-instance p1, Lcom/iMe/ui/catalog/tabs/CatalogFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$presenter$2;-><init>(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/catalog/tabs/CatalogPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 40
    iput-object v0, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 42
    invoke-static {}, Lcom/iMe/di/module/NavigationModuleKt;->getCOMMON_TABS_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object p1

    .line 41
    sget-object v0, Lcom/iMe/ui/catalog/tabs/CatalogFragment$navigationRouter$2;->INSTANCE:Lcom/iMe/ui/catalog/tabs/CatalogFragment$navigationRouter$2;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/catalog/tabs/CatalogFragment$special$$inlined$inject$default$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->navigationRouter$delegate:Lkotlin/Lazy;

    .line 46
    new-instance p1, Lcom/iMe/ui/catalog/tabs/CatalogFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$binding$2;-><init>(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 47
    new-instance p1, Lcom/iMe/ui/catalog/tabs/CatalogFragment$pageTabs$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$pageTabs$2;-><init>(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->pageTabs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNavigationRouter(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPageTabs(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)Ljava/util/List;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->initPageTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    return-object v0
.end method

.method private final getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/navigation/common/router/base/NavigationRouter<",
            "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->navigationRouter$delegate:Lkotlin/Lazy;

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
            "Lcom/iMe/model/catalog/CatalogNavigationTab;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->pageTabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/catalog/tabs/CatalogPresenter;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/CatalogPresenter;

    return-object v0
.end method

.method private final initPageTabs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/catalog/CatalogNavigationTab;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/catalog/CatalogNavigationTab;

    .line 182
    new-instance v1, Lcom/iMe/model/catalog/CatalogNavigationTab;

    .line 183
    sget v2, Lorg/telegram/messenger/R$id;->catalog_all:I

    .line 184
    new-instance v10, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 185
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->catalog_all:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 186
    sget-object v3, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->Companion:Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$Companion;

    iget-object v5, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-virtual {v3, v5}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$Companion;->newInstance(Lcom/iMe/storage/domain/model/catalog/ChatType;)Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;

    move-result-object v6

    .line 181
    new-instance v7, Lcom/iMe/ui/catalog/tabs/CatalogFragment$initPageTabs$1;

    invoke-direct {v7, p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$initPageTabs$1;-><init>(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)V

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v3, v10

    .line 184
    invoke-direct/range {v3 .. v9}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    invoke-direct {v1, v2, v10}, Lcom/iMe/model/catalog/CatalogNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 191
    new-instance v1, Lcom/iMe/model/catalog/CatalogNavigationTab;

    .line 192
    sget v2, Lorg/telegram/messenger/R$id;->catalog_categories:I

    .line 193
    new-instance v10, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 194
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->catalog_categories:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    sget-object v3, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->Companion:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;

    iget-object v5, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-virtual {v3, v5}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;->newInstance(Lcom/iMe/storage/domain/model/catalog/ChatType;)Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    move-result-object v6

    .line 181
    new-instance v7, Lcom/iMe/ui/catalog/tabs/CatalogFragment$initPageTabs$2;

    invoke-direct {v7, p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$initPageTabs$2;-><init>(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)V

    const/4 v5, 0x0

    move-object v3, v10

    .line 193
    invoke-direct/range {v3 .. v9}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 191
    invoke-direct {v1, v2, v10}, Lcom/iMe/model/catalog/CatalogNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 200
    new-instance v1, Lcom/iMe/model/catalog/CatalogNavigationTab;

    .line 201
    sget v2, Lorg/telegram/messenger/R$id;->catalog_user_channels:I

    .line 202
    new-instance v10, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 203
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->catalog_user_channels:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    sget-object v3, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->Companion:Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$Companion;

    iget-object v5, p0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-virtual {v3, v5}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$Companion;->newInstance(Lcom/iMe/storage/domain/model/catalog/ChatType;)Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;

    move-result-object v6

    .line 181
    new-instance v7, Lcom/iMe/ui/catalog/tabs/CatalogFragment$initPageTabs$3;

    invoke-direct {v7, p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$initPageTabs$3;-><init>(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)V

    const/4 v5, 0x0

    move-object v3, v10

    .line 202
    invoke-direct/range {v3 .. v9}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 200
    invoke-direct {v1, v2, v10}, Lcom/iMe/model/catalog/CatalogNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 181
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

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

    check-cast v2, Lcom/iMe/model/catalog/CatalogNavigationTab;

    .line 210
    invoke-virtual {v2}, Lcom/iMe/model/catalog/CatalogNavigationTab;->getPage()Lcom/iMe/fork/utils/TabbedFragmentPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->getBottomNavigationDelegate()Lcom/iMe/ui/wallet/common/BottomNavigationDelegate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;->setBottomNavigationDelegate(Lcom/iMe/ui/wallet/common/BottomNavigationDelegate;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final setupColors()V
    .locals 2

    .line 214
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->getRoot()Landroid/widget/FrameLayout;

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
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
            ">;>;"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getPageTabs()Ljava/util/List;

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
    check-cast v2, Lcom/iMe/model/catalog/CatalogNavigationTab;

    .line 142
    invoke-virtual {v2}, Lcom/iMe/model/catalog/CatalogNavigationTab;->getPage()Lcom/iMe/fork/utils/TabbedFragmentPage;

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

    .line 160
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 161
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 162
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 166
    new-instance v7, Lcom/iMe/ui/catalog/tabs/CatalogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/catalog/tabs/CatalogFragment;)V

    .line 167
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    .line 160
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 159
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 170
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->catalogPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getThemeDescription()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;

    .line 172
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;

    .line 136
    invoke-virtual {v1, p1}, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;->handleBottomPadding(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->catalogPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->isSwipeBackEnabled()Z

    move-result p1

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 75
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;

    .line 77
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->setupColors()V

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->onDestroyView()V

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;

    .line 92
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->clean()V

    return-void
.end method

.method public bridge synthetic onPageChanged(Lcom/iMe/fork/utils/AbstractTabbedViewPage;Lcom/iMe/fork/utils/AbstractTabbedViewPage;II)V
    .locals 0

    .line 34
    check-cast p1, Lcom/iMe/fork/utils/TabbedFragmentPage;

    check-cast p2, Lcom/iMe/fork/utils/TabbedFragmentPage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->onPageChanged(Lcom/iMe/fork/utils/TabbedFragmentPage;Lcom/iMe/fork/utils/TabbedFragmentPage;II)V

    return-void
.end method

.method public onPageChanged(Lcom/iMe/fork/utils/TabbedFragmentPage;Lcom/iMe/fork/utils/TabbedFragmentPage;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
            ">;",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;",
            ">;II)V"
        }
    .end annotation

    const-string p4, "newPage"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "oldPage"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;

    invoke-virtual {p2}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 151
    invoke-virtual {p1}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;->onResume()V

    .line 152
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/CatalogPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/iMe/ui/catalog/tabs/CatalogPresenter;->selectTab(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 102
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;

    .line 102
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->onResume()V

    .line 97
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;

    .line 97
    invoke-virtual {v1}, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSelectedLanguageChanged()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getPageTabs()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/catalog/CatalogNavigationTab;

    .line 53
    invoke-virtual {v1}, Lcom/iMe/model/catalog/CatalogNavigationTab;->getPage()Lcom/iMe/fork/utils/TabbedFragmentPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;

    .line 54
    invoke-virtual {v1}, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;->onSelectedLanguageChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 8

    .line 115
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    .line 118
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getPageTabs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 116
    invoke-direct {v1, p0, v2}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 115
    invoke-interface {v0, v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->init(Lcom/iMe/navigation/common/configuration/NavigationConfiguration;)V

    .line 121
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->catalogPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 122
    sget-object v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-virtual {v0, p0, v1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->init(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V

    .line 123
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    const/4 v0, 0x2

    .line 124
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 126
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabLine:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabActiveText:I

    .line 127
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabUnactiveText:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabSelector:I

    .line 128
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 125
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setColors(IIIII)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogTabsBinding;->catalogPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 107
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eq v1, p1, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 109
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTabWithId(IF)V

    :cond_0
    return-void
.end method

.method public onViewReady()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/CatalogPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/catalog/tabs/CatalogPresenter;->setupNavigationRouter()V

    return-void
.end method
