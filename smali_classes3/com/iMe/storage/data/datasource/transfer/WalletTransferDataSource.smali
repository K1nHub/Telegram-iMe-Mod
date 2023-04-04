.class public interface abstract Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;
.super Ljava/lang/Object;
.source "WalletTransferDataSource.kt"

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
.method public abstract getTransferMetadata(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract transfer(Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method
