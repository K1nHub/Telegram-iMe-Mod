.class public final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$eventsDelegate$1;
.super Ljava/lang/Object;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;-><init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onEthSign(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$-CC;->$default$onEthSign(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V

    return-void
.end method

.method public synthetic onFailure(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$-CC;->$default$onFailure(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onSessionRequest(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$-CC;->$default$onSessionRequest(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    return-void
.end method

.method public synthetic onSuccess(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$-CC;->$default$onSuccess(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;I)V

    return-void
.end method

.method public synthetic onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$-CC;->$default$onTransactionProcessing(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;Z)V

    return-void
.end method

.method public synthetic onWalletChangeNetwork(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$-CC;->$default$onWalletChangeNetwork(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public synthetic onWalletChangeUnsupportedNetwork()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$-CC;->$default$onWalletChangeUnsupportedNetwork(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;)V

    return-void
.end method
