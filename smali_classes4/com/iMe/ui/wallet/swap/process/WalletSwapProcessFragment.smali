.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;
.super Lcom/iMe/ui/base/WalletAuthFragment;
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
    value = "SMAP\nWalletSwapProcessFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProcessFragment.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 7 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 8 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,482:1\n13#2,4:483\n56#3,6:487\n262#4,2:493\n262#4,2:495\n262#4,2:497\n262#4,2:499\n262#4,2:583\n1#5:501\n1#5:504\n1#5:509\n1#5:514\n1#5:519\n1#5:524\n1#5:529\n1#5:534\n1#5:539\n1#5:544\n1#5:575\n1#5:580\n4#6:502\n5#6,2:505\n4#6:507\n5#6,2:510\n4#6:512\n5#6,2:515\n4#6:517\n5#6,2:520\n4#6:522\n5#6,2:525\n4#6:527\n5#6,2:530\n4#6:532\n5#6,2:535\n4#6:537\n5#6,2:540\n4#6:542\n5#6,2:545\n4#6:573\n5#6,2:576\n4#6:578\n5#6,2:581\n2634#7:503\n2634#7:508\n2634#7:513\n2634#7:518\n2634#7:523\n2634#7:528\n2634#7:533\n2634#7:538\n2634#7:543\n2634#7:574\n2634#7:579\n58#8,23:547\n93#8,3:570\n*S KotlinDebug\n*F\n+ 1 WalletSwapProcessFragment.kt\ncom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment\n*L\n55#1:483,4\n56#1:487,6\n123#1:493,2\n124#1:495,2\n127#1:497,2\n128#1:499,2\n444#1:583,2\n384#1:504\n385#1:509\n388#1:514\n389#1:519\n390#1:524\n391#1:529\n394#1:534\n395#1:539\n399#1:544\n419#1:575\n422#1:580\n384#1:502\n384#1:505,2\n385#1:507\n385#1:510,2\n388#1:512\n388#1:515,2\n389#1:517\n389#1:520,2\n390#1:522\n390#1:525,2\n391#1:527\n391#1:530,2\n394#1:532\n394#1:535,2\n395#1:537\n395#1:540,2\n399#1:542\n399#1:545,2\n419#1:573\n419#1:576,2\n422#1:578\n422#1:581,2\n384#1:503\n385#1:508\n388#1:513\n389#1:518\n390#1:523\n391#1:528\n394#1:533\n395#1:538\n399#1:543\n419#1:574\n422#1:579\n418#1:547,23\n418#1:570,3\n*E\n"
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
.method public static synthetic $r8$lambda$5ZnN4Go65s8fyvj0p-WuIE6UL8A(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showApproveConfirmationDialog$lambda$44(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

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

.method public static synthetic $r8$lambda$_BuVzz2j2NvU4fTXes6QZWBW0Xk(Lkotlin/jvm/functions/Function1;Lcom/iMe/model/wallet/select/SelectableToken;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->openSelectTokenDialog$lambda$25(Lkotlin/jvm/functions/Function1;Lcom/iMe/model/wallet/select/SelectableToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_qWOYl4dJRM0UdDgmW-hPcjyvbs(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$22$lambda$14$lambda$13(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mRPSPAYCzSOwa53s37A9HsJPZoA(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState$lambda$22$lambda$16$lambda$15(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnXAxnsH4Bgv_l2OdAFtE-VYUiE(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showChooseNetworkDialog$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 55
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 59
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 60
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

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/base/WalletAuthFragment;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 55
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

    .line 55
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

    .line 56
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 60
    new-instance p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$networkTypeView$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$networkTypeView$2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->networkTypeView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initGlobalNetworkView(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->initGlobalNetworkView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openApproveDescriptionDialog(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->openApproveDescriptionDialog()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;
    .locals 3

    .line 59
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

    .line 60
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

    .line 55
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

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupColors()V

    return-void
.end method

.method private final getTokenBuyCoordinator()Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->tokenBuyCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    return-object v0
.end method

.method private final initGlobalNetworkView()Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 7

    .line 443
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

    .line 440
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

.method private static final openSelectTokenDialog$lambda$25(Lkotlin/jvm/functions/Function1;Lcom/iMe/model/wallet/select/SelectableToken;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    .line 333
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final renderState$lambda$22$lambda$11$lambda$10(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
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

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSwapFlow()V

    return-void
.end method

.method private static final renderState$lambda$22$lambda$16$lambda$15(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
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

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
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

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->showApproveConfirmationDialog()V

    return-void
.end method

.method private final setupActionBar()V
    .locals 4

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 358
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 359
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 360
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 361
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 369
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 370
    sget v1, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const-string v1, "setupActionBar$lambda$28$lambda$27$lambda$26"

    .line 371
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/ViewExtKt;->setPaddingHorizontal(Landroid/view/View;I)V

    .line 372
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v1

    const v2, 0x800015

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setupColors()V
    .locals 11

    .line 379
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 380
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/FeeView;->setupColors()V

    .line 381
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 382
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageExchangeArrow:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageExchangeArrow"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "windowBackgroundWhiteGrayText5"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 384
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

    const-string/jumbo v3, "windowBackgroundGray"

    .line 384
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 385
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

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    .line 386
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    new-array v1, v5, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 388
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

    const-string v9, "setupColors$lambda$38$lambda$31"

    .line 388
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v4, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setGreyShadowBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-array v1, v5, [Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 389
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

    const-string/jumbo v9, "windowBackgroundWhite"

    .line 389
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_3

    :cond_3
    new-array v1, v5, [Landroidx/appcompat/widget/AppCompatImageView;

    .line 390
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

    const-string/jumbo v9, "windowBackgroundWhiteBlueHeader"

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v10, "setupColors$lambda$38$lambda$33"

    .line 390
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v2, v9}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    goto :goto_4

    :cond_4
    new-array v1, v7, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 391
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

    .line 392
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_5
    new-array v1, v5, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 394
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

    const-string v6, "setupColors$lambda$38$lambda$35"

    .line 394
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_6

    :cond_6
    new-array v1, v5, [Landroidx/appcompat/widget/AppCompatEditText;

    .line 395
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

    const-string/jumbo v6, "windowBackgroundWhiteGrayText2"

    .line 396
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    const-string v6, "chat_messagePanelText"

    .line 397
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_7

    :cond_7
    new-array v1, v5, [Landroid/widget/LinearLayout;

    .line 399
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

    const-string v2, "setupColors$lambda$38$lambda$37"

    .line 399
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, v4, v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleForeground$default(Landroid/view/View;ZILjava/lang/Object;)V

    goto :goto_8

    :cond_8
    return-void
.end method

.method private final setupListeners()V
    .locals 15

    .line 417
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 418
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v2, "editFromAmount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$lambda$43$$inlined$doAfterTextChanged$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$lambda$43$$inlined$doAfterTextChanged$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    .line 419
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

    .line 420
    new-instance v9, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$2$1;

    invoke-direct {v9, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$2$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v1, v1, [Landroid/view/View;

    .line 422
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

    .line 423
    new-instance v6, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$3$1;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$3$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_1

    .line 425
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

    .line 426
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeOutputView:Lcom/iMe/ui/custom/NetworkTypeView;

    const-string v2, "networkTypeOutputView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$5;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$5;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 427
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "textWhatIsApprove"

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

    .line 404
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 405
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_from_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSelectFromToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_select_placeholder:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSelectToToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromToken:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_from_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_calculate:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final showApproveConfirmationDialog()V
    .locals 6

    .line 433
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 432
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showApproveConfirmationDialog$lambda$44(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->approve()V

    return-void
.end method

.method private static final showChooseNetworkDialog$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedNetworkType"

    .line 98
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showSuccessSwapAlert$lambda$23(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method


# virtual methods
.method public final getScreenType()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;
    .locals 1

    .line 51
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

    .line 78
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

    .line 79
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

    .line 80
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

    .line 81
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 82
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 77
    new-instance v10, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    const-string/jumbo v11, "windowBackgroundGray"

    move-object v4, v2

    .line 82
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 77
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupActionBar()V

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupColors()V

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupListeners()V

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupTexts()V

    .line 71
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeInputView:Lcom/iMe/ui/custom/NetworkTypeView;

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeOutputView:Lcom/iMe/ui/custom/NetworkTypeView;

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 74
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

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/model/wallet/select/SelectableToken;IILcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 3

    const-string v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p5

    .line 142
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p5, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseTo:Landroid/widget/LinearLayout;

    const-string v1, "linearChooseTo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 155
    iget-object p1, p5, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "onTokenSelected$lambda$5$lambda$4"

    .line 156
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3, p4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->limitInputLength(Landroid/widget/EditText;II)V

    .line 157
    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setAllowDecimals(Landroid/widget/EditText;Z)V

    .line 158
    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableToken;->getTicker()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p5, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageTokenTo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p3, "imageTokenTo"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Lcom/iMe/model/wallet/select/SelectableToken;)V

    .line 161
    iget-object p1, p5, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->groupToSelectedToken:Landroidx/constraintlayout/widget/Group;

    const-string p2, "groupToSelectedToken"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p5, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseFrom:Landroid/widget/LinearLayout;

    const-string v1, "linearChooseFrom"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 145
    iget-object p1, p5, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, "onTokenSelected$lambda$5$lambda$3"

    .line 146
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3, p4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->limitInputLength(Landroid/widget/EditText;II)V

    .line 147
    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setAllowDecimals(Landroid/widget/EditText;Z)V

    .line 148
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$string;->wallet_amount_input_hint:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/iMe/model/wallet/select/SelectableToken;->getTicker()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p3, p4, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p5, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageTokenFrom:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p3, "imageTokenFrom"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Lcom/iMe/model/wallet/select/SelectableToken;)V

    .line 151
    iget-object p1, p5, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->groupFromSelectedToken:Landroidx/constraintlayout/widget/Group;

    const-string p2, "groupFromSelectedToken"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getPresenter()Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->showChangeNetworkHintIfNeeded()V

    .line 349
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    return-void
.end method

.method public openSelectTokenDialog(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/swap/SwapSide;",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lcom/iMe/model/wallet/select/SelectableType;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "side"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "tokens"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkType"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "action"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->Companion:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;

    new-instance v6, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda6;

    invoke-direct {v6, p7}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v1, p5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$Companion;->newInstance(Lcom/iMe/model/wallet/select/SelectableType;Lcom/iMe/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;ZLcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openSwapFeeScreen(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->Companion:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;

    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$openSwapFeeScreen$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$openSwapFeeScreen$1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;Lkotlin/jvm/functions/Function1;)Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "state"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v2

    .line 176
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    const/4 v4, 0x0

    const-string v5, "feeView"

    const-string v6, "textWhatIsApprove"

    if-eqz v3, :cond_1

    .line 177
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_approve:I

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    new-instance v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;->getToken()Lcom/iMe/model/wallet/select/SelectableToken;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/model/wallet/select/SelectableToken;->getTicker()Ljava/lang/String;

    move-result-object v4

    :cond_0
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v7, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_description:I

    invoke-interface {v4, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;->getChooseFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/iMe/ui/custom/FeeView;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V

    .line 184
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 185
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    goto/16 :goto_1

    .line 187
    :cond_1
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    if-eqz v3, :cond_5

    .line 188
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 189
    iget-object v7, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->screenType:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;

    .line 190
    instance-of v8, v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Binance;

    if-eqz v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$string;->binance_convert_button_calculate:I

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 191
    :cond_2
    instance-of v7, v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType$Crypto;

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_calculate:I

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 189
    :goto_0
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    new-instance v7, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;->getToken()Lcom/iMe/model/wallet/select/SelectableToken;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/iMe/model/wallet/select/SelectableToken;->getTicker()Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 198
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    goto/16 :goto_1

    .line 191
    :cond_4
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 200
    :cond_5
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    if-eqz v3, :cond_7

    .line 201
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 202
    move-object v3, v1

    check-cast v3, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;

    .line 203
    instance-of v4, v3, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x4

    if-eqz v4, :cond_6

    .line 204
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputAmount()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputAmount()D

    move-result-wide v12

    div-double/2addr v3, v12

    .line 205
    iget-object v12, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v13

    .line 206
    sget v14, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_price_value:I

    new-array v11, v11, [Ljava/lang/Object;

    .line 207
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    sget-object v15, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v15}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v5

    invoke-static {v9, v5}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v10

    .line 208
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getInputTokenShortName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v8

    .line 209
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v15}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v4

    invoke-static {v3, v4}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v7

    .line 210
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputTokenShortName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v6

    .line 205
    invoke-interface {v13, v14, v11}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;->getOutputAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v15}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v6

    invoke-static {v5, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

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

    .line 213
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 214
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$5$1;

    invoke-direct {v2, v1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$5$1;-><init>(Lcom/iMe/ui/custom/ActionButton;Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    iput-object v2, v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->timer:Landroid/os/CountDownTimer;

    .line 224
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v2, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 229
    :cond_6
    instance-of v3, v3, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    if-eqz v3, :cond_9

    .line 230
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v4, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    .line 235
    check-cast v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getChooseFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/iMe/ui/custom/FeeView;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V

    const-string v4, "renderState$lambda$22$lambda$17"

    .line 236
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 238
    iget-object v3, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    .line 239
    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_price_value:I

    new-array v11, v11, [Ljava/lang/Object;

    .line 240
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v12

    invoke-static {v9, v12}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v10

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v9

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v8

    .line 242
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getExecutionPrice()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v9

    invoke-static {v8, v9}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v7

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v6

    .line 238
    invoke-interface {v4, v5, v11}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountOut()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v5

    invoke-static {v4, v5}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v1

    invoke-interface {v4, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 249
    :cond_7
    instance-of v3, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;

    if-eqz v3, :cond_8

    .line 250
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_approving:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    sget-object v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda5;->INSTANCE:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda5;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 255
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    goto/16 :goto_1

    .line 257
    :cond_8
    instance-of v1, v1, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    if-eqz v1, :cond_9

    .line 258
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->buttonAction:Lcom/iMe/ui/custom/ActionButton;

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_calculate:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    new-instance v3, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v3, "editFromAmount"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 263
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->editToAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v3, "editToAmount"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->clearText(Landroid/widget/TextView;)V

    .line 264
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_from_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textToDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_swap_process_to_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 267
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseTo:Landroid/widget/LinearLayout;

    const-string v3, "linearChooseTo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 268
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textWhatIsApprove:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 269
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->linearChooseFrom:Landroid/widget/LinearLayout;

    const-string v3, "linearChooseFrom"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 270
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->groupFromSelectedToken:Landroidx/constraintlayout/widget/Group;

    const-string v3, "groupFromSelectedToken"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 271
    iget-object v1, v2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->groupToSelectedToken:Landroidx/constraintlayout/widget/Group;

    const-string v2, "groupToSelectedToken"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public setupNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "side"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeOutputView:Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p2, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getNetworkTypeView()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    .line 110
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->networkTypeInputView:Lcom/iMe/ui/custom/NetworkTypeView;

    invoke-virtual {p2, p1}, Lcom/iMe/ui/custom/NetworkTypeView;->setNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    :goto_0
    return-void
.end method

.method public setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkSwitchType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object p1

    .line 119
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textSwapProtocolDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->imageSwapProtocolIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 121
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

    .line 127
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

    .line 128
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

    .line 123
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

    .line 124
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

    .line 342
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/iMe/utils/hints/HintUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v2, "parentLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/utils/hints/HintUtils;->showChangeNetworkHint(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

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

    .line 94
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p2, p1, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createSelectNetworkTypeDialog(Landroid/content/Context;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showMinMaxInputValues(Lcom/iMe/model/wallet/select/SelectableToken;Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;)V
    .locals 8

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "information"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 312
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "textFromAdditionalDescription"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;)V

    .line 313
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromAdditionalDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 314
    sget v2, Lorg/telegram/messenger/R$string;->binance_convert_min_max_convert_value:I

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 315
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;->getMinLimit()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v6

    invoke-static {v4, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 316
    invoke-virtual {p1}, Lcom/iMe/model/wallet/select/SelectableToken;->getTicker()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 317
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;->getMaxLimit()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v4

    invoke-static {p2, v4}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 318
    invoke-virtual {p1}, Lcom/iMe/model/wallet/select/SelectableToken;->getTicker()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v3, p2

    .line 313
    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showNotEnoughMoneyBinanceErrorDialog()V
    .locals 9

    .line 283
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_common_error_not_enough_money_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->binance_convert_not_enough_money_error_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    .line 282
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
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

    .line 299
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_approve_success_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_approve_success_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p0

    .line 298
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showSuccessSwapAlert()V
    .locals 9

    .line 291
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_swap_success_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_swap_success_description:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 290
    new-instance v6, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V

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

    .line 338
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

    .line 168
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;

    move-result-object v0

    .line 169
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSwapProcessBinding;->textFromDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
