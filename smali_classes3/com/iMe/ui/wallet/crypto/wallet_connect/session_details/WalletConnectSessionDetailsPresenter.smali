.class public final Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletConnectSessionDetailsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;)V
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;->sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    .line 15
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-void
.end method


# virtual methods
.method public final getDisconnectConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 20
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 23
    sget v1, Lorg/telegram/messenger/R$string;->AreYouSureSessionTitle:I

    const-string v2, "AreYouSureSessionTitle"

    .line 21
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 25
    sget v2, Lorg/telegram/messenger/R$string;->TerminateSessionText:I

    const-string v3, "TerminateSessionText"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 26
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 27
    sget v4, Lorg/telegram/messenger/R$string;->Terminate:I

    const-string v5, "Terminate"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onFirstViewAttach()V
    .locals 10

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;->sessionItem:Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    .line 36
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView;

    .line 37
    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getPeerIconUrl()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getPeerName()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getPeerUrl()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getDate()Ljava/lang/String;

    move-result-object v6

    .line 41
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Wallet$MultiCoinWallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v7

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v1, v8, v9, v7}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getNetwork()Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-interface/range {v2 .. v8}, Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
