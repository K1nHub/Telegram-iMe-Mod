.class public final Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;
.super Lcom/smedialink/ui/base/mvp/MvpBottomSheet;
.source "WalletConnectMessageSignBottomSheetDialog.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectMessageSignBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectMessageSignBottomSheetDialog.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,146:1\n13#2,4:147\n56#3,6:151\n56#3,6:157\n*S KotlinDebug\n*F\n+ 1 WalletConnectMessageSignBottomSheetDialog.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog\n*L\n35#1:147,4\n40#1:151,6\n41#1:157,6\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final walletFlowCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$UbpQ30PpTIYoDb0i3gwzCvDgg54(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->showSignConfirmationDialog$lambda-9(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WDsWGS0Mo8UMJcyQZUQUU2GXsAE(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->showSignConfirmationDialog$lambda-9$lambda-8(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 35
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 44
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 9

    const-string v0, "sessionItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/smedialink/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 31
    iput-object p6, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 35
    new-instance p6, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;

    move-object v2, p6

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$presenter$2;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p2

    const-string p3, "mvpDelegate"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-class p4, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "presenter"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, p6}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 35
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4, p4}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 40
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$special$$inlined$inject$default$2;

    invoke-direct {p2, p0, p4, p4}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$binding$2;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V

    invoke-static {p0, p4, p1, v1, p4}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpBottomSheet;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$rejectSign(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->rejectSign()V

    return-void
.end method

.method public static final synthetic access$showSignConfirmationDialog(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->showSignConfirmationDialog()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getWalletFlowCoordinator()Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    return-object v0
.end method

.method public static final newInstance(JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;
    .locals 7

    sget-object v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$Companion;

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$Companion;->newInstance(JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private final rejectSign()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->rejectSign()V

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 82
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;

    move-result-object v0

    .line 83
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->buttonProcess:Lcom/smedialink/ui/custom/BigActionButton;

    invoke-virtual {v1}, Lcom/smedialink/ui/custom/ActionButton;->applyColors()V

    .line 84
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "windowBackgroundWhiteGrayIcon"

    .line 85
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const-string v2, ""

    .line 86
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 88
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "windowBackgroundWhiteBlueHeader"

    .line 89
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 92
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->textMessage:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 93
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMonoTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 111
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;

    move-result-object v0

    .line 112
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->buttonProcess:Lcom/smedialink/ui/custom/BigActionButton;

    const-string v2, "buttonProcess"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$setupListeners$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 113
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v0, "buttonClose"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$setupListeners$1$2;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 100
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;

    move-result-object v0

    .line 101
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_title:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->buttonProcess:Lcom/smedialink/ui/custom/BigActionButton;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_button_sign:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 105
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    return-void
.end method

.method private final showSignConfirmationDialog()V
    .locals 6

    .line 119
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->getSendConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final showSignConfirmationDialog$lambda-9(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getWalletFlowCoordinator()Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    move-result-object v1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const-string v0, "fragment.parentLayout"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;->startAction$default(Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/fork/utils/Callbacks$Callback;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final showSignConfirmationDialog$lambda-9$lambda-8(Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->approveSign()V

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->rejectSign()V

    .line 74
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->setupColors()V

    .line 54
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->setupListeners()V

    .line 55
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->setupViews()V

    .line 57
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;

    move-result-object v0

    .line 66
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->textMessage:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->textFrom:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_from:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 68
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;->textPeerUrl:Lorg/telegram/ui/Cells/TextDetailCell;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_dapp:I

    invoke-interface {p2, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void
.end method
