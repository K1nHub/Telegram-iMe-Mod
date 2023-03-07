.class public final Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletConnectSwitchNetworkPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final requestId:J

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

.field private final walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;


# direct methods
.method public constructor <init>(JLcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;)V
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->requestId:J

    .line 16
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    .line 17
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 18
    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 19
    iput-object p6, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 20
    iput-object p7, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 21
    iput-object p8, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    return-void
.end method


# virtual methods
.method public final approveNetworkChange()V
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->requestId:J

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;->approveRequest(Ljava/lang/String;JLjava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 29
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 8

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    .line 40
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView;

    .line 41
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getPeerIconUrl()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getPeerName()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getPeerUrl()Ljava/lang/String;

    move-result-object v5

    .line 44
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getLogo()I

    move-result v6

    .line 45
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getTitle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-interface/range {v2 .. v7}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final rejectNetworkChange()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->sessionItem:Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    invoke-virtual {v1}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;->requestId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;->rejectRequest(Ljava/lang/String;J)V

    return-void
.end method
