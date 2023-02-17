.class public final Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$eventsDelegate$1;
.super Ljava/lang/Object;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;-><init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEthSign(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 0

    .line 56
    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$DefaultImpls;->onEthSign(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$DefaultImpls;->onFailure(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSessionRequest(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$DefaultImpls;->onSessionRequest(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$DefaultImpls;->onSuccess(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;I)V

    return-void
.end method

.method public onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;Z)V
    .locals 0

    .line 56
    invoke-static/range {p0 .. p5}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$DefaultImpls;->onTransactionProcessing(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;Z)V

    return-void
.end method

.method public onWalletChangeNetwork(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    .line 56
    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$DefaultImpls;->onWalletChangeNetwork(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public onWalletChangeUnsupportedNetwork()V
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$DefaultImpls;->onWalletChangeUnsupportedNetwork(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;)V

    return-void
.end method
