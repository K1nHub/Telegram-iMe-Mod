.class public interface abstract Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;
.super Ljava/lang/Object;
.source "WalletConnectManager.kt"


# virtual methods
.method public abstract approveNewSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
.end method

.method public abstract approveRequest(Ljava/lang/String;JLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "JTT;)V"
        }
    .end annotation
.end method

.method public abstract approveSign(Ljava/lang/String;JLcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
.end method

.method public abstract clear()V
.end method

.method public abstract connect(Ljava/lang/String;)V
.end method

.method public abstract connectToStoredSessions()V
.end method

.method public abstract disconnect(Ljava/lang/String;)V
.end method

.method public abstract disconnectAll()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract rejectNewSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
.end method

.method public abstract rejectRequest(Ljava/lang/String;J)V
.end method

.method public abstract setEventsDelegate(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;)V
.end method
