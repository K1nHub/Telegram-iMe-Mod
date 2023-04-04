.class public final Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;
.super Lcom/iMe/ui/base/WalletAuthFragment;
.source "StakingOperationsFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;
.implements Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;
.implements Lcom/iMe/fork/utils/TabbedViewPagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/WalletAuthFragment;",
        "Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;",
        "Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;",
        "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
        "Lcom/iMe/fork/utils/TabbedFragmentPage<",
        "Lcom/iMe/ui/base/mvp/MvpFragment;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingOperationsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingOperationsFragment.kt\ncom/iMe/ui/wallet/staking/operations/StakingOperationsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,212:1\n13#2,4:213\n56#3,6:217\n1855#4,2:223\n1855#4,2:225\n1855#4,2:227\n1855#4,2:229\n1549#4:231\n1620#4,3:232\n1855#4,2:235\n11335#5:237\n11670#5,3:238\n*S KotlinDebug\n*F\n+ 1 StakingOperationsFragment.kt\ncom/iMe/ui/wallet/staking/operations/StakingOperationsFragment\n*L\n45#1:213,4\n46#1:217,6\n69#1:223,2\n80#1:225,2\n86#1:227,2\n90#1:229,2\n125#1:231\n125#1:232,3\n158#1:235,2\n168#1:237\n168#1:238,3\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final navigationRouter$delegate:Lkotlin/Lazy;

.field private networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

.field private final pageTabs$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$F1iloUIc05RmCgPMxgMqHNMsff4(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->showChooseNetworkDialog$lambda$8(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 45
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 52
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->Companion:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/base/WalletAuthFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

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

    .line 45
    iput-object v1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 46
    invoke-static {}, Lcom/iMe/di/module/NavigationModuleKt;->getCOMMON_TABS_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$navigationRouter$2;->INSTANCE:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$navigationRouter$2;

    .line 58
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$special$$inlined$inject$default$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->navigationRouter$delegate:Lkotlin/Lazy;

    .line 52
    new-instance v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 53
    new-instance v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$pageTabs$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$pageTabs$2;-><init>(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->pageTabs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNavigationRouter(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;)Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;)Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPageTabs(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->initPageTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;

    return-object v0
.end method

.method private final getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/navigation/common/router/base/NavigationRouter<",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->navigationRouter$delegate:Lkotlin/Lazy;

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
            "Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->pageTabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

    return-object v0
.end method

.method private final initPageTabs()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->values()[Lcom/iMe/model/wallet/details/StakingOperationsGroup;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 169
    new-instance v5, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 170
    invoke-virtual {v4}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->getId()I

    move-result v6

    .line 171
    new-instance v14, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 172
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    invoke-virtual {v4}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->getNameResId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 173
    sget-object v7, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;->Companion:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;

    .line 174
    new-instance v10, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;

    .line 175
    invoke-virtual {v4}, Lcom/iMe/model/wallet/details/StakingOperationsGroup;->getStakingOperationType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    move-result-object v11

    .line 174
    invoke-direct {v10, v11}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;-><init>(Lcom/iMe/storage/domain/model/staking/StakingOperationType;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 173
    invoke-static {v7, v10, v12, v11, v12}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;->newInstance$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$Companion;Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;ILjava/lang/Object;)Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment;

    move-result-object v10

    .line 178
    new-instance v11, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$initPageTabs$1$1;

    invoke-direct {v11, p0, v4}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$initPageTabs$1$1;-><init>(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;Lcom/iMe/model/wallet/details/StakingOperationsGroup;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v7, v14

    .line 171
    invoke-direct/range {v7 .. v13}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 169
    invoke-direct {v5, v6, v14}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final setupActionBar()V
    .locals 9

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 187
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 188
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_transactions_toolbar_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 189
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 190
    new-instance v2, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$setupActionBar$1$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 198
    new-instance v2, Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v3, "parentActivity"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/iMe/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    .line 199
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v2, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, "setupActionBar$lambda$13$lambda$12"

    .line 200
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 201
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    const v2, 0x800015

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$8(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedNetworkType"

    .line 139
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 147
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;->getRoot()Lcom/iMe/fork/ui/view/TabbedViewPager;

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
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;>;"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getPageTabs()Ljava/util/List;

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
    check-cast v2, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    .line 125
    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;->getPage()Lcom/iMe/fork/utils/TabbedFragmentPage;

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
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 152
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "actionBarDefault"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 153
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 154
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "actionBarDefaultTitle"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 155
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 151
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;->operationsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {v2}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getThemeDescription()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 159
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;->operationsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->isSwipeBackEnabled()Z

    move-result p1

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 68
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 70
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->setupActionBar()V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;->getRoot()Lcom/iMe/fork/ui/view/TabbedViewPager;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 80
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    goto :goto_0

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->clean()V

    .line 76
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public bridge synthetic onPageChanged(Lcom/iMe/fork/utils/AbstractTabbedViewPage;Lcom/iMe/fork/utils/AbstractTabbedViewPage;II)V
    .locals 0

    .line 42
    check-cast p1, Lcom/iMe/fork/utils/TabbedFragmentPage;

    check-cast p2, Lcom/iMe/fork/utils/TabbedFragmentPage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->onPageChanged(Lcom/iMe/fork/utils/TabbedFragmentPage;Lcom/iMe/fork/utils/TabbedFragmentPage;II)V

    return-void
.end method

.method public onPageChanged(Lcom/iMe/fork/utils/TabbedFragmentPage;Lcom/iMe/fork/utils/TabbedFragmentPage;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;",
            "Lcom/iMe/fork/utils/TabbedFragmentPage<",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;II)V"
        }
    .end annotation

    const-string p4, "newPage"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "oldPage"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {p2}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 129
    invoke-virtual {p1}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 130
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectTab(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 90
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/base/mvp/MvpFragment;

    .line 86
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 8

    .line 104
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getPageTabs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-direct {v1, p0, v2}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 104
    invoke-interface {v0, v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->init(Lcom/iMe/navigation/common/configuration/NavigationConfiguration;)V

    .line 110
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;->operationsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 111
    sget-object v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-virtual {v0, p0, v1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->init(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V

    .line 112
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getElevation()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    const-string v3, "actionBarTabLine"

    const-string v4, "actionBarTabActiveText"

    const-string v5, "actionBarTabUnactiveText"

    const-string v6, "actionBarTabSelector"

    const-string v7, "actionBarDefault"

    .line 114
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingOperationsBinding;->operationsPager:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 96
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 98
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getPageTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;->getId()I

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTabWithId(IF)V

    :cond_0
    return-void
.end method

.method public onViewReady()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->setupNavigationRouter()V

    return-void
.end method

.method public setupNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->networkTypeView:Lcom/iMe/ui/custom/NetworkTypeView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    :goto_0
    return-void
.end method

.method public showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p2, p1, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSelectNetworkTypeDialog(Landroid/content/Context;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
