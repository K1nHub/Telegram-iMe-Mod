.class public interface abstract Lcom/smedialink/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;
.super Ljava/lang/Object;
.source "WalletConnectRepository.kt"


# virtual methods
.method public abstract deleteAllWalletConnectSessions()Lio/reactivex/Completable;
.end method

.method public abstract deleteWalletConnectSession(Ljava/lang/String;)Lio/reactivex/Completable;
.end method

.method public abstract getWalletConnectParamsForCryptoTransaction(Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWalletConnectSavedSessions()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract insertWalletConnectSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)Lio/reactivex/Completable;
.end method

.method public abstract sendWalletConnectCryptoTransaction(Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract signWalletConnectCryptoTransaction(Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
