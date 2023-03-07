.class public interface abstract Lcom/smedialink/storage/domain/repository/crypto/cancel/CancelRepository;
.super Ljava/lang/Object;
.source "CancelRepository.kt"


# virtual methods
.method public abstract cancel(Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/cancel/CancelArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/cancel/CryptoCancelMetadata;",
            ">;>;"
        }
    .end annotation
.end method
