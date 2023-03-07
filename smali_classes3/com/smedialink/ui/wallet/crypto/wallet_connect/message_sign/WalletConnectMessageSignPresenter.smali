.class public final Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletConnectMessageSignPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

.field private final requestId:J

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

.field private final walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;


# direct methods
.method public constructor <init>(JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;)V
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->requestId:J

    .line 18
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    .line 19
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    .line 20
    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    .line 21
    iput-object p6, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 22
    iput-object p7, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    return-void
.end method

.method private final getAddressText()Ljava/lang/String;
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/smedialink/utils/extentions/common/StringExtKt;->shortened$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    .line 59
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_connect_message_sign_address_hidden:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final approveSign()V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->requestId:J

    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;->approveSign(Ljava/lang/String;JLcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V

    return-void
.end method

.method public final getSendConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 6

    .line 27
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 28
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_connect_message_sign_confirm_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_message_sign_confirm_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_connect_transaction_button_sign:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 47
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView;

    .line 48
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->getType()Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    move-result-object v1

    sget-object v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 49
    sget-object v1, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->INSTANCE:Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->decodeHexMessageToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->message:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;->getData()Ljava/lang/String;

    move-result-object v1

    .line 52
    :goto_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->getAddressText()Ljava/lang/String;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    invoke-virtual {v3}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getPeerUrl()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final rejectSign()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;->requestId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;->rejectRequest(Ljava/lang/String;J)V

    return-void
.end method
