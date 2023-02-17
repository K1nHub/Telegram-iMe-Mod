.class public interface abstract Lcom/smedialink/storage/domain/repository/wallet/WalletSessionRepository;
.super Ljava/lang/Object;
.source "WalletSessionRepository.kt"


# virtual methods
.method public abstract getCurrentAccount()Lcom/smedialink/storage/domain/model/wallet/User;
.end method

.method public abstract getCurrentAccountToken(Z)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract logout()Lio/reactivex/Completable;
.end method

.method public abstract refreshToken(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
            ">;>;"
        }
    .end annotation
.end method
