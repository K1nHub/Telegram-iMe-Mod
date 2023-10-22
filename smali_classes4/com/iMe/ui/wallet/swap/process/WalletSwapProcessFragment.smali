.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletSwapProcessFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;,
        Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapProcessFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProcessFragment.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 8 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,655:1\n13#2,4:656\n56#3,6:660\n262#4,2:666\n262#4,2:668\n1#5:670\n1#5:673\n1#5:678\n1#5:683\n1#5:688\n1#5:693\n4#6:671\n5#6,2:674\n4#6:676\n5#6,2:679\n4#6:681\n5#6,2:684\n4#6:686\n5#6,2:689\n4#6:691\n5#6,2:694\n2634#7:672\n2634#7:677\n2634#7:682\n2634#7:687\n2634#7:692\n58#8,23:696\n93#8,3:719\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessFragment.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment\n*L\n69#1:656,4\n72#1:660,6\n173#1:666,2\n174#1:668,2\n539#1:673\n549#1:678\n552#1:683\n556#1:688\n565#1:693\n539#1:671\n539#1:674,2\n549#1:676\n549#1:679,2\n552#1:681\n552#1:684,2\n556#1:686\n556#1:689,2\n565#1:691\n565#1:694,2\n539#1:672\n549#1:677\n552#1:682\n556#1:687\n565#1:692\n620#1:696,23\n620#1:719,3\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

.field private timer:Landroid/os/CountDownTimer;

.field private final tokenBuyCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$8hUC46fRcGPMtvFkLnYGpU007l8(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showApprovalConfirmationDialog$lambda$22(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GiPbpSMMXlaVL4G-vh67yzb8J58(Lkotlin/jvm/functions/Function2;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->openSelectTokenScreen$lambda$24(Lkotlin/jvm/functions/Function2;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LeKT8zpm6g3tLw2eC3LhbsWxENY(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$20$lambda$16(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qo8bnLp9Yfh6tHcKoigks64Yn-8(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$20$lambda$18(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TVI-MtJGxPtcRzrK1jQZD_dIRo4(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showTokenBalance$lambda$9$lambda$8(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X5Yf2AjKmaDIR0i7rR18qRN2X4c(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$h4xUVu5SyeTmyuVHWNOqwUKUgD8(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showChooseNetworkDialog$lambda$0(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j79saNOip7JsHSAUnI48aRsD9Hg(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showSuccessSwapAlert$lambda$21(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nD7yG6k5jiy3FCXPTjE0p4WXZRQ(Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupListeners$lambda$41$lambda$40$lambda$39(Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nsJC8JlPwIyz8WemBalPr6AK-zw(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$20$lambda$12(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xYfYAcGcRSflFfFClrtYMvgySl4(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$20$lambda$13(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 69
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 74
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/swap/WalletSwapScreenType;)V
    .locals 4

    const-string/jumbo v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    .line 69
    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string/jumbo v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 69
    iput-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    return-object v0
.end method

.method private final getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    return-object v0
.end method

.method public static final newInstance(Lcom/iMe/model/wallet/swap/WalletSwapScreenType;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;->newInstance(Lcom/iMe/model/wallet/swap/WalletSwapScreenType;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    move-result-object p0

    return-object p0
.end method

.method private static final openSelectTokenScreen$lambda$24(Lkotlin/jvm/functions/Function2;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    .line 499
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final renderState$lambda$20$lambda$12(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->onApproveClick()V

    return-void
.end method

.method private static final renderState$lambda$20$lambda$13(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->onApprovalInfoClick()V

    return-void
.end method

.method private static final renderState$lambda$20$lambda$16(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSwapFlow()V

    return-void
.end method

.method private static final renderState$lambda$20$lambda$18(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->onApprovalInfoClick()V

    return-void
.end method

.method private final setupActionBar()V
    .locals 2

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 521
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 522
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 523
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 535
    invoke-static {p0, v0, v0, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupErrorDependedColors$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;IIILjava/lang/Object;)V

    .line 536
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v2

    .line 537
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-virtual {v3}, Lcom/iMe/ui/custom/FeeView;->setupColors()V

    .line 538
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    invoke-virtual {v3}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupColors()V

    new-array v3, v1, [Landroid/view/View;

    .line 539
    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewDividerLeft:Landroid/view/View;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewDividerRight:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Landroid/view/View;

    .line 540
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 543
    :cond_0
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/widget/TextView;

    .line 544
    iget-object v7, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSwapProtocolDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textSwapProtocolDescription"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v0

    iget-object v7, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textBalance:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textBalance"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v5

    .line 545
    iget-object v7, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputRate:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textOutputRate"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v6

    iget-object v7, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textOutputFiat"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v1

    .line 546
    iget-object v7, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textInputAdditionalDescription"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    aput-object v7, v4, v8

    .line 542
    invoke-static {v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColorKey(I[Landroid/widget/TextView;)V

    .line 548
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearContent:Landroid/widget/LinearLayout;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-array v3, v6, [Landroidx/appcompat/widget/AppCompatImageView;

    .line 549
    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageInputArrow:Landroidx/appcompat/widget/AppCompatImageView;

    aput-object v4, v3, v0

    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageOutputArrow:Landroidx/appcompat/widget/AppCompatImageView;

    aput-object v4, v3, v5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v7, "setupColors$lambda$33$lambda$27"

    .line 550
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-static {v4, v7}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_1
    new-array v3, v6, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 552
    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputTitle:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v4, v3, v0

    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputTitle:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v4, v3, v5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 553
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v7, "setupColors$lambda$33$lambda$28"

    .line 554
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_2

    :cond_2
    new-array v3, v6, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 556
    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputToken:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v4, v3, v0

    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputToken:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v4, v3, v5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 557
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v7, "setupColors$lambda$33$lambda$29"

    .line 558
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_3

    .line 560
    :cond_3
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    .line 561
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 562
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    const-string/jumbo v4, "setupColors$lambda$33$lambda$30"

    .line 563
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    new-array v3, v6, [Landroid/widget/LinearLayout;

    .line 565
    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearInputToken:Landroid/widget/LinearLayout;

    aput-object v4, v3, v0

    iget-object v4, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearOutputToken:Landroid/widget/LinearLayout;

    aput-object v4, v3, v5

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 2634
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Landroid/widget/LinearLayout;

    .line 567
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 569
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    .line 566
    invoke-static {v5, v0, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 572
    :cond_4
    iget-object v0, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageSwapTokensPositions:Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v2, "setupColors$lambda$33$lambda$32"

    .line 573
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 575
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 574
    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setupErrorDependedColors(II)V
    .locals 2

    .line 586
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 587
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 588
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editInputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    .line 589
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 590
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHintTextColor(I)V

    const-string/jumbo p2, "setupErrorDependedColors$lambda$35$lambda$34"

    .line 591
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic setupErrorDependedColors$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 583
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 584
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    .line 582
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupErrorDependedColors(II)V

    return-void
.end method

.method private final setupListeners()V
    .locals 17

    move-object/from16 v0, p0

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v1

    .line 619
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editInputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string/jumbo v3, "setupListeners$lambda$41$lambda$40"

    .line 620
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$lambda$41$lambda$40$$inlined$doAfterTextChanged$1;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$lambda$41$lambda$40$$inlined$doAfterTextChanged$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    .line 93
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 623
    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;)V

    const/4 v4, 0x6

    invoke-static {v2, v4, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->onAction(Landroid/widget/EditText;ILcom/iMe/fork/utils/Callbacks$Callback;)V

    .line 627
    iget-object v5, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearInputToken:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "linearInputToken"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$2;

    invoke-direct {v8, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 630
    iget-object v11, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearOutputToken:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "linearOutputToken"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$3;

    invoke-direct {v14, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$3;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 633
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewInputNetwork:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string/jumbo v3, "viewInputNetwork"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$4;

    invoke-direct {v5, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$4;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 636
    iget-object v8, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewOutputNetwork:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string/jumbo v2, "viewOutputNetwork"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$5;

    invoke-direct {v11, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$5;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const-wide/16 v9, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 639
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageSwapTokensPositions:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "imageSwapTokensPositions"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$6;

    invoke-direct {v5, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$6;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-static/range {v2 .. v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupListeners$lambda$41$lambda$40$lambda$39(Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    invoke-virtual {p0}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->performActionButtonClick()V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 597
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 598
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_from_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 601
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_select_token_header:I

    .line 600
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editInputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v2, "0"

    .line 607
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v3, 0x6

    .line 608
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 610
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Crypto;

    if-eqz v1, :cond_0

    .line 612
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "textInputAdditionalDescription"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final showApprovalConfirmationDialog$lambda$22(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approve()V

    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$0(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method

.method private static final showSuccessSwapAlert$lambda$21(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static final showTokenBalance$lambda$9$lambda$8(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->onMaxClick()V

    return-void
.end method


# virtual methods
.method public final getScreenType()Lcom/iMe/model/wallet/swap/WalletSwapScreenType;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    return-object v0
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

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 89
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 90
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 91
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 92
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 93
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    .line 90
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 95
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 96
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 97
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 98
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    .line 95
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 100
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 101
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 102
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 103
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    .line 100
    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 105
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 106
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v2

    .line 107
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 108
    new-instance v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    .line 109
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 105
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 88
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupActionBar()V

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupColors()V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupListeners()V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupViews()V

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 7

    const-string/jumbo v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 180
    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const-string v1, "editOutputAmount"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v5, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 197
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageOutputToken:Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v2, "onTokenSelected$lambda$7$lambda$6"

    .line 199
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v5, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 200
    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editInputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string/jumbo v6, "onTokenSelected$lambda$7$lambda$4"

    .line 183
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v5, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 184
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v6

    invoke-static {p1, v6, v4, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->limitInputLength$default(Landroid/widget/EditText;IIILjava/lang/Object;)V

    .line 185
    invoke-static {p1, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setAllowDecimals(Landroid/widget/EditText;Z)V

    .line 186
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 188
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageInputToken:Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v2, "onTokenSelected$lambda$7$lambda$5"

    .line 190
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v5, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 191
    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 204
    :goto_0
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 205
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputRate:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo p2, "textOutputRate"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 206
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo p2, "textOutputFiat"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 207
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageSwapTokensPositions:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p2, "imageSwapTokensPositions"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->showChangeNetworkHintIfNeeded()V

    .line 516
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    return-void
.end method

.method public openSelectTokenScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/model/wallet/select/SelectTokenScreenType;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "-",
            "Lcom/iMe/storage/domain/model/wallet/token/FiatValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "selectTokensScreenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "networkId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    sget-object v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->Companion:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;

    new-instance v6, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p5}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;->newInstance(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback2;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    move-result-object p1

    .line 492
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openSwapFeeScreen(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->Companion:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;

    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$openSwapFeeScreen$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$openSwapFeeScreen$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;Lkotlin/jvm/functions/Function1;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    move-result-object p1

    .line 465
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "state"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 250
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v2

    .line 252
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;

    const-string/jumbo v4, "viewActionButtons"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    .line 253
    iget-object v8, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    .line 255
    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_approve:I

    .line 254
    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 253
    new-instance v13, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda7;

    invoke-direct {v13, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v14, 0x0

    new-instance v15, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda8;

    invoke-direct {v15, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/16 v16, 0x26

    const/16 v17, 0x0

    invoke-static/range {v8 .. v17}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$default(Lcom/iMe/ui/custom/TransactionActionButtonsView;Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 261
    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    .line 262
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;->getFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/iMe/ui/custom/FeeView;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    const-string/jumbo v1, "renderState$lambda$20$lambda$14"

    .line 263
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto/16 :goto_0

    .line 267
    :cond_1
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Loading;

    const-string v8, "feeView"

    if-eqz v3, :cond_2

    .line 268
    iget-object v9, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7c

    const/16 v18, 0x0

    .line 268
    invoke-static/range {v9 .. v18}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$default(Lcom/iMe/ui/custom/TransactionActionButtonsView;Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 272
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto/16 :goto_0

    .line 275
    :cond_2
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v3, :cond_4

    .line 276
    move-object v3, v1

    check-cast v3, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    .line 277
    instance-of v8, v3, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x4

    if-eqz v8, :cond_3

    .line 278
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputAmount()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputAmount()D

    move-result-wide v13

    div-double/2addr v3, v13

    .line 279
    iget-object v5, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputRate:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v8

    .line 280
    sget v13, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_price_value:I

    new-array v12, v12, [Ljava/lang/Object;

    .line 281
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    sget-object v14, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v14}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v15

    invoke-virtual {v15}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v11, v15}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v7

    .line 282
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputTokenShortName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v6

    .line 284
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 285
    invoke-virtual {v14}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 283
    invoke-static {v3, v4}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v10

    .line 287
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputTokenShortName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v9

    .line 279
    invoke-interface {v8, v13, v12}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 292
    invoke-virtual {v14}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 290
    invoke-static {v5, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputToken()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4;

    invoke-direct {v1, v2, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$4;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    .line 317
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 296
    iput-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->timer:Landroid/os/CountDownTimer;

    goto/16 :goto_0

    .line 320
    :cond_3
    instance-of v3, v3, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    if-eqz v3, :cond_9

    .line 321
    iget-object v13, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    .line 323
    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    .line 322
    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 321
    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x6e

    const/16 v22, 0x0

    move-object/from16 v18, v3

    invoke-static/range {v13 .. v22}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$default(Lcom/iMe/ui/custom/TransactionActionButtonsView;Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 327
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    .line 328
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/iMe/ui/custom/FeeView;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    const-string/jumbo v4, "renderState$lambda$20$lambda$17"

    .line 329
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 331
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputRate:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    .line 332
    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_price_value:I

    new-array v8, v12, [Ljava/lang/Object;

    .line 334
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 335
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 333
    invoke-static {v11, v12}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    .line 337
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 339
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getExecutionPrice()Ljava/math/BigDecimal;

    move-result-object v6

    .line 340
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 338
    invoke-static {v6, v7}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v10

    .line 342
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    .line 331
    invoke-interface {v4, v5, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getOutputFiatAmountText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    .line 347
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountOut()Ljava/math/BigDecimal;

    move-result-object v3

    .line 348
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 346
    invoke-static {v3, v1}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 355
    :cond_4
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;

    if-eqz v3, :cond_5

    .line 356
    iget-object v9, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 358
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_approving:I

    .line 357
    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 356
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/16 v17, 0x36

    const/16 v18, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v9 .. v18}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$default(Lcom/iMe/ui/custom/TransactionActionButtonsView;Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 363
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto/16 :goto_0

    .line 366
    :cond_5
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    if-eqz v3, :cond_9

    .line 367
    iget-object v9, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewActionButtons:Lcom/iMe/ui/custom/TransactionActionButtonsView;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    .line 369
    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    .line 368
    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7c

    const/16 v18, 0x0

    .line 367
    invoke-static/range {v9 .. v18}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$default(Lcom/iMe/ui/custom/TransactionActionButtonsView;Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 373
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 374
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v4, "editOutputAmount"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 375
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textOutputFiat"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 376
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputRate:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textOutputRate"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 377
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v8, "textInputFiat"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v9, v9, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    invoke-static {v3, v9}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible(Landroid/view/View;Z)V

    .line 378
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->isReset()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 379
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->getKeepSide()Lcom/iMe/model/wallet/swap/SwapSide;

    move-result-object v3

    sget-object v9, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    if-eq v3, v9, :cond_6

    .line 380
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageInputToken:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v9, "imageInputToken"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 381
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v9

    .line 382
    sget v10, Lorg/telegram/messenger/R$string;->wallet_swap_process_select_token_header:I

    .line 381
    invoke-interface {v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editInputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string/jumbo v9, "renderState$lambda$20$lambda$19"

    .line 385
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 386
    invoke-static {v3, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 388
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textBalance:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v9, "textBalance"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 389
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 391
    :cond_6
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->getKeepSide()Lcom/iMe/model/wallet/swap/SwapSide;

    move-result-object v3

    sget-object v8, Lcom/iMe/model/wallet/swap/SwapSide;->OUTPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    if-eq v3, v8, :cond_7

    .line 392
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageOutputToken:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v8, "imageOutputToken"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 393
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textOutputToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v8

    .line 394
    sget v9, Lorg/telegram/messenger/R$string;->wallet_swap_process_select_token_header:I

    .line 393
    invoke-interface {v8, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 398
    :cond_7
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->getKeepSide()Lcom/iMe/model/wallet/swap/SwapSide;

    move-result-object v1

    if-nez v1, :cond_8

    .line 399
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageSwapTokensPositions:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "imageSwapTokensPositions"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setEnabledWithAlpha(Landroid/view/View;Z)V

    .line 401
    :cond_8
    iget-object v1, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->screenType:Lcom/iMe/model/wallet/swap/WalletSwapScreenType;

    instance-of v1, v1, Lcom/iMe/model/wallet/swap/WalletSwapScreenType$Binance;

    if-eqz v1, :cond_9

    .line 402
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "textInputAdditionalDescription"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible$default(Landroid/view/View;ZILjava/lang/Object;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public setAmount(Lcom/iMe/model/wallet/swap/SwapSide;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amountText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 232
    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editOutputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editInputAmount:Landroidx/appcompat/widget/AppCompatEditText;

    .line 235
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p2, "setAmount$lambda$11$lambda$10"

    .line 236
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSelectionEnd(Landroid/widget/EditText;)V

    .line 237
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->showKeyboard(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setInputError(Ljava/lang/String;)V
    .locals 4

    const-string v0, "errorText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "setInputError$lambda$2"

    .line 153
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    .line 156
    invoke-direct {p0, p1, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupErrorDependedColors(II)V

    return-void
.end method

.method public setInputFiatText(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputFiat:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 148
    invoke-static {p0, p1, p1, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupErrorDependedColors$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;IIILjava/lang/Object;)V

    return-void
.end method

.method public setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 2

    const-string/jumbo v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "side"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 141
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewOutputNetwork:Lcom/iMe/ui/custom/NetworkTypeView;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 140
    :cond_1
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewInputNetwork:Lcom/iMe/ui/custom/NetworkTypeView;

    .line 139
    :goto_0
    invoke-virtual {p2, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    return-void
.end method

.method public setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 2

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p1

    .line 171
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSwapProtocolDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageSwapProtocolLogo:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 173
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewInputNetwork:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string/jumbo p3, "viewInputNetwork"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p3

    .line 262
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->viewOutputNetwork:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string/jumbo p2, "viewOutputNetwork"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    if-eqz p2, :cond_2

    move p3, v0

    .line 262
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showApprovalConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string/jumbo v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 455
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showApprovalInfoDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x39

    const/4 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 447
    invoke-static/range {v1 .. v9}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialogInfoWithAnimation$default(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 446
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 509
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/iMe/utils/hints/HintUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/utils/hints/HintUtils;->showChangeNetworkHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    .line 124
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 127
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const-string/jumbo v3, "parentActivity"

    .line 124
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;->newInstance(Landroid/content/Context;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showCommonErrorDialog(Ljava/lang/String;)V
    .locals 9

    const-string v0, "errorText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_error:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 423
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showMinMaxInputValues(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;)V
    .locals 9

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "information"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textInputAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "showMinMaxInputValues$lambda$23"

    .line 474
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 475
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    .line 476
    sget v4, Lorg/telegram/messenger/R$string;->binance_convert_min_max_convert_value:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 477
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;->getMinLimit()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    sget-object v7, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 478
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    .line 479
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;->getMaxLimit()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v5, v1

    .line 480
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v5, p2

    .line 475
    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;->showNoEnoughMoneyDialog(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method public showSuccessApproveAlert()V
    .locals 9

    .line 440
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_approve_success_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_approve_success_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p0

    .line 439
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showSuccessSwapAlert()V
    .locals 9

    .line 432
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_swap_success_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_swap_success_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 431
    new-instance v6, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showSwapConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string/jumbo v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createFormattedDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showTokenBalance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "balanceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickablePartText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textBalance:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "showTokenBalance$lambda$9"

    .line 213
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 214
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    .line 216
    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-static {v0, p2, v2, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSubstringClickListener(Landroid/widget/TextView;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_1
    return-void
.end method
