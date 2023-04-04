.class public final Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;
.super Lcom/iMe/ui/wallet/home/v2/tabs/WalletHomeTabFragment;
.source "WalletHomeBinancePayFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeBinancePayFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeBinancePayFragment.kt\ncom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,267:1\n13#2,4:268\n56#3,6:272\n*S KotlinDebug\n*F\n+ 1 WalletHomeBinancePayFragment.kt\ncom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment\n*L\n49#1:268,4\n50#1:272,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$Companion;


# instance fields
.field private final binanceApi$delegate:Lkotlin/Lazy;

.field private final binancePayApi$delegate:Lkotlin/Lazy;

.field private final binancePayRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$IKzDevQLPewLYSXDE59I7Ib_AfQ(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->openPayScreen$lambda$5$lambda$4(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M4GmfEU6ceIzBNaXodnjlIQ0RP8(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners$lambda$14$lambda$13(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Meu9u1_weL0TIMQ3UPQjs2TFDuU(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->showRequiredWalletCreatedDialog$lambda$6(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mq2Qva1yN_MEvURjDFdXMt-IEcs(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->showConfirmLogOutDialog$lambda$2(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ok4s1lZS33oT9BALPCCEySHH0ac(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->setupSwipeRefresh$lambda$17(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S_rm7gJU_QHeijyWak1a0rJUmrM(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->showLoginGuideDialog$lambda$1(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XCldgwTuLEovZC7B-NrUX0G-pgg(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners$lambda$14$lambda$9(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XT6Fv84IgNQM4LPy59ndWQPUj-k(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners$lambda$14$lambda$10(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ghAZYTw_8jbIBA8shUG655hzEMU(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners$lambda$14$lambda$13$lambda$12(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pavip4OkIFjyIPIALAqUgFEZvFM(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNQfJugdqjUETqzT3YMg_do4PUo(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners$lambda$14$lambda$11(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 49
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 53
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->Companion:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/WalletHomeTabFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

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

    .line 49
    iput-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->binancePayRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 53
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 54
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binanceApi$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binanceApi$2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->binanceApi$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binancePayApi$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$binancePayApi$2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->binancePayApi$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinanceApi(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)Lcom/binance/android/opensdk/api/BinanceAPI;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinanceApi()Lcom/binance/android/opensdk/api/BinanceAPI;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinancePayApi(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)Lcom/binance/android/binancepay/api/BinancePay;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayApi()Lcom/binance/android/binancepay/api/BinancePay;

    move-result-object p0

    return-object p0
.end method

.method private final getBinanceApi()Lcom/binance/android/opensdk/api/BinanceAPI;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->binanceApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/binance/android/opensdk/api/BinanceAPI;

    return-object v0
.end method

.method private final getBinancePayApi()Lcom/binance/android/binancepay/api/BinancePay;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->binancePayApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/binance/android/binancepay/api/BinancePay;

    return-object v0
.end method

.method private final getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->binancePayRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const-string v1, "chats_actionBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final onSubItemClick(I)V
    .locals 1

    .line 243
    sget v0, Lcom/iMe/common/IdFabric$Menu;->LOGOUT:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->startLogOutFlow()V

    goto :goto_0

    .line 244
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->RECEIVE:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->openReceiveScreen()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final openPayScreen$lambda$5$lambda$4(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Ljava/lang/String;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object v0

    new-instance v1, Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    const-string v2, "this@WalletHomeBinancePayFragment.parentActivity"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;-><init>(Landroid/app/Activity;)V

    const-string p0, "qrText"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->startBinancePayFlow(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V

    return-void
.end method

.method private final setupColors()V
    .locals 5

    .line 189
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const-string v3, "chats_actionBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 191
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 196
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->getBinanceAccountProvider()Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->setActionBarMenuItemDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 198
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/BannerProvider;->setBannerOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 202
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 214
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$14$lambda$10(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/home/SlideItem;

    .line 200
    new-instance p2, Lorg/telegram/ui/ActionIntroActivity;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/SlideItem;->getSlide()Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v5

    const/16 v1, 0x6c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/model/wallet/home/BannerSlide;Lcom/iMe/fork/enums/LockedSection;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final setupListeners$lambda$14$lambda$11(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 204
    instance-of p2, p1, Lcom/iMe/model/wallet/home/CardButtonItem;

    if-eqz p2, :cond_0

    .line 205
    check-cast p1, Lcom/iMe/model/wallet/home/CardButtonItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/CardButtonItem;->getId()I

    move-result p1

    .line 206
    sget p2, Lorg/telegram/messenger/R$id;->binance_pay_link:I

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->startBinancePayLoginFlow()V

    goto :goto_0

    .line 209
    :cond_0
    instance-of p2, p1, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    if-eqz p2, :cond_1

    .line 210
    sget-object p2, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->Companion:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;

    new-instance p3, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    check-cast p1, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    invoke-virtual {p2, p3}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;->newInstance(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$14$lambda$13(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 216
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    .line 217
    sget p3, Lorg/telegram/messenger/R$id;->image_copy:I

    if-ne p2, p3, :cond_0

    .line 218
    instance-of p0, p1, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    if-eqz p0, :cond_3

    .line 219
    check-cast p1, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_0
    sget p1, Lorg/telegram/messenger/R$id;->image_wallet_crypto_tokens_settings:I

    if-ne p2, p1, :cond_1

    .line 223
    sget-object p1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->Companion:Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;

    .line 224
    new-instance p2, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;

    .line 225
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->getBalances()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/iMe/mapper/wallet/select/SelectableMappingKt;->mapToSelectableBinanceTokenBalanceInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 224
    invoke-direct {p2, p3}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType$Binance;-><init>(Ljava/util/List;)V

    .line 223
    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$ScreenType;)Lcom/iMe/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 229
    :cond_1
    sget p1, Lorg/telegram/messenger/R$id;->image_wallet_order_tokens:I

    if-ne p2, p1, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    .line 232
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->getSelectedTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object p2

    .line 230
    new-instance p3, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSelectTokensOrderTypeDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 235
    :cond_2
    sget p1, Lorg/telegram/messenger/R$id;->image_wallet_crypto_eye:I

    if-ne p2, p1, :cond_3

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->switchHiddenBalance()V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$14$lambda$13$lambda$12(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->setTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V

    return-void
.end method

.method private static final setupListeners$lambda$14$lambda$9(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->onSubItemClick(I)V

    return-void
.end method

.method private final setupSwipeRefresh()V
    .locals 2

    .line 259
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupSwipeRefresh$lambda$17(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->loadScreenInfo()V

    return-void
.end method

.method private final setupWalletRecycleView()V
    .locals 3

    .line 249
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->recycleWalletHomeBinancePayDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 250
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 251
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v1

    .line 252
    new-instance v2, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/diff/BinancePayDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/diff/BinancePayDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 251
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string v1, "setupWalletRecycleView$lambda$16"

    .line 254
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->disableDefaultAnimation(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private static final showConfirmLogOutDialog$lambda$2(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final showLoginGuideDialog$lambda$1(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final showRequiredWalletCreatedDialog$lambda$6(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/v2/tabs/WalletHomeTabFragment;->selectTab(I)V

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

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 68
    new-instance v7, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

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

    .line 169
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->recycleWalletHomeBinancePayDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public loadBalances()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->getBinanceUserBalances()V

    return-void
.end method

.method public loadTabInfo()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;->loadScreenInfo()V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->setupColors()V

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners()V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->setupWalletRecycleView()V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->setupSwipeRefresh()V

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 181
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->pauseAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 176
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->resumeAnimation()V

    return-void
.end method

.method public openConvertScreen()V
    .locals 4

    .line 121
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;-><init>(Lcom/iMe/model/wallet/select/SelectableToken;Lcom/iMe/model/wallet/select/SelectableToken;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openHistoryScreen()V
    .locals 4

    .line 125
    sget-object v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;->Companion:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;

    sget-object v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$Fullscreen;->INSTANCE:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$Fullscreen;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;->newInstance$default(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openPayScreen()V
    .locals 2

    .line 109
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/16 v1, 0x6d

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    .line 110
    new-instance v1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;->setQrLoginDelegate(Lorg/telegram/ui/ActionIntroActivity$ActionIntroQRLoginDelegate;)V

    .line 109
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openReceiveScreen()V
    .locals 3

    .line 117
    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/iMe/model/wallet/select/SelectableToken;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinancePay(Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openReplenishScreen(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 9

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/iMe/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinanceReplenish(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public render(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public showConfirmLogOutDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    new-instance v3, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, p2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 98
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 104
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public showConfirmPaymentDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showLoginGuideDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v3, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 89
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showRequiredVerifyDialog()V
    .locals 1

    .line 135
    invoke-static {p0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createBinanceVerificationRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRequiredWalletCreatedDialog()V
    .locals 1

    .line 139
    new-instance v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-static {p0, v0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showSuccessPaymentProcessedDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "btnText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 157
    invoke-static/range {v1 .. v7}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showUserInfo(Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V
    .locals 1

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;->updateUserInfo(Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V

    return-void
.end method
