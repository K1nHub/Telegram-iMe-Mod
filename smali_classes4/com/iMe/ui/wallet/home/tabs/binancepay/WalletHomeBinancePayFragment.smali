.class public final Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;
.super Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;
.source "WalletHomeBinancePayFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeBinancePayFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeBinancePayFragment.kt\ncom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,328:1\n13#2,4:329\n56#3,6:333\n1855#4,2:339\n*S KotlinDebug\n*F\n+ 1 WalletHomeBinancePayFragment.kt\ncom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment\n*L\n61#1:329,4\n64#1:333,6\n214#1:339,2\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$Companion;


# instance fields
.field private final binanceApi$delegate:Lkotlin/Lazy;

.field private final binancePayApi$delegate:Lkotlin/Lazy;

.field private final binancePayRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private itemOptions:Lorg/telegram/ui/Components/ItemOptions;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private viewItem:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$0Dm_aNxFrX6yYYJemLwVaA4lG9M(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/iMe/model/wallet/home/TokenSortingData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->showSelectTokensSortingDialog$lambda$8(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/iMe/model/wallet/home/TokenSortingData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3ma1siyNFxiezV1LpTIhfB4Wy4k(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->showConfirmLogOutDialog$lambda$2(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ZSbmjfW7cOXwemonSbJXbc5GHU(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->showLoginGuideDialog$lambda$1(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IIc9olJ7k7tpMJgtMnc6IXJvrKs(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->setupSwipeRefresh$lambda$22(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IJCBdce8RFxBqJ-Jh5iGLPp252M(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->showRequiredWalletCreatedDialog$lambda$6(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ImTeuZVCliam9Q-rbG36XwueCII(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->openPayScreen$lambda$5$lambda$4(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RTeQdOj7vzH7PMe-MFdDG2-55bE(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/iMe/model/wallet/ItemOptionsModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->showMenuItems$lambda$11$lambda$10$lambda$9(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/iMe/model/wallet/ItemOptionsModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ri0qe3c-rjsXVRdt3A4P56SNXic(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners$lambda$19$lambda$16$lambda$14(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UkUb3NbFEdwuSprlGpD9sOHSoCo(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$acuFVmkiyLnWlxNpBgG2EljfT9A(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners$lambda$19$lambda$18(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cikZjISNw1McIWrac-87JKe04yQ(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners$lambda$19$lambda$17(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sY-fS9hnkJLdH0iC-prqeTRGZdE(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners$lambda$19$lambda$13(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2yVnORI4XARlhtjdgp8NqTjRuo(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners$lambda$19$lambda$16$lambda$15(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 61
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 66
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->Companion:Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string/jumbo v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

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

    .line 61
    iput-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->binancePayRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 66
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 69
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$binanceApi$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$binanceApi$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->binanceApi$delegate:Lkotlin/Lazy;

    .line 70
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$binancePayApi$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$binancePayApi$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->binancePayApi$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinanceApi(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)Lcom/binance/android/opensdk/api/BinanceAPI;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinanceApi()Lcom/binance/android/opensdk/api/BinanceAPI;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinancePayApi(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)Lcom/binance/android/binancepay/api/BinancePay;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayApi()Lcom/binance/android/binancepay/api/BinancePay;

    move-result-object p0

    return-object p0
.end method

.method private final getBinanceApi()Lcom/binance/android/opensdk/api/BinanceAPI;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->binanceApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/binance/android/opensdk/api/BinanceAPI;

    return-object v0
.end method

.method private final getBinancePayApi()Lcom/binance/android/binancepay/api/BinancePay;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->binancePayApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/binance/android/binancepay/api/BinancePay;

    return-object v0
.end method

.method private final getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->binancePayRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final onSubItemClick(I)V
    .locals 1

    .line 306
    sget v0, Lcom/iMe/common/IdFabric$Menu;->LOGOUT:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->startLogOutFlow()V

    goto :goto_0

    .line 307
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->RECEIVE:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->openReceiveScreen()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final openPayScreen$lambda$5$lambda$4(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    const-string/jumbo v2, "this@WalletHomeBinancePayFragment.parentActivity"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;-><init>(Landroid/app/Activity;)V

    const-string/jumbo p0, "qrText"

    .line 131
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v1, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->startBinancePayFlow(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V

    return-void
.end method

.method private final setupColors()V
    .locals 5

    .line 238
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 240
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 245
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;->getBinanceAccountProvider()Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;->setActionBarMenuItemDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 248
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object v1

    .line 249
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/BannerProvider;->setBannerOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 258
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/BannerProvider;->setBannerOnItemLongClickListener(Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;)V

    .line 264
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 281
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$19$lambda$13(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->onSubItemClick(I)V

    return-void
.end method

.method private static final setupListeners$lambda$19$lambda$16$lambda$14(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/home/SlideItem;

    .line 252
    new-instance p2, Lorg/telegram/ui/ActionIntroActivity;

    .line 254
    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/SlideItem;->getSlide()Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v5

    const/16 v1, 0x6c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    .line 252
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;Lcom/iMe/model/wallet/home/BannerSlide;Lcom/iMe/fork/enums/LockedSection;)V

    .line 251
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final setupListeners$lambda$19$lambda$16$lambda$15(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    const-string/jumbo p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->viewItem:Landroid/view/View;

    .line 260
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->onItemLongClick()V

    const/4 p0, 0x1

    return p0
.end method

.method private static final setupListeners$lambda$19$lambda$17(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 266
    instance-of p2, p0, Lcom/iMe/model/wallet/home/CardButtonItem;

    if-eqz p2, :cond_0

    .line 267
    check-cast p0, Lcom/iMe/model/wallet/home/CardButtonItem;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/CardButtonItem;->getId()I

    move-result p0

    .line 268
    sget p2, Lorg/telegram/messenger/R$id;->binance_pay_link:I

    if-ne p0, p2, :cond_1

    invoke-direct {p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->startBinancePayLoginFlow()V

    goto :goto_0

    .line 272
    :cond_0
    instance-of p2, p0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    if-eqz p2, :cond_1

    .line 274
    sget-object p2, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->Companion:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;

    .line 275
    new-instance p3, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;

    check-cast p0, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;->getBalanceInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V

    .line 274
    invoke-virtual {p2, p3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$Companion;->newInstance(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    move-result-object p0

    .line 273
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$19$lambda$18(Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 283
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    .line 284
    sget p3, Lorg/telegram/messenger/R$id;->image_copy:I

    if-ne p2, p3, :cond_0

    .line 285
    instance-of p1, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    if-eqz p1, :cond_3

    .line 286
    check-cast p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 290
    :cond_0
    sget p0, Lorg/telegram/messenger/R$id;->image_wallet_crypto_tokens_settings:I

    if-ne p2, p0, :cond_1

    .line 291
    sget-object p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;->Companion:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;

    .line 292
    new-instance p2, Lcom/iMe/model/wallet/crypto/TokensScreenType$Binance;

    invoke-direct {p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBalances()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/iMe/mapper/wallet/select/SelectableMappingKt;->mapToDetailedTokensList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/iMe/model/wallet/crypto/TokensScreenType$Binance;-><init>(Ljava/util/List;)V

    .line 291
    invoke-virtual {p0, p2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/TokensScreenType;)Lcom/iMe/ui/wallet/home/tabs/crypto/settings/WalletHomeCryptoTokensSettingsFragment;

    move-result-object p0

    .line 290
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 296
    :cond_1
    sget p0, Lorg/telegram/messenger/R$id;->image_wallet_order_tokens:I

    if-ne p2, p0, :cond_2

    invoke-direct {p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->onOrderTokensClick()V

    goto :goto_0

    .line 298
    :cond_2
    sget p0, Lorg/telegram/messenger/R$id;->image_wallet_crypto_eye:I

    if-ne p2, p0, :cond_3

    invoke-direct {p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->switchHiddenBalance()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final setupSwipeRefresh()V
    .locals 2

    .line 322
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupSwipeRefresh$lambda$22(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->loadScreenInfo()V

    return-void
.end method

.method private final setupWalletRecycleView()V
    .locals 3

    .line 312
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->recycleWalletHomeBinancePayDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 313
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 314
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v1

    .line 315
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/diff/BinancePayDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/diff/BinancePayDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 314
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string/jumbo v1, "setupWalletRecycleView$lambda$21"

    .line 317
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->disableDefaultAnimation(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private static final showConfirmLogOutDialog$lambda$2(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final showLoginGuideDialog$lambda$1(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final showMenuItems$lambda$11$lambda$10$lambda$9(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/iMe/model/wallet/ItemOptionsModel;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/iMe/model/wallet/ItemOptionsModel;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->onMenuItemClick(I)V

    return-void
.end method

.method private static final showRequiredWalletCreatedDialog$lambda$6(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->selectTab(I)V

    return-void
.end method

.method private static final showSelectTokensSortingDialog$lambda$8(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/iMe/model/wallet/home/TokenSortingData;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object p0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->setTokensSorting(Lcom/iMe/model/wallet/home/TokenSortingData;)V

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

    .line 85
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 84
    new-instance v7, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda11;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    .line 88
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    .line 85
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 84
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 197
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->recycleWalletHomeBinancePayDashboard:Landroidx/recyclerview/widget/RecyclerView;

    .line 198
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

    .line 96
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBinanceUserBalances()V

    return-void
.end method

.method public loadTabInfo()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->loadScreenInfo()V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->setupColors()V

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->setupListeners()V

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->setupWalletRecycleView()V

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->setupSwipeRefresh()V

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 230
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->pauseAnimation()V

    .line 231
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->itemOptions:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->viewItem:Landroid/view/View;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 224
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 225
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;->getBannerProvider()Lcom/iMe/ui/adapter/provider/BannerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->resumeAnimation()V

    return-void
.end method

.method public openConvertScreen()V
    .locals 4

    .line 142
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    new-instance v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v2, v3, v2}, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;->newInstance(Lcom/iMe/model/wallet/swap/WalletSwapScreenType;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openHistoryScreen()V
    .locals 4

    .line 146
    sget-object v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;->Companion:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$Fullscreen;->INSTANCE:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$Fullscreen;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;->newInstance$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$Companion;Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openPayScreen()V
    .locals 2

    .line 127
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/16 v1, 0x6d

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    .line 128
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda12;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;->setQrLoginDelegate(Lorg/telegram/ui/ActionIntroActivity$ActionIntroQRLoginDelegate;)V

    .line 127
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openReceiveScreen()V
    .locals 3

    .line 138
    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForBinancePay(Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openReplenishScreen(Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/iMe/ui/wallet/send/WalletSendFragment;->Companion:Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;

    .line 152
    new-instance v9, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v9

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;-><init>(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    sget-object p1, Lcom/iMe/model/wallet/send/WalletSendScreenType;->BINANCE_REPLENISH:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    .line 151
    invoke-virtual {v0, v9, p1}, Lcom/iMe/ui/wallet/send/WalletSendFragment$Companion;->newInstance(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/model/wallet/send/WalletSendScreenType;)Lcom/iMe/ui/wallet/send/WalletSendFragment;

    move-result-object p1

    .line 150
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

    const-string/jumbo v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;

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

    const-string/jumbo v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v3, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 115
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 122
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public showConfirmPaymentDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string/jumbo v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

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

    const-string/jumbo v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v3, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, p2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    .line 105
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showMenuItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/ItemOptionsModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->viewItem:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/wallet/ItemOptionsModel;

    .line 216
    invoke-virtual {v1}, Lcom/iMe/model/wallet/ItemOptionsModel;->getIconResId()I

    move-result v2

    .line 217
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/iMe/model/wallet/ItemOptionsModel;->getTextResId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    new-instance v4, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;Lcom/iMe/model/wallet/ItemOptionsModel;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 213
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->itemOptions:Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletHomeBinancePayBinding;->getRoot()Lcom/iMe/ui/custom/SlopSwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public showRequiredVerifyDialog()V
    .locals 1

    .line 159
    invoke-static {p0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createBinanceVerificationRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showRequiredWalletCreatedDialog()V
    .locals 1

    .line 163
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    invoke-static {p0, v0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showSelectTokensSortingDialog(Lcom/iMe/model/wallet/home/TokenSortingData;)V
    .locals 3

    const-string/jumbo v0, "tokenSortingData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/WalletHomeTabFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v2, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSelectTokensSortingDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/model/wallet/home/TokenSortingData;ZLcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showSuccessPaymentProcessedDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

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

    .line 185
    invoke-static/range {v1 .. v7}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showUserInfo(Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V
    .locals 1

    const-string/jumbo v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayFragment;->getBinancePayRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;->updateUserInfo(Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V

    return-void
.end method
