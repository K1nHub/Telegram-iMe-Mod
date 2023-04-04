.class public final synthetic Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$-CC;
.super Ljava/lang/Object;
.source "WalletConnectEventsDelegate.kt"


# direct methods
.method public static $default$onEthSign(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 0

    const-string p1, "sessionStoreItem"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onFailure(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onSessionRequest(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onSuccess(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;I)V
    .locals 0

    return-void
.end method

.method public static $default$onTransactionProcessing(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;Z)V
    .locals 0

    const-string p1, "sessionStoreItem"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transaction"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onWalletChangeNetwork(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    const-string p1, "sessionStoreItem"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkType"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static $default$onWalletChangeUnsupportedNetwork(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;)V
    .locals 0

    return-void
.end method
