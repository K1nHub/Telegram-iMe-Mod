.class public interface abstract Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;
.super Ljava/lang/Object;
.source "WalletConnectEventsDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onEthSign(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
.end method

.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onSessionRequest(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
.end method

.method public abstract onSuccess(I)V
.end method

.method public abstract onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;Z)V
.end method

.method public abstract onWalletChangeNetwork(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract onWalletChangeUnsupportedNetwork()V
.end method
