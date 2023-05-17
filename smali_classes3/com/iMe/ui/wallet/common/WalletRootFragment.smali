.class public final Lcom/iMe/ui/wallet/common/WalletRootFragment;
.super Lcom/iMe/ui/base/WalletAuthFragment;
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
    value = "SMAP\nWalletRootFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletRootFragment.kt\ncom/iMe/ui/wallet/common/WalletRootFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 View.kt\nandroidx/core/view/ViewKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,279:1\n13#2,4:280\n13#2,4:284\n56#3,6:288\n1855#4,2:294\n1855#4,2:296\n1855#4,2:307\n2634#4:315\n247#5,9:298\n215#6,2:309\n262#7,2:311\n262#7,2:313\n1#8:316\n*S KotlinDebug\n*F\n+ 1 WalletRootFragment.kt\ncom/iMe/ui/wallet/common/WalletRootFragment\n*L\n46#1:280,4\n47#1:284,4\n48#1:288,6\n81#1:294,2\n86#1:296,2\n124#1:307,2\n231#1:315\n90#1:298,9\n138#1:309,2\n145#1:311,2\n149#1:313,2\n231#1:316\n*E\n"
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

    .line 46
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/common/WalletRootPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 47
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "airdropPresenter"

    const-string v4, "getAirdropPresenter()Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 51
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

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/base/WalletAuthFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/iMe/ui/wallet/common/WalletRootFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "presenter"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 46
    iput-object v1, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 47
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

    .line 48
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

    .line 48
    iput-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->bottomNavigationRouter$delegate:Lkotlin/Lazy;

    .line 51
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

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->backAction()V

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/common/WalletRootFragment;)Lcom/iMe/ui/wallet/common/WalletRootPresenter;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getPresenter()Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final backAction()V
    .locals 2

    .line 191
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getCurrentScreen()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/common/WalletTabFragment;

    .line 192
    instance-of v0, v0, Lcom/iMe/ui/wallet/home/v2/WalletHomeFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 193
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

    .line 51
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

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->bottomNavigationRouter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/common/router/base/NavigationRouter;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/common/WalletRootPresenter;
    .locals 3

    .line 46
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

    .line 216
    new-instance v1, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    .line 217
    sget v2, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    .line 218
    sget-object v3, Lcom/iMe/ui/wallet/home/v2/WalletHomeFragment;->Companion:Lcom/iMe/ui/wallet/home/v2/WalletHomeFragment$Companion;

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/home/v2/WalletHomeFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/home/v2/WalletHomeFragment;

    move-result-object v3

    .line 219
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->drawer_wallet_item_title:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;-><init>(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 221
    new-instance v1, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    .line 222
    sget v2, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_exchange:I

    .line 223
    sget-object v3, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;->Companion:Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;

    sget-object v4, Lcom/iMe/model/common/ScreenType;->TAB:Lcom/iMe/model/common/ScreenType;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v5}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;->newInstance$default(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;ILjava/lang/Object;)Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object v3

    .line 224
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_navigation_exchange:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;-><init>(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 226
    new-instance v1, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;

    .line 227
    sget v2, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_settings:I

    .line 228
    sget-object v3, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->Companion:Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$Companion;

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;

    move-result-object v3

    .line 229
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_settings_toolbar_title:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;-><init>(ILcom/iMe/ui/wallet/common/WalletTabFragment;Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 215
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

    .line 232
    invoke-virtual {v2}, Lcom/iMe/model/wallet/navigation/WalletBottomNavigationTab;->getFragment()Lcom/iMe/ui/wallet/common/WalletTabFragment;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->setBottomNavigationDelegate(Lcom/iMe/ui/wallet/common/BottomNavigationDelegate;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$4(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object p0

    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->cardBottomNavigationWrapper:Landroidx/cardview/widget/CardView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 120
    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->realtimeBlur:Lcom/github/mmin18/widget/RealtimeBlurView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result v0

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

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 170
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 171
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->drawer_wallet_item_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 174
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 175
    sget v2, Lcom/iMe/common/IdFabric$Menu;->NOTIFICATIONS:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_notifications:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->notificationMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 176
    sget v2, Lcom/iMe/common/IdFabric$Menu;->WALLET_CONNECT:I

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_connect:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->walletConnectMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 178
    new-instance v1, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupActionBar$1$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupBottomNavigationBar()V
    .locals 23

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

    .line 237
    new-instance v1, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupBottomNavigationBar$1$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupBottomNavigationBar$1$1;-><init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    invoke-virtual {v0, v1}, Lcom/fxn/BubbleTabBar;->addBubbleListener(Lcom/fxn/OnBubbleClickListener;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/fxn/parser/MenuItem;

    .line 244
    new-instance v12, Lcom/fxn/parser/MenuItem;

    .line 245
    sget v4, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->wallet_navigation_wallet:I

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 247
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_nav_wallet_24:I

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    const v13, 0x106000b

    invoke-interface {v3, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v8

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v3, v12

    .line 244
    invoke-direct/range {v3 .. v11}, Lcom/fxn/parser/MenuItem;-><init>(ILjava/lang/CharSequence;IZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    aput-object v12, v1, v3

    .line 251
    new-instance v3, Lcom/fxn/parser/MenuItem;

    .line 252
    sget v15, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_exchange:I

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_navigation_exchange:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 254
    sget v17, Lorg/telegram/messenger/R$drawable;->fork_ic_exchange_24:I

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    invoke-interface {v4, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v19

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x20

    const/16 v22, 0x0

    move-object v14, v3

    .line 251
    invoke-direct/range {v14 .. v22}, Lcom/fxn/parser/MenuItem;-><init>(ILjava/lang/CharSequence;IZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 258
    new-instance v3, Lcom/fxn/parser/MenuItem;

    .line 259
    sget v15, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_settings:I

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_navigation_settings:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 261
    sget v17, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    invoke-interface {v4, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v19

    move-object v14, v3

    .line 258
    invoke-direct/range {v14 .. v22}, Lcom/fxn/parser/MenuItem;-><init>(ILjava/lang/CharSequence;IZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 243
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fxn/BubbleTabBar;->setMenu(Ljava/util/List;)V

    return-void
.end method

.method private final setupColors()V
    .locals 6

    .line 198
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    .line 199
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->realtimeBlur:Lcom/github/mmin18/widget/RealtimeBlurView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/16 v4, 0x37

    invoke-static {v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 200
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/fxn/BubbleTabBar;->setDisableIconColor(Landroid/content/Context;I)V

    .line 201
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fxn/BubbleTabBar;->setTabContainerBackground(Landroid/content/Context;I)V

    return-void
.end method

.method private final setupNavigationRouter()V
    .locals 3

    .line 206
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    .line 209
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getTabs()Ljava/util/List;

    move-result-object v2

    .line 207
    invoke-direct {v1, p0, v2}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 206
    invoke-interface {v0, v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->init(Lcom/iMe/navigation/common/configuration/NavigationConfiguration;)V

    return-void
.end method


# virtual methods
.method public checkNeedToShowAirdropDialog()V
    .locals 0

    .line 157
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

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->cardBottomNavigationWrapper:Landroidx/cardview/widget/CardView;

    const-string v1, "binding.cardBottomNavigationWrapper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/common/WalletRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;

    invoke-direct {v2, v0, p1}, Lcom/iMe/ui/wallet/common/WalletRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public getFragmentContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 160
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

    .line 112
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 113
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 114
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 115
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    move v11, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 116
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 117
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 111
    new-instance v10, Lcom/iMe/ui/wallet/common/WalletRootFragment$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    .line 122
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    .line 117
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 111
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/wallet/common/WalletTabFragment;

    .line 125
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
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

    .line 81
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 106
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

    .line 85
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    .line 86
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

    .line 86
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->onDestroyView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->clean()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 102
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getCurrentScreen()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/common/WalletTabFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->onResume()V

    .line 97
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

    .line 132
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletGlobalBinding;->bottomNavigationWallet:Lcom/fxn/BubbleTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fxn/BubbleTabBar;->setSelectedById(IZ)V

    .line 133
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->show(I)V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->onViewReady()V

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

    .line 137
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

    .line 138
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

    .line 139
    invoke-virtual {v0, v2, v1}, Lcom/fxn/BubbleTabBar;->setTabVisible(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showAirdropDialog()V
    .locals 1

    .line 153
    sget-object v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog;->Companion:Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showNotificationItem(Z)V
    .locals 1

    .line 145
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

    .line 149
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
