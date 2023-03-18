.class public final Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletSendAmountPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$Companion;,
        Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;,
        Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSendAmountPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSendAmountPresenter.kt\ncom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,651:1\n39#2,8:652\n39#2,8:660\n39#2,8:668\n39#2,8:676\n39#2,8:684\n39#2,8:696\n39#2,8:704\n39#2,8:712\n39#2,8:720\n1549#3:692\n1620#3,3:693\n*S KotlinDebug\n*F\n+ 1 WalletSendAmountPresenter.kt\ncom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter\n*L\n159#1:652,8\n197#1:660,8\n265#1:668,8\n288#1:676,8\n311#1:684,8\n445#1:696,8\n480#1:704,8\n517#1:712,8\n576#1:720,8\n374#1:692\n374#1:693,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

.field private availableTokensForBinanceReplenish:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field

.field private final binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

.field private comment:Ljava/lang/String;

.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

.field private final cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private currentState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

.field private final donationsInteractor:Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;

.field private isAllowSendInformationToChat:Z

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:I

.field private selectedAddress:Ljava/lang/String;

.field private selectedAmount:Ljava/lang/String;

.field private selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

.field private selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

.field private selectedTwitterUserAvatarUrl:Ljava/lang/String;

.field private selectedUser:Lorg/telegram/tgnet/TLRPC$User;

.field private sendMode:I

.field private final telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

.field private tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

.field private final walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$8hBmFXe1Fa3wkx_fWYHVCgIltNg(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startSelectTokenFlow$lambda$1(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EbaciUY1prH5HrW5nMYpzBlVttc(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startSelectTokenFlow$lambda$2(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KeP-w4fe1HzwCO_-eVDfpFXTWps(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startSelectTokenFlow$lambda$3(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NESt1IliR16YrceuGYX3bXeRjRk()V
    .locals 0

    invoke-static {}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish$lambda$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZcYHYtzgpa88hy4SK3rPN0jP-a0(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startChooseNetworkDialog$lambda$0(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILcom/smedialink/model/wallet/transfer/TransferScreenArgs;Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Lcom/smedialink/gateway/TelegramControllersGateway;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "donationsInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceInternalInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 58
    iput p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->screenType:I

    .line 59
    iput-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    .line 60
    iput-object p3, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 61
    iput-object p4, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->donationsInteractor:Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 62
    iput-object p5, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 63
    iput-object p6, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 64
    iput-object p7, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    .line 65
    iput-object p8, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 66
    iput-object p9, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 67
    iput-object p10, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 68
    iput-object p11, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 69
    iput-object p12, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 70
    iput-object p13, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 76
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getInitialNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 77
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resolveUserArg()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 79
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resolveChatArg()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 80
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resolveTokenArg()Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    const-string p1, ""

    .line 82
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAmount:Ljava/lang/String;

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isAllowSendInformationToChat:Z

    .line 84
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->comment:Ljava/lang/String;

    .line 95
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    .line 97
    sget-object p1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->PREPARE:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    const/4 p1, 0x3

    .line 98
    iput p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->sendMode:I

    return-void
.end method

.method public static final synthetic access$configureFees(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->configureFees(Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;)V

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    return-object p0
.end method

.method public static final synthetic access$getCurrentState$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSuccessMessage(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;D)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSuccessMessage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method

.method public static final synthetic access$isAvailableBalanceLessThanAmount(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/lang/String;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isAvailableBalanceLessThanAmount(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isBinanceReplenish(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isDonationsTransfer(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isDonationsTransfer()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isWalletTransfer(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isWalletTransfer()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$resetTransactionFee(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetTransactionFee()V

    return-void
.end method

.method public static final synthetic access$resolveAction(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resolveAction(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$runNoEnoughMoneyFlow(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->runNoEnoughMoneyFlow()V

    return-void
.end method

.method public static final synthetic access$selectFee(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method public static final synthetic access$sendMessageToChat(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;JJD)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->sendMessageToChat(JJD)V

    return-void
.end method

.method public static final synthetic access$setAvailableTokensForBinanceReplenish$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/util/List;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setCurrentState$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    return-void
.end method

.method public static final synthetic access$setSendMode$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->sendMode:I

    return-void
.end method

.method public static final synthetic access$setTokenBalance$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method private final calculateFeeForDonationsTransaction(JLjava/lang/String;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->donationsInteractor:Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 308
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;->getDataForDonation(JLjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 309
    iget-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string p3, "viewState"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 311
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance p3, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p3, p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, p2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForDonationsTransaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, p3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 328
    invoke-static {p0, p1, v1, p2, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final calculateFeeForTransaction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 442
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getCryptoTransferMetadata(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 443
    iget-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string v0, "viewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 445
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$calculateFeeForTransaction$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 462
    invoke-static {p0, p1, v2, p2, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final configureFees(Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;)V
    .locals 4

    .line 466
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 467
    new-instance v0, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;)V

    iput-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method private final formatMessageToUser(JDJJ)Ljava/lang/String;
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_payload:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 627
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result p4

    invoke-static {p3, p4}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, v2, p4

    .line 628
    iget-object p3, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result p4

    invoke-interface {p3, p4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v2, p4

    .line 629
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v2, p4

    .line 630
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    .line 631
    sget-object p1, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p7, p8}, Ljava/util/Date;-><init>(J)V

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    const-string p4, "US.language"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/smedialink/utils/formatter/DateFormatter;->format(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    .line 626
    invoke-interface {v0, v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final formatTransferArgs(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;
    .locals 12

    .line 379
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    if-eqz v0, :cond_6

    .line 380
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    if-eqz v0, :cond_6

    .line 381
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    sget-object v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getWeiFromToken(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object v4

    .line 396
    iget-object v5, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    .line 397
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 398
    iget-object v6, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->comment:Ljava/lang/String;

    .line 399
    iget v7, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->sendMode:I

    .line 394
    new-instance p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$TON;-><init>(DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getWeiFromToken(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object v4

    .line 384
    iget-object v5, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    .line 385
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 386
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getChain()Lcom/smedialink/storage/domain/model/crypto/Chain;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/Chain;->getId()J

    move-result-wide v6

    .line 387
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getNonce()Ljava/math/BigInteger;

    move-result-object v8

    .line 388
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object p1

    if-nez p1, :cond_3

    .line 389
    :cond_2
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getPrice()Ljava/math/BigInteger;

    move-result-object p1

    :cond_3
    move-object v9, p1

    .line 390
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object p1

    if-nez p1, :cond_5

    .line 391
    :cond_4
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getLimit()Ljava/math/BigInteger;

    move-result-object p1

    :cond_5
    move-object v10, p1

    .line 392
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getContractAddress()Ljava/lang/String;

    move-result-object v11

    .line 382
    new-instance p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;-><init>(DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-object v1
.end method

.method private final getAvailableTransferTokensByNetwork()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation

    .line 372
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    .line 373
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 375
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v3, v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-static {v2, v3, v4}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/model/wallet/select/SelectableToken$WithResLogo;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final getBinanceAddressesForReplenish(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 261
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 259
    invoke-virtual {v0, p1, v1}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getAddressForTokenReplenish(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 263
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 265
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAddressesForReplenish$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 280
    invoke-static {p0, p1, v3, v0, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final getBinanceAvailableTokensForReplenish(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 285
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getTokensForReplenish(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 286
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 288
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback;)V

    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getBinanceAvailableTokensForReplenish$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 303
    invoke-static {p0, p1, v3, p2, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic getBinanceAvailableTokensForReplenish$default(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 283
    sget-object p2, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda4;->INSTANCE:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda4;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final getBinanceAvailableTokensForReplenish$lambda$7()V
    .locals 0

    return-void
.end method

.method private final getConfirmMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 559
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 560
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_confirm_alert_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 561
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v3

    invoke-static {p1, v3}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 562
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 559
    invoke-interface {v0, v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getFeeDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 8

    .line 470
    new-instance v7, Lcom/smedialink/model/dialog/DialogModel;

    .line 471
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 472
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    .line 470
    invoke-direct/range {v0 .. v6}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final getInitialNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    .line 333
    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->TON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isDonationsTransfer()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    :cond_1
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->getEVMNetworks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    :cond_2
    return-object v0
.end method

.method private final getSendConfirmationDialogModel(Ljava/lang/String;)Lcom/smedialink/model/dialog/DialogModel;
    .locals 5

    .line 430
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 431
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_confirm_alert_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getConfirmMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 433
    iget-object v2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    iget-object v3, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_amount_confirm_alert_ok_btn:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getSuccessMessage(D)Ljava/lang/String;
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 567
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_success_send_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 568
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result p2

    invoke-static {p1, p2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    .line 569
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 566
    invoke-interface {v0, v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getWeiFromToken(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;
    .locals 1

    .line 410
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-static {p1, v0}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getWeiConvertUnit(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object p1

    goto :goto_0

    .line 411
    :cond_0
    sget-object p1, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    :goto_0
    return-object p1
.end method

.method private final isAvailableBalanceLessThanAmount(Ljava/lang/String;)Z
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

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

    .line 92
    iget v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->screenType:I

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

    .line 90
    iget v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->WALLET_TRANSFER_DONATIONS_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isSupportTokenOnNetwork(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Z
    .locals 2

    .line 356
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getTokensByNetwork(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isWalletTransfer()Z
    .locals 2

    .line 88
    iget v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->WALLET_TRANSFER_SCREEN_TYPE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final loadBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 6

    .line 573
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 574
    iget-object v3, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 587
    invoke-static {p0, p1, v0, v1, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final resetScreenState()V
    .locals 2

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 360
    sget-object v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->PREPARE:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    iput-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    const-string v1, ""

    .line 361
    iput-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAmount:Ljava/lang/String;

    .line 362
    iput-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 363
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetTransactionFee()V

    .line 364
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->resetScreen()V

    return-void
.end method

.method private final resetTransactionFee()V
    .locals 1

    const/4 v0, 0x0

    .line 635
    iput-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 636
    iput-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method

.method private final resolveAction(Ljava/lang/String;)V
    .locals 6

    .line 415
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAmount:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    sget-object v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isDonationsTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
    sget-object v0, Lcom/smedialink/common/TelegramConstants;->INSTANCE:Lcom/smedialink/common/TelegramConstants;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->calculateFeeForDonationsTransaction(JLjava/lang/String;)V

    goto :goto_1

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isWalletTransfer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->calculateFeeForTransaction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 418
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSendConfirmationDialogModel(Ljava/lang/String;)Lcom/smedialink/model/dialog/DialogModel;

    move-result-object p1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-interface {v3, v4, v5}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->hasUser(J)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->onSuccessValidation(Lcom/smedialink/model/dialog/DialogModel;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private final resolveChatArg()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;->getMessagesController$default(Lcom/smedialink/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final resolveTokenArg()Lcom/smedialink/model/wallet/select/SelectableToken;
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isSupportTokenOnNetwork(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_send_unsupported_token_on_network_error:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_1
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-static {v0, v1, v2}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/model/wallet/select/SelectableToken$WithResLogo;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final resolveUserArg()Lorg/telegram/tgnet/TLRPC$User;
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getUserId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;->getMessagesController$default(Lcom/smedialink/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getUserId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final runNoEnoughMoneyFlow()V
    .locals 8

    .line 555
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    new-instance v7, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    sget-object v1, Lcom/smedialink/utils/helper/wallet/SwapHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/SwapHelper;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v3}, Lcom/smedialink/utils/helper/wallet/SwapHelper;->resolveSwapProtocolByNetwork$default(Lcom/smedialink/utils/helper/wallet/SwapHelper;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v7}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->showNoEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method private final selectFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    .line 369
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->updateFeeView()V

    return-void
.end method

.method private final sendDonation(JLcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->donationsInteractor:Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;

    .line 477
    invoke-virtual {v0, p1, p2, p3}, Lcom/smedialink/storage/domain/interactor/crypto/donations/DonationsInteractor;->sendDonation(JLcom/smedialink/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 478
    iget-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "donationsInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string v0, "viewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 480
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0, p3}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;)V

    new-instance p3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, p3, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 509
    invoke-static {p0, p1, p2, p3, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final sendMessageToChat(JJD)V
    .locals 26

    move-object/from16 v9, p0

    .line 591
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p5

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->formatMessageToUser(JDJJ)Ljava/lang/String;

    move-result-object v11

    .line 593
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 594
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 595
    iget-object v0, v9, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_processing_name:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "https://imem.app/download"

    .line 596
    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 597
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v11

    .line 598
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 594
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, v9, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-static {v0, v7, v8, v10}, Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;->getMessagesController$default(Lcom/smedialink/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const-string v12, "user.username"

    if-eqz v0, :cond_2

    const-string v1, "getUser(senderId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 602
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 603
    iget-object v1, v9, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_id:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 604
    sget-object v2, Lcom/smedialink/common/Constants$Telegram;->INSTANCE:Lcom/smedialink/common/Constants$Telegram;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/smedialink/common/Constants$Telegram;->getShareLinkFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 605
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

    move-object v0, v11

    .line 606
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 602
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_2
    iget-object v0, v9, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    invoke-static {v0, v7, v8, v10}, Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;->getMessagesController$default(Lcom/smedialink/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "getUser(recipientId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_5

    .line 612
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;-><init>()V

    .line 613
    iget-object v1, v9, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_id:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 614
    sget-object v2, Lcom/smedialink/common/Constants$Telegram;->INSTANCE:Lcom/smedialink/common/Constants$Telegram;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/smedialink/common/Constants$Telegram;->getShareLinkFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    .line 615
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

    move-object v0, v11

    .line 616
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 612
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_5
    iget-object v0, v9, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    invoke-static {v0, v7, v8, v10}, Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;->getSendMessagesHelper$default(Lcom/smedialink/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide/from16 v12, p1

    move-object/from16 v18, v6

    invoke-virtual/range {v10 .. v25}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    return-void
.end method

.method private static final startChooseNetworkDialog$lambda$0(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newNetworkType"

    .line 108
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 109
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    .line 111
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish$default(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetScreenState()V

    return-void
.end method

.method private static final startSelectTokenFlow$lambda$1(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 133
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->loadBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    .line 134
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAddressesForReplenish(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    .line 135
    invoke-interface {p1, p2}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private static final startSelectTokenFlow$lambda$2(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startSelectTokenFlow(Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final startSelectTokenFlow$lambda$3(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 145
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->loadBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    .line 146
    invoke-interface {p1, p2}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private final transferTokens(Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;Z)V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 514
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->sendTokens(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 517
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;ZLcom/smedialink/storage/domain/model/crypto/send/TransferArgs;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 551
    invoke-static {p0, p1, p2, v0, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getActionButtonTextByState()Ljava/lang/String;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    sget-object v2, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 125
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_button_calculate:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 124
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_button_txt:I

    .line 123
    :goto_0
    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getApproveFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;
    .locals 7

    .line 226
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;

    .line 228
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getFeeDialogModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v2

    .line 229
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v3

    .line 230
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoTransferMetadata:Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v4

    .line 231
    iget-object v5, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedFee:Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 232
    new-instance v6, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getApproveFeeType$1;

    invoke-direct {v6, p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$getApproveFeeType$1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    move-object v1, v0

    .line 227
    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;-><init>(Lcom/smedialink/model/dialog/DialogModel;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getAvatarByNetworkType()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getLogo()I

    move-result v0

    return v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedAddress()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedAmount()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public final getSelectedNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getSelectedToken()Lcom/smedialink/model/wallet/select/SelectableToken;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    return-object v0
.end method

.method public final getSelectedTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->tokenBalance:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    return-object v0
.end method

.method public final getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 2

    .line 117
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;
    .locals 2

    .line 121
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedTwitterUserAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedTwitterUserAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public final isCommentAvailable()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->TON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

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

    .line 241
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isWalletTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isDonationsTransfer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->loadBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    .line 245
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAddressesForReplenish(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    .line 247
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish$default(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final resetStateIfNeed()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->isCryptoTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 216
    iput-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAmount:Ljava/lang/String;

    .line 217
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetTransactionFee()V

    .line 218
    sget-object v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->PREPARE:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    goto :goto_0

    .line 220
    :cond_0
    sget-object v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->SEND:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    .line 214
    :goto_0
    iput-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    .line 222
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->currentState:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->setupScreenState(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V

    return-void
.end method

.method public final send(Ljava/lang/String;)V
    .locals 3

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->formatTransferArgs(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 181
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isWalletTransfer()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isDonationsTransfer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smedialink/common/TelegramConstants;->INSTANCE:Lcom/smedialink/common/TelegramConstants;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->args:Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/transfer/TransferScreenArgs;->getChatId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v0

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    invoke-direct {p0, v0, v1, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->sendDonation(JLcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;)V

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_feature_not_available:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isAllowSendInformationToChat:Z

    invoke-direct {p0, p1, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->transferTokens(Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;Z)V

    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_feature_not_available:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final setAllowSendInformationToChat(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isAllowSendInformationToChat:Z

    return-void
.end method

.method public final setComment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->comment:Ljava/lang/String;

    return-void
.end method

.method public final setSelectedAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    return-void
.end method

.method public final setSelectedChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method public final setSelectedTwitterUserAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedTwitterUserAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public final setSelectedUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 4

    .line 103
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    .line 104
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->getEVMNetworks()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_0
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getCreatedWalletsBlockchains()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 103
    new-instance v3, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->showChooseNetworkDialog(Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public final startSelectTokenFlow(Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isBinanceReplenish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    sget-object v2, Lcom/smedialink/model/wallet/select/SelectableType;->INTERNAL:Lcom/smedialink/model/wallet/select/SelectableType;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->availableTokensForBinanceReplenish:Ljava/util/List;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v5, 0x1

    new-instance v6, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-interface/range {v1 .. v6}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->showSelectTokenDialog(Lcom/smedialink/model/wallet/select/SelectableType;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    new-instance v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-direct {p0, v0, v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getBinanceAvailableTokensForReplenish(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    sget-object v2, Lcom/smedialink/model/wallet/select/SelectableType;->INTERNAL:Lcom/smedialink/model/wallet/select/SelectableType;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getAvailableTransferTokensByNetwork()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v5, 0x1

    new-instance v6, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-interface/range {v1 .. v6}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->showSelectTokenDialog(Lcom/smedialink/model/wallet/select/SelectableType;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)V

    :goto_0
    return-void
.end method

.method public final validateRecipientAddress(Ljava/lang/String;)V
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 191
    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/helper/wallet/CryptoHelper;->extractAddress(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lio/reactivex/Observable;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "extractAddress(\n        \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v0}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final validateSend(Ljava/lang/String;)V
    .locals 3

    const-string v0, "rawAmount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 157
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidAddress(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$validateSend$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
