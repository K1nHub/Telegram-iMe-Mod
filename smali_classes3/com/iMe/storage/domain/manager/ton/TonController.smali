.class public interface abstract Lcom/iMe/storage/domain/manager/ton/TonController;
.super Ljava/lang/Object;
.source "TonController.kt"


# virtual methods
.method public abstract createWallet()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract importWallet(Ljava/util/List;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet$TON;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract isValidAddress(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract sendTransaction(Ljava/lang/String;JLcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;I)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract signData([B)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "[B>;>;"
        }
    .end annotation
.end method
