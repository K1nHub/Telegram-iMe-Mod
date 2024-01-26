.class public interface abstract Lcom/iMe/storage/domain/repository/crypto/cancel/CancelRepository;
.super Ljava/lang/Object;
.source "CancelRepository.kt"


# virtual methods
.method public abstract cancel(Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getCryptoCancelMetadata(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/cancel/CryptoCancelMetadata;",
            ">;>;"
        }
    .end annotation
.end method
