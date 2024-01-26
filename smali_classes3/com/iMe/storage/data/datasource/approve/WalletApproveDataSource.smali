.class public interface abstract Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;
.super Ljava/lang/Object;
.source "WalletApproveDataSource.kt"

# interfaces
.implements Lcom/iMe/storage/data/datasource/base/SignTransactionDatasource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/datasource/base/SignTransactionDatasource<",
        "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract approve(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
