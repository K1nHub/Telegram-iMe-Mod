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
    value = "SMAP\nStakingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingFragment.kt\ncom/iMe/ui/wallet/staking/StakingFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,249:1\n13#2,4:250\n56#3,6:254\n1855#4,2:260\n1855#4,2:262\n1855#4,2:264\n1855#4,2:266\n1549#4:268\n1620#4,3:269\n1855#4,2:272\n11335#5:274\n11670#5,3:275\n*S KotlinDebug\n*F\n+ 1 StakingFragment.kt\ncom/iMe/ui/wallet/staking/StakingFragment\n*L\n45#1:250,4\n46#1:254,6\n71#1:260,2\n82#1:262,2\n88#1:264,2\n92#1:266,2\n139#1:268\n139#1:269,3\n171#1:272,2\n180#1:274\n180#1:275,3\n*E\n"
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

.method public static synthetic $r8$lambda$kJUyq1bf4DYIQtLySHuHUE1lfTM(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupListeners$lambda$14(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u8qoUnrEAdjYvas3AvZusP73-fc(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->showInfoDialog$lambda$12(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/staking/StakingFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 45
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 51
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

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/iMe/ui/wallet/staking/StakingFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/staking/StakingPresenter;

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
    iput-object v1, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 46
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

    .line 46
    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->navigationRouter$delegate:Lkotlin/Lazy;

    .line 51
    new-instance v0, Lcom/iMe/ui/wallet/staking/StakingFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 52
    new-instance v0, Lcom/iMe/ui/wallet/staking/StakingFragment$pageTabs$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$pageTabs$2;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->pageTabs$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v0, Lcom/iMe/ui/wallet/staking/StakingFragment$dashboardView$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$dashboardView$2;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->dashboardView$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getNavigationRouter(Lcom/iMe/ui/wallet/staking/StakingFragment;)Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initDashboardView(Lcom/iMe/ui/wallet/staking/StakingFragment;)Lcom/iMe/ui/custom/StakingDashboardView;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->initDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initPageTabs(Lcom/iMe/ui/wallet/staking/StakingFragment;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->initPageTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showInfoDialog(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->showInfoDialog()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;
    .locals 3

    .line 51
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

    .line 53
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

    .line 46
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

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingFragment;->pageTabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;
    .locals 3

    .line 45
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

    .line 192
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

    .line 180
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

    .line 181
    new-instance v5, Lcom/iMe/model/staking/StakingNavigationTab;

    .line 182
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/staking/StakingTabType;->getFragmentId()I

    move-result v6

    .line 183
    new-instance v14, Lcom/iMe/fork/utils/TabbedFragmentPage;

    .line 184
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/staking/StakingTabType;->getTitleResId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 185
    sget-object v7, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment;->Companion:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;

    invoke-virtual {v7, v4}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;->newInstance(Lcom/iMe/storage/domain/model/staking/StakingTabType;)Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesFragment;

    move-result-object v10

    .line 186
    new-instance v11, Lcom/iMe/ui/wallet/staking/StakingFragment$initPageTabs$1$1;

    invoke-direct {v11, p0, v4}, Lcom/iMe/ui/wallet/staking/StakingFragment$initPageTabs$1$1;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;Lcom/iMe/storage/domain/model/staking/StakingTabType;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v7, v14

    .line 183
    invoke-direct/range {v7 .. v13}, Lcom/iMe/fork/utils/TabbedFragmentPage;-><init>(Ljava/lang/String;ILorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 181
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

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 197
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 198
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 199
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 200
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    sget v2, Lcom/iMe/common/IdFabric$Menu;->STAKING_HELP:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_help:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 201
    new-instance v1, Lcom/iMe/ui/wallet/staking/StakingFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 5

    .line 227
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    .line 228
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

    .line 229
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->stakingPager:Lcom/iMe/fork/ui/view/CollapsableHeaderTabbedViewPager;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 230
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/custom/StakingDashboardView;->setupColors()V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 235
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 236
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    new-instance v2, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/iMe/ui/custom/StakingDashboardView;->setupListeners(Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final setupListeners$lambda$14(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
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

    .line 237
    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingCalculator(Lcom/iMe/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final setupListeners$lambda$16(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;->Companion:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/staking/operations/StakingOperationsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final showInfoDialog()V
    .locals 9

    .line 215
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->staking_info_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->staking_info_more:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 214
    new-instance v6, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createInfoBottomSheetDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 213
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showInfoDialog$lambda$12(Lcom/iMe/ui/wallet/staking/StakingFragment;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    sget v1, Lorg/telegram/messenger/R$string;->staking_info_site_url:I

    invoke-interface {p0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 218
    invoke-static {v0, p0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

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

    .line 151
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

    .line 139
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

    .line 139
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

    .line 135
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeRefreshLayout()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 2

    .line 137
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

    .line 163
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    new-instance v8, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lcom/iMe/ui/wallet/staking/StakingFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/staking/StakingFragment;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 164
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 165
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 166
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 167
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    move v11, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 168
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 162
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->stakingPager:Lcom/iMe/fork/ui/view/CollapsableHeaderTabbedViewPager;

    invoke-virtual {v2}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getThemeDescription()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
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

    .line 172
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->stakingPager:Lcom/iMe/fork/ui/view/CollapsableHeaderTabbedViewPager;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->isSwipeBackEnabled()Z

    move-result p1

    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 70
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 71
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

    .line 72
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
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupActionBar()V

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupColors()V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->setupListeners()V

    .line 62
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

    .line 82
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

    .line 82
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->clean()V

    .line 78
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public bridge synthetic onPageChanged(Lcom/iMe/fork/utils/AbstractTabbedViewPage;Lcom/iMe/fork/utils/AbstractTabbedViewPage;II)V
    .locals 0

    .line 42
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

    const-string p4, "newPage"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "oldPage"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {p2}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 143
    invoke-virtual {p1}, Lcom/iMe/fork/utils/TabbedFragmentPage;->getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/base/mvp/MvpFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 144
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/iMe/ui/wallet/staking/StakingPresenter;->selectTab(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 92
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

    .line 92
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onResume()V

    .line 88
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

    .line 88
    invoke-virtual {v1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetupNavigationRouter()V
    .locals 8

    .line 106
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    .line 109
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPageTabs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 107
    invoke-direct {v1, p0, v2}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 106
    invoke-interface {v0, v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->init(Lcom/iMe/navigation/common/configuration/NavigationConfiguration;)V

    .line 112
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->stakingPager:Lcom/iMe/fork/ui/view/CollapsableHeaderTabbedViewPager;

    .line 113
    sget-object v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-virtual {v0, p0, v1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->init(Lcom/iMe/fork/utils/TabbedViewPagerDelegate;Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;)V

    .line 114
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getTabsView()Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    move-result-object v2

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getElevation()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 117
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabLine:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabActiveText:I

    .line 118
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabUnactiveText:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarTabSelector:I

    .line 119
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 116
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->setColors(IIIII)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->stakingPager:Lcom/iMe/fork/ui/view/CollapsableHeaderTabbedViewPager;

    .line 98
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getPager()Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setPosition(I)V

    .line 100
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

    .line 157
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/StakingPresenter;->showStakingInfoHint()V

    .line 159
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    return-void
.end method

.method public onViewReady()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/StakingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/StakingPresenter;->setupNavigationRouter()V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentStakingBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showStakingInfoHint()V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/iMe/utils/hints/HintUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/utils/hints/HintUtils;->showStakingInfoHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public updateDashboardItem(Lcom/iMe/model/staking/StakingDashboardItem;)V
    .locals 1

    const-string/jumbo v0, "stakingDashboardItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/StakingFragment;->getDashboardView()Lcom/iMe/ui/custom/StakingDashboardView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/StakingDashboardView;->setupItem(Lcom/iMe/model/staking/StakingDashboardItem;)V

    return-void
.end method
