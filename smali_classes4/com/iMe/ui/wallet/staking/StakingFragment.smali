.class public final Lcom/iMe/ui/wallet/staking/StakingFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "StakingFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/staking/StakingView;
.implements Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;
.implements Lcom/iMe/fork/utils/TabbedViewPagerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;",
        "Lcom/iMe/ui/wallet/staking/StakingView;",
        "Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;",
        "Lcom/iMe/fork/utils/TabbedViewPagerDelegate<",
        "Lcom/iMe/fork/utils/TabbedFragmentPage<",
        "Lcom/iMe/ui/base/mvp/MvpFragment;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingFragment.kt\ncom/iMe/ui/wallet/staking/StakingFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,306:1\n13#2,4:307\n56#3,6:311\n1855#4,2:317\n1855#4,2:319\n1855#4,2:321\n1855#4,2:323\n1549#4:325\n1620#4,3:326\n1855#4,2:329\n11335#5:331\n11670#5,3:332\n*S KotlinDebug\n*F\n+ 1 StakingFragment.kt\ncom/iMe/ui/wallet/staking/StakingFragment\n*L\n47#1:307,4\n48#1:311,6\n73#1:317,2\n84#1:319,2\n90#1:321,2\n94#1:323,2\n142#1:325\n142#1:326,3\n227#1:329,2\n236#1:331\n236#1:332,3\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final dashboardView$delegate:Lkotlin/Lazy;

.field private final navigationRouter$delegate:Lkotlin/Lazy;

.field private final pageTabs$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$Hi9HBPbI1nsx1XPrc4LrBRdS034(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupListeners$lambda$15(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MSLGbgN6lASgP00OesQPmCKePXA(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$YT8isL5VxDotV3G4OuEVqTJc4Gw(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupListeners$lambda$16(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aaENC6ZSmi1jZXLFIO5OeG1D1Gw(Lcom/iMe/ui/wallet/staking/StakingFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/staking/StakingFragment;->showInfoDialog$lambda$12(Lcom/iMe/ui/wallet/staking/StakingFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kJUyq1bf4DYIQtLySHuHUE1lfTM(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupListeners$lambda$14(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/staking/StakingFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 47
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 53
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/staking/StakingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/staking/StakingFragment;->Companion:Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/iMe/ui/wallet/staking/StakingFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string/jumbo v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/staking/StakingPresenter;

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

    .line 47
    iput-object v1, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 48
    invoke-static {}, Lcom/iMe/di/module/NavigationModuleKt;->getCOMMON_TABS_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sget-object v1, Lcom/iMe/ui/wallet/staking/StakingFragment$navigationRouter$2;->INSTANCE:Lcom/iMe/ui/wallet/staking/StakingFragment$navigationRouter$2;

    .line 58
    sget-object v2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/wallet/staking/StakingFragment$special$$inlined$inject$default$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/iMe/ui/wallet/staking/StakingFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->navigationRouter$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v0, Lcom/iMe/ui/wallet/staking/StakingFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 54
    new-instance v0, Lcom/iMe/ui/wallet/staking/StakingFragment$pageTabs$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$pageTabs$2;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->pageTabs$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lcom/iMe/ui/wallet/staking/StakingFragment$dashboardView$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$dashboardView$2;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->dashboardView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNavigationRouter(Lcom/iMe/ui/wallet/staking/StakingFragment;)Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initDashboardView(Lcom/iMe/ui/wallet/staking/StakingFragment;)Lcom/iMe/ui/custom/StakingDashboardView;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->initDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPageTabs(Lcom/iMe/ui/wallet/staking/StakingFragment;)Ljava/util/List;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->initPageTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showInfoDialog(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->showInfoDialog()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/staking/StakingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    return-object v0
.end method

.method private final getDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->dashboardView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/StakingDashboardView;

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

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->navigationRouter$delegate:Lkotlin/Lazy;

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
            "Lcom/iMe/model/staking/StakingNavigationTab;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->pageTabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/staking/StakingFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/StakingPresenter;

    return-object v0
.end method

.method private final initDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;
    .locals 7

    .line 248
    new-instance v6, Lcom/iMe/ui/custom/StakingDashboardView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/StakingDashboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method private final initPageTabs()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/staking/StakingNavigationTab;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-static {}, Lcom/iMe/storage/domain/model/staking/StakingTabType;->values()[Lcom/iMe/storage/domain/model/staking/StakingTabType;

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

    .line 237
    new-instance v5, Lcom/iMe/model/staking/StakingNavigationTab;

    .line 238
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/staking/StakingTabType;->getFragmentId()I

    move-result v6

    .line 239
    new-instance v14, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 240
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/staking/StakingTabType;->getTitleResId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 241
    sget-object v7, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment;->Companion:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;

    invoke-virtual {v7, v4}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;->newInstance(Lcom/iMe/storage/domain/model/staking/StakingTabType;)Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment;

    move-result-object v10

    .line 242
    new-instance v11, Lcom/iMe/ui/wallet/staking/StakingFragment$initPageTabs$1$1;

    invoke-direct {v11, p0, v4}, Lcom/iMe/ui/wallet/staking/StakingFragment$initPageTabs$1$1;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;Lcom/iMe/storage/domain/model/staking/StakingTabType;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v7, v14

    .line 239
    invoke-direct/range {v7 .. v13}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 237
    invoke-direct {v5, v6, v14}, Lcom/iMe/model/staking/StakingNavigationTab;-><init>(ILcom/iMe/fork/utils/TabbedFragmentPage;)V

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final newInstance()Lcom/iMe/ui/wallet/staking/StakingFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/staking/StakingFragment;->Companion:Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/StakingFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/staking/StakingFragment;

    move-result-object v0

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 4

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    .line 252
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 253
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 254
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 255
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 256
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    sget v2, Lcom/iMe/common/IdFabric$Menu;->STAKING_HELP:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_help:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 257
    new-instance v1, Lcom/iMe/ui/wallet/staking/StakingFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 5

    .line 284
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 286
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->stakingPager:Lcom/iMe/fork/ui/view/CollapsableHeaderTabbedViewPager;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 287
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/custom/StakingDashboardView;->setupColors()V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 292
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 293
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/iMe/ui/custom/StakingDashboardView;->setupListeners(Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final setupListeners$lambda$14(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/StakingPresenter;->reload()V

    return-void
.end method

.method private static final setupListeners$lambda$15(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 294
    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingCalculator(Lcom/iMe/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final setupListeners$lambda$16(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->Companion:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final showInfoDialog()V
    .locals 11

    .line 271
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->staking_info_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->staking_info_more:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0x800003

    const/4 v8, 0x0

    const/16 v9, 0x23

    const/4 v10, 0x0

    move-object v2, p0

    .line 270
    invoke-static/range {v2 .. v10}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialogInfoWithAnimation$default(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showInfoDialog$lambda$12(Lcom/iMe/ui/wallet/staking/StakingFragment;Landroid/content/DialogInterface;)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 278
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/R$string;->staking_info_site_url:I

    invoke-interface {p0, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 276
    invoke-static {p1, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

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

    .line 159
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

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

    .line 142
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPageTabs()Ljava/util/List;

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
    check-cast v2, Lcom/iMe/model/staking/StakingNavigationTab;

    .line 142
    invoke-virtual {v2}, Lcom/iMe/model/staking/StakingNavigationTab;->getPage()Lcom/iMe/fork/utils/TabbedFragmentPage;

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

.method public getScrollableHeaderView()Landroid/view/View;
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 2

    .line 140
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 171
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v3

    .line 173
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 177
    new-instance v8, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    .line 178
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    .line 171
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 180
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 181
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 182
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 187
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    .line 180
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 189
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 190
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 191
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 196
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    .line 189
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 198
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 199
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 200
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 205
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v2

    .line 198
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 207
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 208
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 209
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 214
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    move v11, v14

    .line 207
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 216
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 217
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 218
    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v2

    .line 216
    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 170
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->stakingPager:Lcom/iMe/fork/ui/view/CollapsableHeaderTabbedViewPager;

    invoke-virtual {v2}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getThemeDescription()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    .line 228
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->stakingPager:Lcom/iMe/fork/ui/view/CollapsableHeaderTabbedViewPager;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->isSwipeBackEnabled()Z

    move-result p1

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 72
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    .line 74
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupActionBar()V

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupColors()V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupListeners()V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    .line 84
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->clean()V

    .line 80
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public bridge synthetic onPageChanged(Lcom/iMe/fork/utils/AbstractTabbedViewPage;Lcom/iMe/fork/utils/AbstractTabbedViewPage;II)V
    .locals 0

    .line 43
    check-cast p1, Lcom/iMe/fork/utils/TabbedFragmentPage;

    check-cast p2, Lcom/iMe/fork/utils/TabbedFragmentPage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/staking/StakingFragment;->onPageChanged(Lcom/iMe/fork/utils/TabbedFragmentPage;Lcom/iMe/fork/utils/TabbedFragmentPage;II)V

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

    const-string/jumbo p4, "newPage"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "oldPage"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {p2}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 151
    invoke-virtual {p1}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 152
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/iMe/ui/wallet/staking/StakingPresenter;->selectTab(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    .line 94
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 8

    .line 108
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    .line 111
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPageTabs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 109
    invoke-direct {v1, p0, v2}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 108
    invoke-interface {v0, v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->init(Lcom/iMe/navigation/common/configuration/NavigationConfiguration;)V

    .line 114
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->stakingPager:Lcom/iMe/fork/ui/view/CollapsableHeaderTabbedViewPager;

    .line 115
    sget-object v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-virtual {v0, p0, v1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->init(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V

    .line 116
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getElevation()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 119
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabLine:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabActiveText:I

    .line 120
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabUnactiveText:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabSelector:I

    .line 121
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 118
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setColors(IIIII)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->stakingPager:Lcom/iMe/fork/ui/view/CollapsableHeaderTabbedViewPager;

    .line 100
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed;->currentPosition:I

    if-eq v1, p1, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 102
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPageTabs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/staking/StakingNavigationTab;

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingNavigationTab;->getId()I

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->selectTabWithId(IF)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/StakingPresenter;->showStakingInfoHint()V

    .line 167
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    return-void
.end method

.method public onViewReady()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/StakingPresenter;->setupNavigationRouter()V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showStakingInfoHint()V
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/iMe/utils/hints/HintUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/utils/hints/HintUtils;->showStakingInfoHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public updateDashboardItem(Lcom/iMe/model/staking/StakingDashboardItem;)V
    .locals 1

    const-string/jumbo v0, "stakingDashboardItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/StakingDashboardView;->setupItem(Lcom/iMe/model/staking/StakingDashboardItem;)V

    return-void
.end method
