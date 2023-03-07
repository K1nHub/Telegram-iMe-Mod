.class public interface abstract Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;
.super Ljava/lang/Object;
.source "WalletRepository.kt"


# virtual methods
.method public abstract activateWallet()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCryptoTransferMetadata(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTokensBalance(Ljava/util/List;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            ">;Z",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getWalletBalance(ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract getWalletTransactionHistory(ZLjava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ILcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "I",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract sendTokens(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method
