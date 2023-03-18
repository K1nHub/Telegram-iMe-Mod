.class public final Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate$DefaultImpls;
.super Ljava/lang/Object;
.source "WalletConnectEventsDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onEthSign(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 0

    const-string p0, "sessionStoreItem"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "message"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onFailure(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "throwable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onSessionRequest(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    const-string p0, "sessionItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onSuccess(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;I)V
    .locals 0

    return-void
.end method

.method public static onTransactionProcessing(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;Z)V
    .locals 0

    const-string p0, "sessionStoreItem"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "transaction"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onWalletChangeNetwork(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    const-string p0, "sessionStoreItem"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "networkType"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onWalletChangeUnsupportedNetwork(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;)V
    .locals 0

    return-void
.end method
