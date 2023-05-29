.class public final Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletConnectNewSessionPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private isApproved:Z

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final sessionItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field private final walletConnectManager:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;


# direct methods
.method public constructor <init>(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;)V
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletConnectManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->sessionItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 15
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 16
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 17
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 18
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->walletConnectManager:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    return-void
.end method


# virtual methods
.method public final approveSession()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->walletConnectManager:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->sessionItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;->approveNewSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->isApproved:Z

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 8

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->sessionItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 40
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView;

    .line 41
    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->getIcons()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ""

    if-nez v1, :cond_0

    move-object v1, v3

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->getName()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getRemotePeerMeta()Lcom/trustwallet/walletconnect/models/WCPeerMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/trustwallet/walletconnect/models/WCPeerMeta;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getEVMWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v6

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v0, v7, v6}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getTitleResId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, v1

    .line 40
    invoke-interface/range {v2 .. v7}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final rejectSession()V
    .locals 2

    .line 32
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->isApproved:Z

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->walletConnectManager:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;->sessionItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;->rejectNewSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    return-void
.end method
