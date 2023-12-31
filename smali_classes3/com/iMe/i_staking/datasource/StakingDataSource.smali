.class public interface abstract Lcom/iMe/i_staking/datasource/StakingDataSource;
.super Ljava/lang/Object;
.source "StakingDataSource.kt"

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
.method public abstract sendApprovalExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract sendClaimExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract sendDepositExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract sendWithdrawExecute(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;>;"
        }
    .end annotation
.end method
