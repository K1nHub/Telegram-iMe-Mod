.class public final Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;
.super Lcom/smedialink/ui/wallet/common/WalletTabFragment;
.source "WalletSwapProtocolsFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;,
        Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapProtocolsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProtocolsFragment.kt\ncom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,166:1\n13#2,4:167\n56#3,6:171\n*S KotlinDebug\n*F\n+ 1 WalletSwapProtocolsFragment.kt\ncom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment\n*L\n41#1:167,4\n42#1:171,6\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final screenType:Lcom/smedialink/model/common/ScreenType;

.field private final swapProtocolsAdapter$delegate:Lkotlin/Lazy;

.field private final toToken:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;


# direct methods
.method public static synthetic $r8$lambda$QpG4s-ugd2q-QvTHYz0ZSTnQspA(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->setupListeners$lambda-5(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gy7COGtiq2Rg7M0rqIGdI71szK8(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->openSwapScreen$lambda-2(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJ9dtRwqQKjdUedz4-tBKzk-8OI(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getThemeDescriptions$lambda-1(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 41
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 45
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->Companion:Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/common/ScreenType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 3

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletTabFragment;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->screenType:Lcom/smedialink/model/common/ScreenType;

    .line 37
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->toToken:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 41
    new-instance p1, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string v1, "mvpDelegate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "presenter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 41
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->swapProtocolsAdapter$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;)V

    const/4 p2, 0x1

    invoke-static {p0, v0, p1, p2, v0}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;

    return-object v0
.end method

.method private final getSwapProtocolsAdapter()Lcom/smedialink/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->swapProtocolsAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda-1(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getSwapProtocolsAdapter()Lcom/smedialink/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static final newInstance(Lcom/smedialink/model/common/ScreenType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;
    .locals 1

    sget-object v0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->Companion:Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;->newInstance(Lcom/smedialink/model/common/ScreenType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object p0

    return-object p0
.end method

.method private final openExchangeScreen(Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;)V
    .locals 14

    .line 139
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->getExchange()Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;

    move-result-object p1

    sget-object v0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getPresenter()Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->startBinanceExchangeFlow()V

    goto :goto_0

    .line 141
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/smedialink/model/wallet/home/BannerSlide;->ASCENDEEX:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/home/BannerSlide;Lorg/fork/enums/LockedSection;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 140
    :cond_2
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    const/16 v8, 0x6c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/smedialink/model/wallet/home/BannerSlide;->GATE:Lcom/smedialink/model/wallet/home/BannerSlide;

    const/4 v13, 0x0

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/home/BannerSlide;Lorg/fork/enums/LockedSection;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method private static final openSwapScreen$lambda-2(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    .line 93
    new-instance v8, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    .line 94
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->getCode()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v2

    .line 95
    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->toToken:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, p2

    .line 93
    invoke-direct/range {v1 .. v7}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    invoke-virtual {v0, v8}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final setupActionBar()V
    .locals 3

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 108
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 109
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_navigation_exchange:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 111
    new-instance v1, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$setupActionBar$1$1;-><init>(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getSwapProtocolsAdapter()Lcom/smedialink/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda-5(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$noName_1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getSwapProtocolsAdapter()Lcom/smedialink/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 130
    instance-of p2, p1, Lcom/smedialink/model/wallet/swap/DexProtocolItem;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/smedialink/model/wallet/swap/DexProtocolItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/swap/DexProtocolItem;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getPresenter()Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/swap/DexProtocolItem;->getInfo()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->toToken:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {p2, p1, p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsPresenter;->startSwapScreenFlow(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    goto :goto_0

    .line 133
    :cond_0
    instance-of p2, p1, Lcom/smedialink/model/wallet/swap/CexProtocolItem;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/smedialink/model/wallet/swap/CexProtocolItem;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/swap/CexProtocolItem;->getInfo()Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->openExchangeScreen(Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 150
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;->recycleSwapProtocols:Landroidx/recyclerview/widget/RecyclerView;

    .line 151
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getSwapProtocolsAdapter()Lcom/smedialink/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 152
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
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

    .line 69
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 68
    new-instance v7, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundGray"

    move-object v1, v9

    .line 69
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 68
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 52
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;->recycleSwapProtocols:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->screenType:Lcom/smedialink/model/common/ScreenType;

    sget-object v0, Lcom/smedialink/model/common/ScreenType;->FULLSCREEN:Lcom/smedialink/model/common/ScreenType;

    if-ne p1, v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->setupActionBar()V

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->setupColors()V

    .line 62
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->setupListeners()V

    .line 63
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->setupRecycleView()V

    .line 65
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProtocolsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openBinanceConvertScreen()V
    .locals 4

    .line 83
    sget-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    new-instance v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/model/wallet/select/SelectableToken;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;->newInstance(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openSwapScreen(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    .line 87
    new-instance v1, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->runWithCheckIsCryptoWalletCreated(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showExchangesProviders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "providers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->getSwapProtocolsAdapter()Lcom/smedialink/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method public showRequiredVerifyDialog()V
    .locals 1

    .line 79
    invoke-static {p0}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createBinanceVerificationRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
