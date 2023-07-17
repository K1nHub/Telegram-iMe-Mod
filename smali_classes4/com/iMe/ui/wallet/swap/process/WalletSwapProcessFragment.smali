.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "WalletSwapProcessFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;,
        Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;,
        Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;,
        Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapProcessFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProcessFragment.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 8 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,503:1\n13#2,4:504\n56#3,6:508\n262#4,2:514\n262#4,2:516\n262#4,2:518\n262#4,2:520\n262#4,2:604\n1#5:522\n1#5:525\n1#5:530\n1#5:535\n1#5:540\n1#5:545\n1#5:550\n1#5:555\n1#5:560\n1#5:565\n1#5:596\n1#5:601\n4#6:523\n5#6,2:526\n4#6:528\n5#6,2:531\n4#6:533\n5#6,2:536\n4#6:538\n5#6,2:541\n4#6:543\n5#6,2:546\n4#6:548\n5#6,2:551\n4#6:553\n5#6,2:556\n4#6:558\n5#6,2:561\n4#6:563\n5#6,2:566\n4#6:594\n5#6,2:597\n4#6:599\n5#6,2:602\n2634#7:524\n2634#7:529\n2634#7:534\n2634#7:539\n2634#7:544\n2634#7:549\n2634#7:554\n2634#7:559\n2634#7:564\n2634#7:595\n2634#7:600\n58#8,23:568\n93#8,3:591\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessFragment.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment\n*L\n66#1:504,4\n67#1:508,6\n137#1:514,2\n138#1:516,2\n142#1:518,2\n143#1:520,2\n465#1:604,2\n405#1:525\n406#1:530\n409#1:535\n410#1:540\n411#1:545\n412#1:550\n415#1:555\n416#1:560\n420#1:565\n440#1:596\n443#1:601\n405#1:523\n405#1:526,2\n406#1:528\n406#1:531,2\n409#1:533\n409#1:536,2\n410#1:538\n410#1:541,2\n411#1:543\n411#1:546,2\n412#1:548\n412#1:551,2\n415#1:553\n415#1:556,2\n416#1:558\n416#1:561,2\n420#1:563\n420#1:566,2\n440#1:594\n440#1:597,2\n443#1:599\n443#1:602,2\n405#1:524\n406#1:529\n409#1:534\n410#1:539\n411#1:544\n412#1:549\n415#1:554\n416#1:559\n420#1:564\n440#1:595\n443#1:600\n439#1:568,23\n439#1:591,3\n*E\n"
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

.field private final networkTypeView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

.field private timer:Landroid/os/CountDownTimer;

.field private final tokenBuyCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2hB3UAlehbpyd-O4y4c1lC9VMSA(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showChooseNetworkDialog$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6LMIykuddRRnNrk5I0gOGSDL4t8(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$22$lambda$21$lambda$20(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DmqpS5xyVSpD7Y6TRVarNcPjBNk(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E6Wm_tbCsfJ9amIcFrAueIspeQU(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$22$lambda$8$lambda$7(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gm0R2s0GAl_TlkXHN862uXAwBJE(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->openSelectTokenDialog$lambda$25(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LX-j-zj1DIkcnl_1k5ogxsFsghA(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$22$lambda$11$lambda$10(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S8Y1iSQ93rGBPOzgvUqY1FyeCc0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$22$lambda$19$lambda$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZL2Kd5_at64hI43ZjT__EnPhCDc(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showSuccessSwapAlert$lambda$23(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_qWOYl4dJRM0UdDgmW-hPcjyvbs(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$22$lambda$14$lambda$13(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hnpxWrX9HepedWvb1XZKuDWm184(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showApproveConfirmationDialog$lambda$43(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mRPSPAYCzSOwa53s37A9HsJPZoA(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$22$lambda$16$lambda$15(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 66
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 70
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 71
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "networkTypeView"

    const-string v4, "getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)V
    .locals 4

    const-string/jumbo v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 66
    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

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

    .line 66
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

    .line 67
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    .line 70
    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 71
    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$networkTypeView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$networkTypeView$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->networkTypeView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initGlobalNetworkView(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->initGlobalNetworkView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openApproveDescriptionDialog(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->openApproveDescriptionDialog()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    return-object v0
.end method

.method private final getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->networkTypeView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/custom/NetworkTypeView;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupColors()V

    return-void
.end method

.method private final getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    return-object v0
.end method

.method private final initGlobalNetworkView()Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 7

    .line 464
    new-instance v6, Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iMe/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x8

    .line 262
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    return-object v6
.end method

.method public static final newInstance(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->Companion:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    move-result-object p0

    return-object p0
.end method

.method private final openApproveDescriptionDialog()V
    .locals 6

    .line 461
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveTokenDescriptionModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final openSelectTokenDialog$lambda$25(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    .line 355
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final renderState$lambda$22$lambda$11$lambda$10(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->prepareForSwap(Ljava/lang/String;)V

    return-void
.end method

.method private static final renderState$lambda$22$lambda$14$lambda$13(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSwapFlow()V

    return-void
.end method

.method private static final renderState$lambda$22$lambda$16$lambda$15(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSwapFlow()V

    return-void
.end method

.method private static final renderState$lambda$22$lambda$19$lambda$18(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final renderState$lambda$22$lambda$21$lambda$20(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->prepareForSwap(Ljava/lang/String;)V

    return-void
.end method

.method private static final renderState$lambda$22$lambda$8$lambda$7(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showApproveConfirmationDialog()V

    return-void
.end method

.method private final setupActionBar()V
    .locals 4

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 381
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 382
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 383
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 391
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v1, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->disableRipple()V

    const-string/jumbo v1, "setupActionBar$lambda$27$lambda$26"

    .line 393
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 394
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v1

    const v2, 0x800015

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setupColors()V
    .locals 10

    .line 400
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 401
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/FeeView;->setupColors()V

    .line 402
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 403
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageExchangeArrow:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageExchangeArrow"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText5:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 405
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 405
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 406
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSwapProtocolDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 407
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    new-array v1, v5, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 409
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v3

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromDescription:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v9, "setupColors$lambda$37$lambda$30"

    .line 409
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v4, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setGreyShadowBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-array v1, v5, [Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 410
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->constraintFromToken:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v2, v1, v3

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->constraintToToken:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 410
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_3

    :cond_3
    new-array v1, v5, [Landroidx/appcompat/widget/AppCompatImageView;

    .line 411
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageFromIcon:Landroidx/appcompat/widget/AppCompatImageView;

    aput-object v2, v1, v3

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageToIcon:Landroidx/appcompat/widget/AppCompatImageView;

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v9, "setupColors$lambda$37$lambda$32"

    .line 411
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-static {v2, v9}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    goto :goto_4

    :cond_4
    new-array v1, v7, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 412
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSelectFromToken:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v3

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSelectToToken:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v4

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToToken:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v5

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromToken:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 413
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_5
    new-array v1, v5, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 415
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToToken:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v3

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromToken:Landroidx/appcompat/widget/AppCompatTextView;

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v6, "setupColors$lambda$37$lambda$34"

    .line 415
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_6

    :cond_6
    new-array v1, v5, [Landroidx/appcompat/widget/AppCompatEditText;

    .line 416
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    aput-object v2, v1, v3

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/appcompat/widget/AppCompatEditText;

    .line 417
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 418
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_7

    :cond_7
    new-array v1, v5, [Landroid/widget/LinearLayout;

    .line 420
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseTo:Landroid/widget/LinearLayout;

    aput-object v2, v1, v3

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseFrom:Landroid/widget/LinearLayout;

    aput-object v0, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Landroid/widget/LinearLayout;

    const-string/jumbo v2, "setupColors$lambda$37$lambda$36"

    .line 420
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, v4, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleForeground$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_8

    :cond_8
    return-void
.end method

.method private final setupListeners()V
    .locals 15

    .line 438
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 439
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v2, "editFromAmount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$lambda$42$$inlined$doAfterTextChanged$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$lambda$42$$inlined$doAfterTextChanged$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    .line 440
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseFrom:Landroid/widget/LinearLayout;

    const-string v4, "linearChooseFrom"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageTokenFrom:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v5, "imageTokenFrom"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    move-object v6, v3

    check-cast v6, Landroid/view/View;

    const-wide/16 v7, 0x0

    .line 441
    new-instance v9, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$2$1;

    invoke-direct {v9, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$2$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v1, v1, [Landroid/view/View;

    .line 443
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseTo:Landroid/widget/LinearLayout;

    const-string v3, "linearChooseTo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v4

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageTokenTo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "imageTokenTo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    const-wide/16 v4, 0x0

    .line 444
    new-instance v6, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$3$1;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$3$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_1

    .line 446
    :cond_1
    iget-object v9, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeInputView:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string v1, "networkTypeInputView"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    new-instance v12, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$4;

    invoke-direct {v12, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$4;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 447
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeOutputView:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string v2, "networkTypeOutputView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$5;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$5;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 448
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v0, "textWhatIsApprove"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$6;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$6;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupTexts()V
    .locals 4

    .line 425
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 426
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_from_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSelectFromToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_select_placeholder:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSelectToToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_from_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_calculate:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showApproveConfirmationDialog()V
    .locals 6

    .line 454
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 453
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showApproveConfirmationDialog$lambda$43(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approve()V

    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedNetwork"

    .line 110
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showSuccessSwapAlert$lambda$23(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method


# virtual methods
.method public final getScreenType()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

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

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 89
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

    .line 90
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

    .line 91
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

    .line 92
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 93
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 88
    new-instance v10, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    .line 95
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v4, v2

    .line 93
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 88
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupActionBar()V

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupColors()V

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupListeners()V

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupTexts()V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeInputView:Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeOutputView:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string v0, "POLYGON"

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;I)V
    .locals 7

    const-string/jumbo v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseTo:Landroid/widget/LinearLayout;

    const-string v5, "linearChooseTo"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3, v4, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 169
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v5, "onTokenSelected$lambda$5$lambda$4"

    .line 170
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3, v3, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->limitInputLength$default(Landroid/widget/EditText;IIILjava/lang/Object;)V

    .line 171
    invoke-static {p1, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setAllowDecimals(Landroid/widget/EditText;Z)V

    .line 172
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageTokenTo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p3, "imageTokenTo"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 175
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->groupToSelectedToken:Landroidx/constraintlayout/widget/Group;

    const-string p2, "groupToSelectedToken"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3, v4, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseFrom:Landroid/widget/LinearLayout;

    const-string v5, "linearChooseFrom"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3, v4, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 158
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v5, "onTokenSelected$lambda$5$lambda$3"

    .line 159
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3, v3, v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->limitInputLength$default(Landroid/widget/EditText;IIILjava/lang/Object;)V

    .line 160
    invoke-static {p1, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setAllowDecimals(Landroid/widget/EditText;Z)V

    .line 161
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_input_hint:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {p3, v1, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageTokenFrom:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p3, "imageTokenFrom"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 164
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->groupFromSelectedToken:Landroidx/constraintlayout/widget/Group;

    const-string p2, "groupFromSelectedToken"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3, v4, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->showChangeNetworkHintIfNeeded()V

    .line 372
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    return-void
.end method

.method public openSelectTokenDialog(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "selectTokensScreenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    sget-object v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->Companion:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;

    new-instance v6, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda7;

    invoke-direct {v6, p5}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;->newInstance(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    move-result-object p1

    .line 349
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openSwapFeeScreen(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->Companion:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;

    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$openSwapFeeScreen$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$openSwapFeeScreen$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;Lkotlin/jvm/functions/Function1;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "state"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v2

    .line 190
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    const-string v4, "feeView"

    const-string/jumbo v5, "textWhatIsApprove"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_approve:I

    invoke-interface {v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    new-instance v9, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v8

    :goto_0
    iget-object v9, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_description:I

    invoke-interface {v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;->getChooseFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/iMe/ui/custom/FeeView;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V

    .line 198
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 199
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto/16 :goto_3

    .line 202
    :cond_1
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    if-eqz v3, :cond_5

    .line 203
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 204
    iget-object v9, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 205
    instance-of v10, v9, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->binance_convert_button_calculate:I

    invoke-interface {v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 206
    :cond_2
    instance-of v9, v9, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_calculate:I

    invoke-interface {v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 204
    :goto_1
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v9, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v8

    :goto_2
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v9, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_description:I

    invoke-interface {v3, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 213
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto/16 :goto_3

    .line 206
    :cond_4
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 216
    :cond_5
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v3, :cond_7

    .line 217
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 218
    move-object v3, v1

    check-cast v3, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    .line 219
    instance-of v4, v3, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x4

    if-eqz v4, :cond_6

    .line 220
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputAmount()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputAmount()D

    move-result-wide v13

    div-double/2addr v3, v13

    .line 221
    iget-object v8, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v13

    .line 222
    sget v14, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_price_value:I

    new-array v12, v12, [Ljava/lang/Object;

    .line 223
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    sget-object v15, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v15}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v7

    .line 224
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputTokenShortName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v6

    .line 225
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v15}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v10

    .line 226
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputTokenShortName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v9

    .line 221
    invoke-interface {v13, v14, v12}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v15}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 230
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$5$1;

    invoke-direct {v2, v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$5$1;-><init>(Lcom/iMe/ui/custom/ActionButton;Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    iput-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->timer:Landroid/os/CountDownTimer;

    .line 240
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 246
    :cond_6
    instance-of v3, v3, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    if-eqz v3, :cond_9

    .line 247
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    .line 252
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getChooseFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/iMe/ui/custom/FeeView;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V

    const-string/jumbo v4, "renderState$lambda$22$lambda$17"

    .line 253
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 255
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    .line 256
    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_price_value:I

    new-array v8, v12, [Ljava/lang/Object;

    .line 257
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    .line 258
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 259
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getExecutionPrice()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v10

    .line 260
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v9

    .line 255
    invoke-interface {v4, v5, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountOut()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 267
    :cond_7
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;

    if-eqz v3, :cond_8

    .line 268
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v9, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_approving:I

    invoke-interface {v3, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    sget-object v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda5;->INSTANCE:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda5;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 273
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto/16 :goto_3

    .line 276
    :cond_8
    instance-of v1, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    if-eqz v1, :cond_9

    .line 277
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v9, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_calculate:I

    invoke-interface {v3, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v3, "editFromAmount"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 282
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v3, "editToAmount"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 283
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v9, Lorg/telegram/messenger/R$string;->wallet_swap_process_from_description:I

    invoke-interface {v3, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v9, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_description:I

    invoke-interface {v3, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 286
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseTo:Landroid/widget/LinearLayout;

    const-string v3, "linearChooseTo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 287
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 288
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseFrom:Landroid/widget/LinearLayout;

    const-string v3, "linearChooseFrom"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 289
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->groupFromSelectedToken:Landroidx/constraintlayout/widget/Group;

    const-string v3, "groupFromSelectedToken"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 290
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->groupToSelectedToken:Landroidx/constraintlayout/widget/Group;

    const-string v2, "groupToSelectedToken"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7, v6, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public setupNetwork(Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "side"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeOutputView:Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p2, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 123
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeInputView:Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p2, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    :goto_0
    return-void
.end method

.method public setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkSwitchType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p1

    .line 133
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSwapProtocolDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageSwapProtocolIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 135
    sget-object p2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    const/4 p5, 0x0

    const/16 v0, 0x8

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_4

    .line 142
    :cond_0
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeOutputView:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string p3, "networkTypeOutputView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    move p3, p5

    goto :goto_0

    :cond_1
    move p3, v0

    .line 262
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeInputView:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string p2, "networkTypeInputView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move p5, v0

    .line 262
    :goto_1
    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 137
    :cond_3
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object p1

    if-eqz p4, :cond_4

    move p2, p5

    goto :goto_2

    :cond_4
    move p2, v0

    .line 262
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget p2, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    const-string p2, "getItem(IdFabric.Menu.NETWORK_SWITCH)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    move p5, v0

    .line 262
    :goto_3
    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public showChangeNetworkHint()V
    .locals 3

    .line 365
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/iMe/utils/hints/HintUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/utils/hints/HintUtils;->showChangeNetworkHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->Companion:Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-string p3, "parentActivity"

    .line 106
    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet$Companion;->newInstance(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showMinMaxInputValues(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;)V
    .locals 9

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "information"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 331
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "textFromAdditionalDescription"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 332
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 333
    sget v4, Lorg/telegram/messenger/R$string;->binance_convert_min_max_convert_value:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 334
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

    invoke-static {v6, v8}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 335
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 336
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;->getMaxLimit()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v5, v2

    .line 337
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v5, p2

    .line 332
    invoke-interface {v1, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showNotEnoughMoneyBinanceErrorDialog()V
    .locals 9

    .line 302
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_common_error_not_enough_money_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->binance_convert_not_enough_money_error_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    .line 301
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;->showNoEnoughMoneyDialog(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method public showSuccessApproveAlert()V
    .locals 9

    .line 318
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_approve_success_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 319
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

    .line 317
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showSuccessSwapAlert()V
    .locals 9

    .line 310
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_swap_success_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_swap_success_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    new-instance v6, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showSwapConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
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

.method public showTokenBalance(Ljava/lang/String;)V
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 183
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
