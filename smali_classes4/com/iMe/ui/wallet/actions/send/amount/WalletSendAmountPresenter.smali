.class public final Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletSendAmountPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$Companion;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;,
        Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSendAmountPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSendAmountPresenter.kt\ncom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,777:1\n42#2,12:778\n42#2,12:790\n42#2,12:802\n42#2,12:814\n42#2,12:826\n42#2,12:839\n42#2,12:851\n42#2,12:863\n42#2,12:875\n1#3:838\n766#4:887\n857#4,2:888\n*S KotlinDebug\n*F\n+ 1 WalletSendAmountPresenter.kt\ncom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter\n*L\n172#1:778,12\n245#1:790,12\n299#1:802,12\n327#1:814,12\n357#1:826,12\n505#1:839,12\n545#1:851,12\n589#1:863,12\n674#1:875,12\n759#1:887\n759#1:888,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

.field private final availableNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;"
        }
    .end annotation
.end field

.field private availableTokensForBinanceReplenish:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;"
        }
    .end annotation
.end field

.field private final binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

.field private comment:Ljava/lang/String;

.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private currentState:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

.field private final donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

.field private isAllowSendInformationToChat:Z

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:I

.field private selectedAddress:Ljava/lang/String;

.field private selectedAmount:Ljava/lang/String;

.field private selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

.field private selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

.field private selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private selectedTwitterUserAvatarUrl:Ljava/lang/String;

.field private selectedUser:Lorg/telegram/tgnet/TLRPC$User;

.field private sendMode:I

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$2W_XNkz6_PEyqyPINqNSp7b7YRY(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startSelectTokenFlow$lambda$2(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5IMmsZ5o6cyq__zpEs7EOYDwVAs()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish$lambda$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$AhxP4TzcN4ffLaotRQpvn-hzhZc(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startSelectTokenFlow$lambda$1(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JVCazy3cSojGvicK9pQPpZ2EiXE(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startChooseNetworkDialog$lambda$0(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y2EsQe5Rv07wmGGEv2Dwn3Aid7c(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startSelectTokenFlow$lambda$3(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceInternalInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "donationsInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "telegramControllersGateway"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "telegramGateway"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 63
    iput p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->screenType:I

    .line 64
    iput-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    .line 65
    iput-object p3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 66
    iput-object p4, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 67
    iput-object p5, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 68
    iput-object p6, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 69
    iput-object p7, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 70
    iput-object p8, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 71
    iput-object p9, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 72
    iput-object p10, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 73
    iput-object p11, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 74
    iput-object p12, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 75
    iput-object p13, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getInitialNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resolveUserArg()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resolveChatArg()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 84
    invoke-virtual {p2}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const-string p1, ""

    .line 86
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAmount:Ljava/lang/String;

    const/4 p2, 0x1

    .line 87
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isAllowSendInformationToChat:Z

    .line 88
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->comment:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->initAvailableNetworks()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableNetworks:Ljava/util/List;

    .line 102
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    .line 104
    sget-object p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    const/4 p1, 0x3

    .line 105
    iput p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->sendMode:I

    return-void
.end method

.method public static final synthetic access$configureFees(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->configureFees(Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;)V

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/model/wallet/transfer/TransferScreenArgs;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    return-object p0
.end method

.method public static final synthetic access$getCurrentState$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSuccessMessage(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;D)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSuccessMessage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$isAvailableBalanceLessThanAmount(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/lang/String;)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isAvailableBalanceLessThanAmount(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isBinanceReplenish(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isDonationsTransfer(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isDonationsTransfer()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isWalletTransfer(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isWalletTransfer()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$resetTransactionFee(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetTransactionFee()V

    return-void
.end method

.method public static final synthetic access$resolveAction(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resolveAction(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$runNoEnoughMoneyFlow(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->runNoEnoughMoneyFlow()V

    return-void
.end method

.method public static final synthetic access$selectFee(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method public static final synthetic access$sendMessageToChat(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;JJD)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->sendMessageToChat(JJD)V

    return-void
.end method

.method public static final synthetic access$setAvailableTokensForBinanceReplenish$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/util/List;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setCurrentState$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method private final calculateFeeForDonationsTransaction(JLjava/lang/String;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 353
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->getDataForDonation(JLjava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;

    move-result-object p1

    .line 355
    iget-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string/jumbo p3, "viewState"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 357
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance p3, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 376
    invoke-static {p0, p1, v1, p2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final calculateFeeForTransaction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_0

    .line 499
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/token/Token;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/iMe/storage/domain/model/wallet/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 502
    iget-object v2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getCryptoTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)Lio/reactivex/Observable;

    move-result-object p1

    .line 503
    iget-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo p2, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string/jumbo v0, "viewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 505
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 523
    invoke-static {p0, p1, v2, p2, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final configureFees(Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;)V
    .locals 3

    .line 527
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 528
    new-instance v0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 529
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    .line 530
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    .line 531
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    .line 528
    invoke-direct {v0, v1, v2, p1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    iput-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method private final formatMessageToUser(JDJJ)Ljava/lang/String;
    .locals 3

    .line 744
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_payload:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 745
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    iget-object p4, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p4}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v2, p4

    const/4 p3, 0x1

    .line 746
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenTicker()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, p3

    const/4 p3, 0x2

    .line 747
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, p3

    const/4 p3, 0x3

    .line 748
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p3

    const/4 p1, 0x4

    .line 749
    sget-object p2, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p7, p8}, Ljava/util/Date;-><init>(J)V

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p4

    const-string p5, "US.language"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3, p4}, Lcom/iMe/utils/formatter/DateFormatter;->format(Lcom/iMe/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 744
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final formatTransferArgs(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;
    .locals 16

    move-object/from16 v0, p0

    .line 424
    iget-object v1, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 425
    :cond_0
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams;

    move-result-object v3

    .line 426
    instance-of v4, v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;

    if-eqz v4, :cond_4

    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;

    .line 427
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 428
    iget-object v4, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v8

    .line 429
    iget-object v9, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    .line 430
    move-object v2, v3

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;->getUtxos()Ljava/util/List;

    move-result-object v10

    .line 431
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;->getChangeAddress()Ljava/lang/String;

    move-result-object v11

    .line 432
    iget-object v2, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v2

    :cond_3
    move-object v12, v2

    move-object v5, v1

    .line 426
    invoke-direct/range {v5 .. v12}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;-><init>(DILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 435
    :cond_4
    instance-of v4, v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    if-eqz v4, :cond_a

    new-instance v4, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    .line 436
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 437
    iget-object v5, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v8

    .line 438
    iget-object v9, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    .line 439
    move-object v2, v3

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getChainId()J

    move-result-wide v10

    .line 440
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v12

    .line 441
    iget-object v2, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object v2

    :cond_7
    move-object v13, v2

    .line 442
    iget-object v2, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_8
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v2

    :cond_9
    move-object v14, v2

    .line 443
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v15

    move-object v5, v4

    .line 435
    invoke-direct/range {v5 .. v15}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;-><init>(DILjava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_0

    .line 446
    :cond_a
    instance-of v1, v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;

    if-eqz v1, :cond_c

    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;

    .line 447
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 448
    iget-object v3, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_b
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v7

    .line 449
    iget-object v8, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    .line 450
    iget-object v9, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->comment:Ljava/lang/String;

    .line 451
    iget v10, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->sendMode:I

    const/4 v11, 0x0

    const/16 v12, 0x20

    const/4 v13, 0x0

    move-object v4, v1

    .line 446
    invoke-direct/range {v4 .. v13}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;-><init>(DILjava/lang/String;Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 454
    :cond_c
    instance-of v1, v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    if-eqz v1, :cond_10

    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;

    .line 455
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 456
    iget-object v4, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_d
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v7

    .line 457
    iget-object v8, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    .line 458
    iget-object v2, v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_e
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object v2

    :cond_f
    move-object v9, v2

    .line 459
    check-cast v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->getContractAddress()Ljava/lang/String;

    move-result-object v10

    .line 460
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->getBlockHeader()Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v11

    move-object v4, v1

    .line 454
    invoke-direct/range {v4 .. v11}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;-><init>(DILjava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;)V

    :goto_0
    return-object v1

    :cond_10
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method private final getBinanceAddressesForReplenish(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 294
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object p1

    .line 295
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-virtual {v0, p1, v1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getAddressForTokenReplenish(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 299
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 316
    invoke-static {p0, p1, v3, v0, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final getBinanceAvailableTokensForReplenish(Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 324
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getTokensForReplenish(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 325
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 327
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 345
    invoke-static {p0, p1, v3, p2, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic getBinanceAvailableTokensForReplenish$default(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 321
    sget-object p2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda4;->INSTANCE:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda4;

    .line 319
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish(Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final getBinanceAvailableTokensForReplenish$lambda$7()V
    .locals 0

    return-void
.end method

.method private final getConfirmMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 650
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 651
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_confirm_alert_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 652
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 653
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenTicker()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 650
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 8

    .line 535
    new-instance v7, Lcom/iMe/model/dialog/DialogModel;

    .line 536
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 537
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 535
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getInitialNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    goto :goto_1

    .line 383
    :cond_0
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getLoggedInNetworks()Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v4}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/iMe/storage/domain/model/crypto/Network;

    if-nez v2, :cond_3

    .line 385
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    if-nez v0, :cond_4

    .line 386
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 389
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isDonationsTransfer()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 390
    :cond_5
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEVMNetworks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    :cond_6
    return-object v0
.end method

.method private final getSelectedTokenTicker()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private final getSendConfirmationDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;
    .locals 5

    .line 487
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 488
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_confirm_alert_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getConfirmMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    iget-object v2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_amount_confirm_alert_ok_btn:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSuccessMessage(D)Ljava/lang/String;
    .locals 3

    .line 657
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 658
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_success_send_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 659
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const/4 p1, 0x1

    .line 660
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenTicker()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 657
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final initAvailableNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;",
            ">;"
        }
    .end annotation

    .line 758
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBinanceSupportedNetworks()Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 760
    iget-object v4, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v4}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLoggedInWalletsBlockchains()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 763
    :cond_1
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getLoggedInNetworks()Ljava/util/List;

    move-result-object v1

    .line 764
    :cond_2
    invoke-static {v1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final isAvailableBalanceLessThanAmount(Ljava/lang/String;)Z
    .locals 4

    .line 495
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isBinanceReplenish()Z
    .locals 2

    .line 95
    iget v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->BINANCE_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isDonationsTransfer()Z
    .locals 2

    .line 93
    iget v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->WALLET_TRANSFER_DONATIONS_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isWalletTransfer()Z
    .locals 2

    .line 91
    iget v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->WALLET_TRANSFER_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 667
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/token/Token;

    .line 668
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-direct {v1, v2, v3}, Lcom/iMe/storage/domain/model/wallet/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 671
    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 666
    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 686
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final resetScreenState(Z)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 405
    iput-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    .line 406
    iput-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedTwitterUserAvatarUrl:Ljava/lang/String;

    .line 407
    iput-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 408
    iput-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 410
    :cond_0
    iput-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 411
    sget-object p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    .line 412
    iput-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAmount:Ljava/lang/String;

    .line 413
    iput-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 414
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetTransactionFee()V

    .line 415
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->resetScreen()V

    return-void
.end method

.method private final resetTransactionFee()V
    .locals 1

    const/4 v0, 0x0

    .line 753
    iput-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 754
    iput-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method private final resolveAction(Ljava/lang/String;)V
    .locals 6

    .line 466
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAmount:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    sget-object v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isDonationsTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 478
    sget-object v0, Lcom/iMe/common/TelegramConstants;->INSTANCE:Lcom/iMe/common/TelegramConstants;

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iMe/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v0

    .line 477
    invoke-direct {p0, v0, v1, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->calculateFeeForDonationsTransaction(JLjava/lang/String;)V

    goto :goto_1

    .line 480
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isWalletTransfer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->calculateFeeForTransaction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 469
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 470
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSendConfirmationDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object p1

    .line 471
    iget-object v2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->hasUser(J)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 469
    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->onSuccessValidation(Lcom/iMe/model/dialog/DialogModel;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private final resolveChatArg()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final resolveUserArg()Lorg/telegram/tgnet/TLRPC$User;
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getUserId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final runNoEnoughMoneyFlow()V
    .locals 8

    .line 641
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 642
    new-instance v7, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    .line 643
    iget-object v2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v2, :cond_0

    return-void

    .line 644
    :cond_0
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->resolveByNetworkId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    .line 642
    invoke-direct/range {v1 .. v6}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 641
    invoke-interface {v0, v7}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method private final selectFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 420
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->updateFeeView()V

    return-void
.end method

.method private final sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 542
    invoke-virtual {v0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 543
    iget-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string/jumbo v0, "viewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 545
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0, p3}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)V

    new-instance p3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, p3, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 578
    invoke-static {p0, p1, p2, p3, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final sendMessageToChat(JJD)V
    .locals 25

    move-object/from16 v9, p0

    .line 690
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p5

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->formatMessageToUser(JDJJ)Ljava/lang/String;

    move-result-object v10

    .line 692
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 693
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 694
    iget-object v0, v9, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 695
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_processing_name:I

    .line 694
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "https://imem.app/download"

    .line 697
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 698
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v10

    .line 699
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 693
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v0, v9, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    invoke-static {v0, v7, v8, v11}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const-string/jumbo v12, "user.username"

    if-eqz v0, :cond_2

    const-string v1, "getUser(senderId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v8

    :goto_1
    if-nez v1, :cond_2

    .line 703
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 704
    iget-object v1, v9, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_id:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    sget-object v2, Lcom/iMe/common/Constants$Telegram;->INSTANCE:Lcom/iMe/common/Constants$Telegram;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/iMe/common/Constants$Telegram;->getShareLinkFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 706
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v10

    .line 707
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 703
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_2
    iget-object v0, v9, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    invoke-static {v0, v7, v8, v11}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "getUser(recipientId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v7

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v8

    :goto_3
    if-nez v1, :cond_5

    .line 713
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 714
    iget-object v1, v9, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_id:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 715
    sget-object v2, Lcom/iMe/common/Constants$Telegram;->INSTANCE:Lcom/iMe/common/Constants$Telegram;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/iMe/common/Constants$Telegram;->getShareLinkFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 716
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v10

    .line 717
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 713
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_5
    iget-object v0, v9, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    invoke-static {v0, v7, v8, v11}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getSendMessagesHelper$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-wide/from16 v11, p1

    move-object/from16 v17, v6

    .line 724
    invoke-static/range {v10 .. v24}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 723
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    return-void
.end method

.method private static final startChooseNetworkDialog$lambda$0(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 112
    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 114
    :goto_0
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 115
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    .line 117
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1, v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish$default(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 119
    :cond_2
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetScreenState(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final startSelectTokenFlow$lambda$1(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 143
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAddressesForReplenish(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 145
    invoke-interface {p1, p2}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private static final startSelectTokenFlow$lambda$2(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startSelectTokenFlow(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final startSelectTokenFlow$lambda$3(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 159
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 160
    invoke-interface {p1, p2}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private final transferTokens(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;Z)V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 585
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 583
    invoke-virtual {v0, p1, v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->sendTokens(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;Lcom/iMe/storage/domain/model/crypto/Network;)Lio/reactivex/Observable;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 589
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;ZLcom/iMe/storage/domain/model/crypto/send/TransferArgs;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 637
    invoke-static {p0, p1, p2, v0, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getActionButtonTextByState()Ljava/lang/String;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 126
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    sget-object v2, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 128
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_button_calculate:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 127
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_button_txt:I

    .line 125
    :goto_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getApproveFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 7

    .line 270
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;

    .line 272
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v2

    .line 273
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams;

    move-result-object v3

    .line 274
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 275
    iget-object v5, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 276
    new-instance v6, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getApproveFeeType$1;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getApproveFeeType$1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    move-object v1, v0

    .line 271
    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;-><init>(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getAvatarByNetworkType()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedAddress()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedAmount()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public final getSelectedNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object v0
.end method

.method public final getSelectedToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getSelectedTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->tokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public final getSelectedTwitterUserAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedTwitterUserAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public final isCommentAvailable()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 281
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isWalletTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isDonationsTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->loadBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 283
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAddressesForReplenish(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 285
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish$default(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final resetStateIfNeed()V
    .locals 2

    const-string v0, ""

    .line 263
    iput-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAmount:Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetTransactionFee()V

    .line 265
    sget-object v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    iput-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    .line 266
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->setupScreenState(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V

    return-void
.end method

.method public final send(Ljava/lang/String;)V
    .locals 3

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->formatTransferArgs(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 215
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isWalletTransfer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isDonationsTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/iMe/common/TelegramConstants;->INSTANCE:Lcom/iMe/common/TelegramConstants;

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iMe/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v0

    .line 225
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    .line 223
    invoke-direct {p0, v0, v1, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)V

    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_feature_not_available:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isAllowSendInformationToChat:Z

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->transferTokens(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;Z)V

    goto :goto_1

    .line 234
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_feature_not_available:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final setAllowSendInformationToChat(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isAllowSendInformationToChat:Z

    return-void
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->comment:Ljava/lang/String;

    return-void
.end method

.method public final setSelectedAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    return-void
.end method

.method public final setSelectedChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method public final setSelectedTwitterUserAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedTwitterUserAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public final setSelectedUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 4

    .line 108
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 109
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableNetworks:Ljava/util/List;

    .line 110
    iget-object v2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-static {v2}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v2

    .line 108
    new-instance v3, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showChooseNetworkDialog(Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public final startSelectTokenFlow(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 136
    new-instance v2, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Send;

    .line 137
    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    .line 136
    invoke-direct {v2, v3}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Send;-><init>(Ljava/util/List;)V

    .line 139
    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v3

    .line 135
    new-instance v4, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showSelectTokenDialog(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    new-instance v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish(Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 154
    new-instance v2, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Send;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v3}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Send;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    iget-object v3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v3

    .line 153
    new-instance v4, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showSelectTokenDialog(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    :goto_0
    return-void
.end method

.method public final validateRecipientAddress(Ljava/lang/String;)V
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 239
    invoke-static {p1, v0, v1}, Lcom/iMe/utils/helper/wallet/CryptoHelper;->extractAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lio/reactivex/Observable;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "extractAddress(\n        \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final validateSend(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "rawAmount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 170
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026.invoke(error)\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
