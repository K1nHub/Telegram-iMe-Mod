.class public final Lcom/iMe/ui/wallet/send/WalletSendPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletSendPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/send/WalletSendPresenter$Companion;,
        Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSendPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSendPresenter.kt\ncom/iMe/ui/wallet/send/WalletSendPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1004:1\n63#2,12:1005\n63#2,12:1017\n63#2,12:1030\n63#2,12:1042\n63#2,12:1054\n63#2,12:1066\n63#2,12:1078\n63#2,12:1090\n63#2,12:1102\n1#3:1029\n766#4:1114\n857#4,2:1115\n*S KotlinDebug\n*F\n+ 1 WalletSendPresenter.kt\ncom/iMe/ui/wallet/send/WalletSendPresenter\n*L\n171#1:1005,12\n252#1:1017,12\n381#1:1030,12\n462#1:1042,12\n490#1:1054,12\n521#1:1066,12\n662#1:1078,12\n704#1:1090,12\n750#1:1102,12\n942#1:1114\n942#1:1115,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final amountSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private final donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

.field private final isBinanceReplenish:Z

.field private final isDonationsTransfer:Z

.field private isFirstViewAttach:Z

.field private isValidAddress:Z

.field private final isWalletTransfer:Z

.field private regex:Lkotlin/text/Regex;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedAddress:Ljava/lang/String;

.field private selectedAmount:Ljava/lang/String;

.field private selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

.field private selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

.field private selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private selectedUser:Lorg/telegram/tgnet/TLRPC$User;

.field private sendMode:I

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$TqZaE2VciW0bq4K4nZJC64SGCB8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->subscribeToAmountSubject$lambda$27(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$afgyl_vTc-eW087N_Jau7md12vk()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getBinanceAvailableTokensForReplenish$lambda$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$q9FmBtjVcVFCgdW_ffTe3_NVMWc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->subscribeToAmountSubject$lambda$28(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zRbX-3PovBUpBP7BXSVkGbsSJBE(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->onSelectTokenClick$lambda$0(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/send/WalletSendScreenType;Lcom/iMe/model/wallet/transfer/TransferScreenArgs;Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string/jumbo v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    .line 74
    iput-object p3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 75
    iput-object p4, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 76
    iput-object p5, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 77
    iput-object p6, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 78
    iput-object p7, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 79
    iput-object p8, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 80
    iput-object p9, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 81
    iput-object p10, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 82
    iput-object p11, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 83
    iput-object p12, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 84
    iput-object p13, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 87
    sget-object p3, Lcom/iMe/model/wallet/send/WalletSendScreenType;->WALLET_TRANSFER:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-ne p1, p3, :cond_0

    move p3, p5

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isWalletTransfer:Z

    .line 88
    sget-object p3, Lcom/iMe/model/wallet/send/WalletSendScreenType;->BINANCE_REPLENISH:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    if-ne p1, p3, :cond_1

    move p3, p5

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    .line 89
    sget-object p3, Lcom/iMe/model/wallet/send/WalletSendScreenType;->WALLET_TRANSFER_DONATIONS:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    if-ne p1, p3, :cond_2

    move p4, p5

    :cond_2
    iput-boolean p4, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isDonationsTransfer:Z

    .line 93
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->initAvailableNetworks()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->availableNetworks:Ljava/util/List;

    .line 94
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p3, "create()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    .line 96
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getInitialNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 97
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resolveUserArg()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 98
    invoke-virtual {p2}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    .line 99
    iput-boolean p5, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isValidAddress:Z

    const-string p1, ""

    .line 100
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->comment:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resolveRegex()Lkotlin/text/Regex;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->regex:Lkotlin/text/Regex;

    .line 104
    sget-object p2, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    const/4 p2, 0x3

    .line 105
    iput p2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->sendMode:I

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resolveChatArg()Lorg/telegram/tgnet/TLRPC$Chat;

    .line 108
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    .line 110
    iput-boolean p5, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isFirstViewAttach:Z

    return-void
.end method

.method public static final synthetic access$checkEnteredData(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->checkEnteredData()V

    return-void
.end method

.method public static final synthetic access$configureFees(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->configureFees(Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;)V

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/model/wallet/transfer/TransferScreenArgs;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSelectedAddress$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSelectedAmount$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSelectedTokenBalance$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-object p0
.end method

.method public static final synthetic access$getSelectedUser$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method public static final synthetic access$getSuccessMessage(Lcom/iMe/ui/wallet/send/WalletSendPresenter;D)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getSuccessMessage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$isBinanceReplenish$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    return p0
.end method

.method public static final synthetic access$isDonationsTransfer$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isDonationsTransfer:Z

    return p0
.end method

.method public static final synthetic access$isWalletTransfer$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isWalletTransfer:Z

    return p0
.end method

.method public static final synthetic access$resetStateIfNeeded(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resetStateIfNeeded()V

    return-void
.end method

.method public static final synthetic access$resetTransactionFee(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resetTransactionFee()V

    return-void
.end method

.method public static final synthetic access$runNoEnoughMoneyFlow(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->runNoEnoughMoneyFlow()V

    return-void
.end method

.method public static final synthetic access$selectFee(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method public static final synthetic access$sendReceiptToChat(Lcom/iMe/ui/wallet/send/WalletSendPresenter;JLjava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->sendReceiptToChat(JLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setAvailableTokensForBinanceReplenish$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Ljava/util/List;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setSelectedAddress$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSelectedAmount$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSelectedChat$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method public static final synthetic access$setSelectedTokenBalance$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$setSelectedUser$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public static final synthetic access$showAmountError(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->showAmountError(Z)V

    return-void
.end method

.method public static final synthetic access$updateFee(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->updateFee()V

    return-void
.end method

.method private final calculateFeeForDonationsTransaction(JLjava/lang/String;)V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 517
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->getDataForDonation(JLjava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;

    move-result-object p1

    .line 519
    iget-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
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

    .line 521
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance p3, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, p2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 540
    invoke-static {p0, p1, v1, p2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final calculateFeeForTransaction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/token/Token;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/iMe/storage/domain/model/wallet/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 660
    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getCryptoTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;)Lio/reactivex/Observable;

    move-result-object p1

    .line 661
    iget-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo p2, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 680
    invoke-static {p0, p1, v0, p2, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final checkEnteredData()V
    .locals 3

    .line 409
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isValidAddress:Z

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 413
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 415
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    sget-object v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->LOADING:Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->updateStateButtonSend(Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;)V

    .line 416
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->validateSend()V

    goto :goto_3

    .line 418
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    sget-object v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->updateStateButtonSend(Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;)V

    .line 419
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->hideFeeView()V

    :goto_3
    return-void
.end method

.method private final configureFees(Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;)V
    .locals 3

    .line 684
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 686
    new-instance v0, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 687
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    .line 688
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    .line 689
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    .line 686
    invoke-direct {v0, v1, v2, p1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    .line 685
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method private final formatMessageToUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 920
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 921
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_payload:I

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    .line 922
    iget-object v3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 923
    iget-object v4, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Network;->getFullName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 p1, 0x3

    aput-object p2, v2, p1

    const/4 p1, 0x4

    aput-object p3, v2, p1

    const/4 p1, 0x5

    .line 928
    sget-object v3, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    .line 929
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p4, p5}, Ljava/util/Date;-><init>(J)V

    .line 930
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string p2, "US.language"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 927
    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/formatter/DateFormatter;->format$default(Lcom/iMe/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    aput-object p6, v2, p1

    .line 920
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final formatTransferArgs(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;
    .locals 16

    move-object/from16 v0, p0

    .line 606
    iget-object v1, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 607
    :cond_0
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams;

    move-result-object v3

    .line 608
    instance-of v4, v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;

    if-eqz v4, :cond_4

    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;

    .line 609
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 610
    iget-object v4, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v8

    .line 611
    iget-object v9, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    .line 612
    move-object v2, v3

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;->getUtxos()Ljava/util/List;

    move-result-object v10

    .line 613
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;->getChangeAddress()Ljava/lang/String;

    move-result-object v11

    .line 614
    iget-object v2, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

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

    .line 608
    invoke-direct/range {v5 .. v12}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;-><init>(DILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 617
    :cond_4
    instance-of v4, v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    if-eqz v4, :cond_a

    new-instance v4, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    .line 618
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 619
    iget-object v5, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v8

    .line 620
    iget-object v9, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    .line 621
    move-object v2, v3

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getChainId()J

    move-result-wide v10

    .line 622
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;->getNonce()Ljava/math/BigInteger;

    move-result-object v12

    .line 623
    iget-object v2, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

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

    .line 624
    iget-object v2, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

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

    .line 625
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v15

    move-object v5, v4

    .line 617
    invoke-direct/range {v5 .. v15}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;-><init>(DILjava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_0

    .line 628
    :cond_a
    instance-of v1, v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;

    if-eqz v1, :cond_c

    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;

    .line 629
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 630
    iget-object v4, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_b
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v7

    .line 631
    iget-object v8, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    .line 632
    iget-object v9, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->comment:Ljava/lang/String;

    .line 633
    iget v10, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->sendMode:I

    .line 634
    check-cast v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;->getWalletSeqno()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x40

    const/4 v14, 0x0

    move-object v4, v1

    .line 628
    invoke-direct/range {v4 .. v14}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;-><init>(DILjava/lang/String;Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 637
    :cond_c
    instance-of v1, v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    if-eqz v1, :cond_10

    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;

    .line 638
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 639
    iget-object v4, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_d
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v7

    .line 640
    iget-object v8, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    .line 641
    iget-object v2, v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

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

    .line 642
    check-cast v3, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->getContractAddress()Ljava/lang/String;

    move-result-object v10

    .line 643
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;->getBlockHeader()Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v11

    move-object v4, v1

    .line 637
    invoke-direct/range {v4 .. v11}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;-><init>(DILjava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;)V

    :goto_0
    return-object v1

    :cond_10
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method private final getApproveFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 7

    .line 443
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v0, :cond_0

    .line 444
    new-instance v0, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;

    .line 445
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v2

    .line 446
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams;

    move-result-object v3

    .line 447
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 448
    iget-object v5, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 449
    new-instance v6, Lcom/iMe/ui/wallet/send/WalletSendPresenter$getApproveFeeType$1;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$getApproveFeeType$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    move-object v1, v0

    .line 444
    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;-><init>(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getBinanceAddressesForReplenish(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 457
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object p1

    .line 458
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-virtual {v0, p1, v1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getAddressForTokenReplenish(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 460
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
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

    .line 462
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 479
    invoke-static {p0, p1, v3, v0, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final getBinanceAvailableTokensForReplenish(Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 487
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getTokensForReplenish(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 488
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
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

    .line 490
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 509
    invoke-static {p0, p1, v3, p2, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic getBinanceAvailableTokensForReplenish$default(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 484
    sget-object p2, Lcom/iMe/ui/wallet/send/WalletSendPresenter$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/ui/wallet/send/WalletSendPresenter$$ExternalSyntheticLambda1;

    .line 482
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getBinanceAvailableTokensForReplenish(Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final getBinanceAvailableTokensForReplenish$lambda$11()V
    .locals 0

    return-void
.end method

.method private final getConfirmMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 810
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 811
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_confirm_alert_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 813
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 814
    iget-object v3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

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

    .line 812
    invoke-static {p1, v3}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 816
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getSelectedTokenTicker()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 810
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getFeeDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 8

    .line 694
    new-instance v7, Lcom/iMe/model/dialog/DialogModel;

    .line 695
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 696
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 694
    invoke-direct/range {v0 .. v6}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getInitialNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 5

    .line 544
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    goto :goto_1

    .line 547
    :cond_0
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getLoggedInNetworks()Ljava/util/List;

    move-result-object v0

    .line 548
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

    iget-object v4, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

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

    .line 549
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    if-nez v0, :cond_4

    .line 550
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 554
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isDonationsTransfer:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-eq v1, v2, :cond_5

    .line 555
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getLoggedInNetworks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    goto :goto_2

    .line 558
    :cond_5
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBinanceNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 559
    invoke-virtual {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getLoggedInNetworks()Ljava/util/List;

    move-result-object v0

    .line 560
    invoke-virtual {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBinanceNetworks()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 561
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Network;

    :cond_6
    :goto_2
    return-object v0
.end method

.method private final getSelectedTokenTicker()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

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

    .line 648
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 649
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_confirm_alert_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getConfirmMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 651
    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 652
    iget-object v3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_amount_confirm_alert_ok_btn:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSuccessMessage(D)Ljava/lang/String;
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 821
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_success_send_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 822
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p2

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

    invoke-static {p1, p2}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const/4 p1, 0x1

    .line 823
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getSelectedTokenTicker()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 820
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

    .line 941
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    if-eqz v0, :cond_1

    .line 942
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBinanceNetworks()Ljava/util/List;

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

    .line 943
    iget-object v4, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

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

    .line 946
    :cond_1
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getLoggedInNetworks()Ljava/util/List;

    move-result-object v1

    .line 947
    :cond_2
    invoke-static {v1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final onSelectTokenClick$lambda$0(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->onSelectTokenClick()V

    return-void
.end method

.method private final resetScreenState(Z)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 588
    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    .line 589
    iput-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 592
    :cond_0
    iput-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 593
    sget-object p1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    .line 594
    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    .line 595
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resetTransactionFee()V

    .line 596
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/send/WalletSendView;->resetScreen()V

    .line 597
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-static {v0}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    return-void
.end method

.method private final resetStateIfNeeded()V
    .locals 1

    const-string v0, ""

    .line 438
    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resetTransactionFee()V

    return-void
.end method

.method private final resetTransactionFee()V
    .locals 1

    const/4 v0, 0x0

    .line 936
    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoTransferMetadata:Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 937
    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method private final resolveChatArg()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 4

    .line 580
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final resolveRegex()Lkotlin/text/Regex;
    .locals 3

    new-instance v0, Lkotlin/text/Regex;

    .line 568
    sget-object v1, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->Companion:Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;

    .line 569
    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    .line 568
    invoke-virtual {v1, v2}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;->mapByBlockchainType(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    move-result-object v1

    .line 570
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->getRegex()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final resolveUserArg()Lorg/telegram/tgnet/TLRPC$User;
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getUserId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final runNoEnoughMoneyFlow()V
    .locals 9

    .line 801
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 802
    new-instance v8, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    .line 803
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 804
    :cond_0
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->resolveByNetworkId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, v8

    .line 802
    invoke-direct/range {v1 .. v7}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 801
    invoke-interface {v0, v8}, Lcom/iMe/ui/wallet/send/WalletSendView;->showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final selectFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 1

    .line 601
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 602
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getApproveFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->updateFeeView(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    return-void
.end method

.method private final sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)V
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->donationsInteractor:Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 701
    invoke-virtual {v0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/donations/DonationsInteractor;->sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 702
    iget-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string/jumbo v0, "viewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 704
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0, p3}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)V

    new-instance p3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, p3, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 739
    invoke-static {p0, p1, p2, p3, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final sendReceiptToChat(JLjava/lang/String;)V
    .locals 40

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 827
    iget-object v0, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 828
    iget-object v1, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    .line 827
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v9

    :goto_0
    const-string v1, ""

    if-nez v0, :cond_1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object v10, v0

    :goto_1
    const/4 v0, 0x6

    .line 830
    invoke-static {v10, v0}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 831
    iget-object v2, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 832
    iget-object v2, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isTON()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 833
    iget-object v0, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_hash_unavailable:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 835
    :cond_2
    invoke-static {v8, v0}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object/from16 v19, v0

    .line 838
    iget-object v0, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isTON()Z

    move-result v0

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_3

    move-object/from16 v24, v1

    goto :goto_3

    .line 841
    :cond_3
    iget-object v0, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 842
    sget v2, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_open_etherscan:I

    new-array v3, v14, [Ljava/lang/Object;

    .line 843
    iget-object v4, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    .line 841
    invoke-interface {v0, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 846
    :goto_3
    iget-object v0, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isTON()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v6, v1

    goto :goto_4

    .line 849
    :cond_4
    iget-object v0, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 850
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_open_scanner:I

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v24, v2, v15

    .line 849
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 859
    :goto_4
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    .line 855
    invoke-direct/range {v0 .. v6}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->formatMessageToUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 864
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 865
    iget-object v3, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v3, v10}, Lcom/iMe/storage/domain/model/crypto/Network;->getAddressUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 866
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/16 v16, 0x0

    move-object v11, v0

    move v5, v14

    move v14, v3

    move v3, v15

    move v15, v4

    .line 867
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 868
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v2, v1, v3

    .line 869
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 870
    iget-object v4, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    iget-object v6, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/iMe/storage/domain/model/crypto/Network;->getAddressUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 871
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x6

    const/16 v18, 0x0

    move-object v13, v0

    move-object/from16 v14, v17

    move/from16 v17, v4

    .line 872
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    aput-object v2, v1, v5

    .line 863
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 875
    iget-object v2, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isTON()Z

    move-result v2

    if-nez v2, :cond_5

    .line 877
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 878
    iget-object v4, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v4, v8}, Lcom/iMe/storage/domain/model/crypto/Network;->getTxUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 879
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v18, v0

    .line 880
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 876
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 885
    iget-object v4, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v4, v8}, Lcom/iMe/storage/domain/model/crypto/Network;->getTxUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 886
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v4, 0x6

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v24

    move/from16 v24, v4

    .line 887
    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 883
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    :cond_5
    iget-object v2, v7, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    invoke-static {v2, v3, v5, v9}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getSendMessagesHelper$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v25, v0

    move-wide/from16 v26, p1

    move-object/from16 v32, v1

    .line 894
    invoke-static/range {v25 .. v39}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    .line 893
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    return-void
.end method

.method private final showAmountError(Z)V
    .locals 2

    .line 369
    sget-object v0, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/iMe/manager/common/FeatureAvailableManager$Token;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->isPurchaseAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_token_details_action_buy:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 374
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-interface {v1, p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupAmountInputErrorState(ZLjava/lang/String;)V

    return-void
.end method

.method private final subscribeToAmountSubject()V
    .locals 4

    .line 950
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    .line 951
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 952
    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/send/WalletSendPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 970
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 971
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 972
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 973
    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$subscribeToAmountSubject$2;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/send/WalletSendPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "private fun subscribeToA\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 990
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToAmountSubject$lambda$27(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final subscribeToAmountSubject$lambda$28(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final transferTokens(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;Z)V
    .locals 3

    .line 743
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 746
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 744
    invoke-virtual {v0, p1, v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->sendTokens(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;Lcom/iMe/storage/domain/model/crypto/Network;)Lio/reactivex/Observable;

    move-result-object v0

    .line 748
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 750
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;ZLcom/iMe/storage/domain/model/crypto/send/TransferArgs;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 797
    invoke-static {p0, p1, p2, v0, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final updateFee()V
    .locals 3

    .line 424
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isDonationsTransfer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/iMe/common/TelegramConstants;->INSTANCE:Lcom/iMe/common/TelegramConstants;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iMe/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v0

    .line 427
    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    .line 425
    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->calculateFeeForDonationsTransaction(JLjava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_0
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isWalletTransfer:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    if-eqz v0, :cond_2

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    .line 430
    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->calculateFeeForTransaction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final validateSend()V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 379
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onAmountChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->amountSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCommentChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "commentText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->comment:Ljava/lang/String;

    return-void
.end method

.method public final onContactsClick()V
    .locals 5

    .line 289
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 291
    iget-object v3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 292
    iget-object v4, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    .line 293
    sget v1, Lorg/telegram/messenger/R$string;->binance_replenish_token_choose_token_first_error:I

    goto :goto_0

    .line 295
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->binance_replenish_token_choose_token_cant_change_error:I

    .line 291
    :goto_0
    invoke-interface {v3, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 300
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "destroyAfterSelect"

    .line 301
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "returnAsResult"

    .line 302
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "allowSelf"

    .line 303
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "allowBots"

    .line 304
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isWalletTransfer:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "is_choose_wallet_transfer_recipient"

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "network_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-interface {v1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->openChooseContact(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 345
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 347
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->onTokenSelected(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 350
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-static {v1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    .line 351
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupReplenishAddress(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupAvatarRecipient(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 353
    sget-object v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->updateStateButtonSend(Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;)V

    const/4 v1, 0x0

    .line 354
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupRecipientInputErrorState(Z)V

    .line 355
    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isTON()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupCommentVisibility(Z)V

    .line 358
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getTokenItem()Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getBinanceAddressesForReplenish(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 360
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    const/4 v3, 0x2

    invoke-static {p0, v0, v2, v3, v2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getBinanceAvailableTokensForReplenish$default(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 363
    :cond_2
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->subscribeToAmountSubject()V

    .line 364
    iput-boolean v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isFirstViewAttach:Z

    return-void
.end method

.method public final onMaxAmountClick()V
    .locals 6

    .line 326
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-interface {v0, v2}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupTokenInputErrorState(Z)V

    goto :goto_2

    .line 329
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 330
    iget-object v3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v3

    new-instance v5, Ljava/math/BigDecimal;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    invoke-static {v5}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "selectedTokenBalance?.to\u2026.orZero().toPlainString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupAmount(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final onReplenish()V
    .locals 9

    .line 336
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 337
    new-instance v8, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    .line 338
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->resolveByNetworkId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, v8

    .line 337
    invoke-direct/range {v1 .. v7}, Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 336
    invoke-interface {v0, v8}, Lcom/iMe/ui/wallet/send/WalletSendView;->openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSelectContact(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 208
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->checkEnteredData()V

    .line 210
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-interface {p1, p2}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupAvatarRecipient(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public final onSelectNetworkClick(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->subscribeToAmountSubject()V

    if-eqz p1, :cond_2

    .line 122
    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 124
    :goto_0
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 125
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isTON()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupCommentVisibility(Z)V

    .line 126
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resolveRegex()Lkotlin/text/Regex;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->regex:Lkotlin/text/Regex;

    .line 127
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resetScreenState(Z)V

    .line 128
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getBinanceAvailableTokensForReplenish$default(Lcom/iMe/ui/wallet/send/WalletSendPresenter;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onSelectTokenClick()V
    .locals 4

    .line 136
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 138
    new-instance v1, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Send;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Send;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/send/WalletSendView;->openSelectTokenScreen(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    new-instance v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getBinanceAvailableTokensForReplenish(Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 149
    new-instance v1, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Send;

    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Send;-><init>(Ljava/util/List;)V

    .line 150
    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/send/WalletSendView;->openSelectTokenScreen(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onTokenSelected(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 5

    const-string/jumbo v0, "selectedToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 159
    :cond_1
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getBinanceAddressesForReplenish(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 165
    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v2

    .line 167
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    .line 164
    invoke-virtual {v0, v2, v3, p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance(Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v2, "viewState"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v0, v2, v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 171
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/send/WalletSendPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/send/WalletSendPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$onTokenSelected$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v4, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-static {p0, p1, v1, v3, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final resolveAction()V
    .locals 6

    .line 278
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedTokenBalance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->runNoEnoughMoneyFlow()V

    goto :goto_2

    .line 281
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 282
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->getSendConfirmationDialogModel(Ljava/lang/String;)Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->hasUser(J)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 281
    :goto_1
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/send/WalletSendView;->onSuccessValidation(Lcom/iMe/model/dialog/DialogModel;Z)V

    :goto_2
    return-void
.end method

.method public final send(Z)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAmount:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->formatTransferArgs(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_feature_not_available:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :cond_0
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isWalletTransfer:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isBinanceReplenish:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 232
    :cond_1
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isDonationsTransfer:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of p1, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    if-eqz p1, :cond_2

    .line 234
    sget-object p1, Lcom/iMe/common/TelegramConstants;->INSTANCE:Lcom/iMe/common/TelegramConstants;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->args:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/iMe/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v1

    .line 235
    check-cast v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    .line 233
    invoke-direct {p0, v1, v2, v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)V

    goto :goto_1

    .line 240
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_feature_not_available:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 229
    :cond_3
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->transferTokens(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;Z)V

    :goto_1
    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 3

    .line 113
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    .line 114
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->availableNetworks:Ljava/util/List;

    .line 115
    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-static {v2}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/send/WalletSendView;->showChooseNetworkDialog(Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    return-void
.end method

.method public final validateEnterAddress(Ljava/lang/String;)V
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->regex:Lkotlin/text/Regex;

    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupRecipientInputErrorState(Z)V

    .line 318
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isFirstViewAttach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 319
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->setupAvatarRecipient(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 320
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->regex:Lkotlin/text/Regex;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->isValidAddress:Z

    .line 321
    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedAddress:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->checkEnteredData()V

    return-void
.end method

.method public final validateRecipientAddress(Ljava/lang/String;)V
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 246
    invoke-static {p1, v0, v1}, Lcom/iMe/utils/helper/wallet/CryptoHelper;->extractAddressAndAmount(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lio/reactivex/Observable;

    move-result-object p1

    .line 251
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "extractAddressAndAmount(\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
