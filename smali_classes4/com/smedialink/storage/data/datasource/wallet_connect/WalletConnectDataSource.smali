.class public interface abstract Lcom/smedialink/storage/data/datasource/wallet_connect/WalletConnectDataSource;
.super Ljava/lang/Object;
.source "WalletConnectDataSource.kt"

# interfaces
.implements Lcom/smedialink/storage/data/datasource/base/SignTransactionDatasource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/data/datasource/base/SignTransactionDatasource<",
        "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract sendTransaction(Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
