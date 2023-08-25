.class public final Lcom/iMe/ui/wallet/common/WalletRootFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletRootFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/common/BottomNavigationDelegate;
.implements Lcom/iMe/ui/wallet/common/WalletRootView;
.implements Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;
.implements Lcom/iMe/ui/wallet/airdrop/WalletAirdropView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletRootFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletRootFragment.kt\ncom/iMe/ui/wallet/common/WalletRootFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 View.kt\nandroidx/core/view/ViewKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,317:1\n13#2,4:318\n13#2,4:322\n56#3,6:326\n1855#4,2:332\n1855#4,2:334\n1855#4,2:345\n2634#4:353\n263#5,9:336\n215#6,2:347\n262#7,2:349\n262#7,2:351\n1#8:354\n*S KotlinDebug\n*F\n+ 1 WalletRootFragment.kt\ncom/iMe/ui/wallet/common/WalletRootFragment\n*L\n49#1:318,4\n50#1:322,4\n51#1:326,6\n81#1:332,2\n91#1:334,2\n154#1:345,2\n269#1:353\n96#1:336,9\n166#1:347,2\n173#1:349,2\n177#1:351,2\n269#1:354\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final bottomNavigationRouter$delegate:Lkotlin/Lazy;

.field private notificationMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private walletConnectMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method public static synthetic $r8$lambda$fIyo89fQM_lUzVjYvc1qTjj2YHI(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getThemeDescriptions$lambda$4(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/common/WalletRootFragment;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 49
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/common/WalletRootPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 50
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "airdropPresenter"

    const-string v4, "getAirdropPresenter()Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 53
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/common/WalletRootFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->Companion:Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/iMe/ui/wallet/common/WalletRootFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string/jumbo v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "presenter"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 49
    iput-object v1, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 50
    new-instance v0, Lcom/iMe/ui/wallet/common/WalletRootFragment$airdropPresenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$airdropPresenter$2;-><init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 51
    invoke-static {}, Lcom/iMe/di/module/NavigationModuleKt;->getWALLET_ROOT_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/ui/wallet/common/WalletRootFragment$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/iMe/ui/wallet/common/WalletRootFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->bottomNavigationRouter$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v0, Lcom/iMe/ui/wallet/common/WalletRootFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v3, v0, v1, v3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$backAction(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->backAction()V

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/common/WalletRootFragment;)Lcom/iMe/ui/wallet/common/WalletRootPresenter;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getPresenter()Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final backAction()V
    .locals 2

    .line 221
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getCurrentScreen()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/common/WalletTabFragment;

    .line 222
    instance-of v0, v0, Lcom/iMe/ui/wallet/home/WalletHomeFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getPresenter()Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->selectTab(I)V

    :goto_0
    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/common/WalletRootFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    return-object v0
.end method

.method private final getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/navigation/common/router/base/NavigationRouter<",
            "Lcom/iMe/ui/wallet/common/WalletTabFragment;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->bottomNavigationRouter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/common/router/base/NavigationRouter;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/common/WalletRootPresenter;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/common/WalletRootFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    return-object v0
.end method

.method private final getTabs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    .line 254
    new-instance v1, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    .line 255
    sget v2, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    .line 256
    sget-object v3, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->Companion:Lcom/iMe/ui/wallet/home/WalletHomeFragment$Companion;

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/home/WalletHomeFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/home/WalletHomeFragment;

    move-result-object v3

    .line 257
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->drawer_wallet_item_title:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;-><init>(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 259
    new-instance v1, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    .line 260
    sget v2, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_exchange:I

    .line 261
    sget-object v3, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;->Companion:Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;

    sget-object v4, Lcom/iMe/model/common/ScreenType;->TAB:Lcom/iMe/model/common/ScreenType;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v5}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;->newInstance$default(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object v3

    .line 262
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_navigation_exchange:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;-><init>(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 264
    new-instance v1, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    .line 265
    sget v2, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_settings:I

    .line 266
    sget-object v3, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->Companion:Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$Companion;

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;

    move-result-object v3

    .line 267
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_settings_toolbar_title:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;-><init>(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 253
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

    check-cast v2, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    .line 270
    invoke-virtual {v2}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getFragment()Lcom/iMe/ui/wallet/common/WalletTabFragment;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->setBottomNavigationDelegate(Lcom/iMe/ui/wallet/common/BottomNavigationDelegate;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$4(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object p0

    .line 145
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->cardBottomNavigationWrapper:Landroidx/cardview/widget/CardView;

    const/high16 v1, 0x41f00000    # 30.0f

    .line 146
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 145
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 147
    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->realtimeBlur:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 148
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0x37

    .line 149
    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    return-void
.end method

.method public static final newInstance()Lcom/iMe/ui/wallet/common/WalletRootFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->Companion:Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/common/WalletRootFragment;

    move-result-object v0

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 4

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 194
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 195
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->drawer_wallet_item_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 196
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 198
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 200
    sget v2, Lcom/iMe/common/IdFabric$Menu;->NOTIFICATIONS:I

    .line 201
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    .line 199
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->notificationMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 204
    sget v2, Lcom/iMe/common/IdFabric$Menu;->WALLET_CONNECT:I

    .line 205
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_connect:I

    .line 203
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->walletConnectMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 208
    new-instance v1, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupBottomNavigationBar()V
    .locals 23

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

    .line 275
    new-instance v1, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupBottomNavigationBar$1$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupBottomNavigationBar$1$1;-><init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    invoke-virtual {v0, v1}, Lcom/fxn/BubbleTabBar;->addBubbleListener(Lcom/fxn/OnBubbleClickListener;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/fxn/parser/MenuItem;

    .line 283
    new-instance v12, Lcom/fxn/parser/MenuItem;

    .line 284
    sget v4, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->wallet_navigation_wallet:I

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 286
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_nav_wallet_24:I

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    const v13, 0x106000b

    invoke-interface {v3, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v8

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v3, v12

    .line 283
    invoke-direct/range {v3 .. v11}, Lcom/fxn/parser/MenuItem;-><init>(ILjava/lang/CharSequence;IZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    aput-object v12, v1, v3

    .line 290
    new-instance v3, Lcom/fxn/parser/MenuItem;

    .line 291
    sget v15, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_exchange:I

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_navigation_exchange:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 293
    sget v17, Lorg/telegram/messenger/R$drawable;->fork_ic_exchange_24:I

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    invoke-interface {v4, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v19

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x20

    const/16 v22, 0x0

    move-object v14, v3

    .line 290
    invoke-direct/range {v14 .. v22}, Lcom/fxn/parser/MenuItem;-><init>(ILjava/lang/CharSequence;IZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 297
    new-instance v3, Lcom/fxn/parser/MenuItem;

    .line 298
    sget v15, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_settings:I

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_navigation_settings:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 300
    sget v17, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    invoke-interface {v4, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v19

    move-object v14, v3

    .line 297
    invoke-direct/range {v14 .. v22}, Lcom/fxn/parser/MenuItem;-><init>(ILjava/lang/CharSequence;IZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 282
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Lcom/fxn/BubbleTabBar;->setMenu(Ljava/util/List;)V

    return-void
.end method

.method private final setupColors()V
    .locals 6

    .line 228
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    .line 229
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->realtimeBlur:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 230
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/16 v4, 0x37

    invoke-static {v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result v3

    .line 229
    invoke-virtual {v1, v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 232
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

    .line 233
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    .line 232
    invoke-virtual {v1, v3, v5}, Lcom/fxn/BubbleTabBar;->setDisableIconColor(Landroid/content/Context;I)V

    .line 236
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

    .line 237
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/fxn/BubbleTabBar;->setTabContainerBackground(Landroid/content/Context;I)V

    return-void
.end method

.method private final setupNavigationRouter()V
    .locals 3

    .line 244
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 245
    new-instance v1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    .line 247
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getTabs()Ljava/util/List;

    move-result-object v2

    .line 245
    invoke-direct {v1, p0, v2}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 244
    invoke-interface {v0, v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->init(Lcom/iMe/navigation/common/configuration/NavigationConfiguration;)V

    return-void
.end method


# virtual methods
.method public checkNeedToShowAirdropDialog()V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->showAirdropDialog()V

    return-void
.end method

.method public getBottomNavigationPadding(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->cardBottomNavigationWrapper:Landroidx/cardview/widget/CardView;

    const-string v1, "binding.cardBottomNavigationWrapper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/common/WalletRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;

    invoke-direct {v2, v0, p1}, Lcom/iMe/ui/wallet/common/WalletRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public getFragmentContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 188
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->frameFragmentContainer:Landroid/widget/FrameLayout;

    const-string v1, "binding.frameFragmentContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    return-object p0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 118
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 119
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 120
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 121
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 118
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 123
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 124
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 125
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 126
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    .line 123
    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 128
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 129
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 130
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 131
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    .line 128
    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 133
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 134
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 135
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 136
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    .line 133
    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 138
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 139
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 140
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 138
    invoke-direct {v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 143
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 117
    new-instance v3, Lcom/iMe/ui/wallet/common/WalletRootFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    .line 152
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/4 v5, 0x0

    .line 143
    invoke-direct {v1, v5, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 117
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v2, Lcom/iMe/ui/wallet/common/WalletTabFragment;

    .line 155
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

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getCurrentScreen()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/common/WalletTabFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 80
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/wallet/common/WalletTabFragment;

    .line 82
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->backAction()V

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->setupActionBar()V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->setupColors()V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->setupBottomNavigationBar()V

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

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

    check-cast v1, Lcom/iMe/ui/wallet/common/WalletTabFragment;

    .line 91
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->onDestroyView()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->clean()V

    .line 76
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getCurrentScreen()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/common/WalletTabFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onResume()V

    .line 103
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getCurrentScreen()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/common/WalletTabFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->onResume()V

    :cond_0
    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 160
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fxn/BubbleTabBar;->setSelectedById(IZ)V

    .line 161
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->show(I)V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onViewReady()V

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->setupNavigationRouter()V

    return-void
.end method

.method public setupNavigationTabsEnabled(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "availableTabs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

    .line 215
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 167
    invoke-virtual {v0, v2, v1}, Lcom/fxn/BubbleTabBar;->setTabVisible(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showAirdropDialog()V
    .locals 1

    .line 181
    sget-object v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog;->Companion:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showNotificationItem(Z)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->notificationMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public showWalletConnectItem(Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->walletConnectMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
