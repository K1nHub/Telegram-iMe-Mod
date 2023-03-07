.class public interface abstract Lcom/smedialink/storage/domain/repository/crypto/pin/PinCodeRepository;
.super Ljava/lang/Object;
.source "PinCodeRepository.kt"


# virtual methods
.method public abstract createPinCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract readPasswordByPinCode(Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
